import 'package:flutter/material.dart';
import 'chat/chart_screen.dart';
import 'model/chat_model.dart';
import 'utils/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {'/': (context) => const MyHomePage()},
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Messenger')),
      body: Column(
        children: [
          Container(
              height: 55,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12)),
              )),
          Container(
            height: 125,
            padding: const EdgeInsets.only(top: 8),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) {
                return _buildActiveItem();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 10,
                );
              },
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: listChats.length,
              itemBuilder: (context, index) {
                final item = listChats[index];
                return _buildItem(context, item);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 5,
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chats'),
        BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Story')
      ]),
    );
  }

  Widget _buildItem(BuildContext context, ChatModel item) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (BuildContext context) => ChatScreen(item: item),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                  color: Colors.transparent, shape: BoxShape.circle),
              height: 60,
              width: 60,
              child: Image.asset(
                item.avatar,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name),
                  Text(item.chat),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildActiveItem() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(),
              shape: BoxShape.circle),
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.only(bottom: 3),
          child: Center(
            child: Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(Images.girl), fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        const Text('Baby'),
      ],
    );
  }
}
