import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState(); //if error remove line
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override //line 22
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            "Whatsapp",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 22),
          ),
          actions: const [
            Icon(Icons.camera_alt),
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: const [
              Tab(icon: Icon(Icons.people)),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(Icons.message_rounded),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  tile("assets/images/chats/chat.png", "Divina",
                      "Bring my fufu", "11:30"),
                  const Divider(
                    height: 0.2,
                  ),
                  tile("assets/images/chats/chat1.png", "Juvitus", "my change",
                      "11:30"),
                  const Divider(
                    height: 0.2,
                  ),
                  tile("assets/images/chats/chat2.png", "De blaq",
                      "That juice na how", "11:30"),
                  const Divider(
                    height: 0.2,
                  ),
                  tile("assets/images/chats/chat3.png", "Andrew",
                      "Bring my money", "11:30"),
                  const Divider(
                    height: 0.2,
                  ),
                  tile("assets/images/chats/chat4.png", "Sandrine",
                      "hafa with that coin", "11:30"),
                  const Divider(
                    height: 0.2,
                  ),
                  tile("assets/images/chats/chat5.png", "Kanyimi",
                      "Bring my money", "11:30"),
                  const Divider(
                    height: 0.2,
                  ),
                  tile("assets/images/chats/chat6.png", "Serge",
                      "send that my money", "11:30"),
                  const Divider(
                    height: 0.2,
                  ),
                  tile("assets/images/chats/chat3.png", "Paola",
                      "Bring my money", "11:30"),
                  const Divider(
                    height: 0.2,
                  ),
                  tile("assets/images/chats/chat2.png", "Marcel",
                      "this work is for you", "11:30"),
                  const Divider(
                    height: 0.2,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

ListTile tile(String url, String name, String description, String time) {
  return ListTile(
    leading: CircleAvatar(
      radius: 30,
      backgroundImage: ExactAssetImage(url),
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        Text(
          time,
          style: const TextStyle(
              fontSize: 11, fontWeight: FontWeight.w600, color: Colors.black45),
        )
      ],
    ),
    subtitle: Text(
      description,
      style: const TextStyle(fontSize: 16, color: Colors.black54),
    ),
  );
}
