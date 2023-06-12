class ChatModel {
  final String name;
  late final String message;
  final String time;
  final String image;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.image});
}

List<ChatModel> messageData = [
  ChatModel(
    name: "Joshua",
    message: "Hello! good morning.",
    time: "10:00am",
    image:
        "https://media.licdn.com/dms/image/C4E03AQEwDavaA5ObCg/profile-displayphoto-shrink_800_800/0/1625834200886?e=2147483647&v=beta&t=iQme8nR-WveJWiztjTw4H-Gncr96m6tKLUnBmsfeAJs",
  ),
  ChatModel(
    name: "Sam",
    message: "My gee",
    time: "9:30am",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVXxqu-qAQX9MbuNI_9uSl3OnqqGHXxLN5Ck4aJYFbqg&s",
  ),
  ChatModel(
    name: "Adura",
    message: "Hey! bruh.",
    time: "7:00am",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJSOXLafBaJDZ4CFayJu7KclepKZGYNO_gGhZl8LT7Cg&s",
  ),
  ChatModel(
    name: "Ife",
    message: "Good night dear",
    time: "yesterday",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjJGb1tJB1vBxwOtWjaqFtM2NGLGrL08ckcw&usqp=CAU",
  ),
  ChatModel(
    name: "Kemi",
    message: "we'll talk tomorrow",
    time: "yesterday",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw1SeRsAVTaEqMCwuRd3Vlx34a8pbFAVcJbg&usqp=CAU",
  ),
];
