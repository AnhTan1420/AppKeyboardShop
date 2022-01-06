import 'package:get/state_manager.dart';
import 'package:kleyboardshop/model/message.dart';

class ChatController extends GetxController {
  var chatMessages = <Message>[].obs;
  var connectedUser = 0.obs;
}
