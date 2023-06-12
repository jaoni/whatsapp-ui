import 'package:whatsapp_clone/models/chat_model.dart';

class StatusModel {
  final String image;
  final String name;
  final String time;

  StatusModel({required this.image, required this.name, required this.time});
}

List<StatusModel> status = [
  StatusModel(
    name: messageData[0].name,
    time: "Today, 7:30am",
    image: messageData[0].image,
  ),
  StatusModel(
    name: messageData[1].name,
    time: "Today, 7:40am",
    image: messageData[1].image,
  ),
  StatusModel(
    name: messageData[2].name,
    time: "Today, 7:50am",
    image: messageData[2].image,
  ),
  StatusModel(
    name: messageData[3].name,
    time: "Today, 8:00am",
    image: messageData[2].image,
  ),
];
