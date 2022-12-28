import '../utils/consts.dart';

class ChatModel {
  final String avatar;
  final String name;
  final String chat;

  ChatModel({required this.avatar, required this.name, required this.chat});
}

// Dummmy data
final listChats = [
  ChatModel(avatar: Images.girl, name: 'Hoang', chat: 'Dang lam gi the'),
  ChatModel(avatar: Images.girl, name: 'Viet', chat: 'Dang gi the'),
  ChatModel(avatar: Images.girl, name: 'Vu', chat: 'Dang lthe'),
  ChatModel(avatar: Images.girl, name: 'Dung', chat: 'Dang xxxxxxx'),
  ChatModel(avatar: Images.girl, name: 'Nam', chat: 'Dang bddkslslsls the'),
  ChatModel(avatar: Images.girl, name: 'Hue', chat: 'Dang lam gi the'),
  ChatModel(avatar: Images.girl, name: 'Dung', chat: 'Dang dfdfdf lam gi the'),
  ChatModel(avatar: Images.girl, name: 'Anh', chat: 'Dang cc lam gi the'),
  ChatModel(avatar: Images.girl, name: 'Thai', chat: 'Dang lam gi the'),
];
