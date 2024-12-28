import 'package:flutter/material.dart';

class MyDrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String route;

  const MyDrawerItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(
        icon,
        color: Theme.of(context).primaryColor,
      ),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () {
        Navigator.of(context).pop();
        Navigator.pushNamed(context, route);
      },
    );
  }
}
