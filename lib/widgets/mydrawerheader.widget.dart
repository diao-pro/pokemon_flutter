import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.white, Theme.of(context).primaryColor]),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/profile.png"),
            radius: 50,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/profile.png"),
            radius: 30,
          ),
        ],
      ),
    );
  }
}
