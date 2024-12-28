import 'package:flutter/material.dart';
import 'package:pokemon_flutter/widgets/mydivider.widget.dart';
import 'package:pokemon_flutter/widgets/mydrawerheader.widget.dart';
import 'package:pokemon_flutter/widgets/mydraweritem.widget.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          MyDrawerHeader(),
          MyDrawerItem(title: "Sign In", icon: Icons.login, route: "/"),
          MyDivider(),
          MyDrawerItem(
              title: "Create an account",
              icon: Icons.account_circle_sharp,
              route: "/create-account"),
          MyDivider(),
          MyDrawerItem(
              title: "Home Pokeman",
              icon: Icons.home,
              route: "/pokemon-tcg-page"),
        ],
      ),
    );
  }
}
