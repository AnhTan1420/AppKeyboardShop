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
io.on('connection', socket => {
	console.log('Connected Successfully', socket.id)
})
