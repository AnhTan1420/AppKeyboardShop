const express = require('express')
const app = express()
const port = 8888

app.get('/', (req, res) => {
	res.send('Hello World!')
})

const server = app.listen(port, () => {
	console.log(`Example app listening at http://localhost:${port}`)
})

const io = require('socket.io')(server)

const connectedUser = new Set()
io.on('connection', socket => {
	// INit
	console.log('Connected Successfully', socket.id)
	connectedUser.add(socket.id)
	io.emit('connected-user', connectedUser.size)

	// Disconnect
	socket.on('disconnect', () => {
		console.log('Disconnected ', socket.id)
		connectedUser.delete(socket.id)
	})

	// Message
	socket.on('message', data => {
		console.log(data)
		socket.broadcast.emit('message-receive', data)
	})
})
