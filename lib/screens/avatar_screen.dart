import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              child: Text("LN"),
              backgroundColor: Color.fromARGB(255, 67, 165, 28),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.mubicdn.net/images/cast_member/3077/cache-2413-1580154459/image-w856.jpg?size=800x'),
          maxRadius: 120,
        ),
      ),
    );
  }
}
