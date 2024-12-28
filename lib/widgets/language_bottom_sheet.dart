import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_flutter/widgets/mydivider.widget.dart';

class ChangeLanguage {
  static void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyDivider(
                height: 2,
                color: Theme.of(context).indicatorColor,
              ),
              ListTile(
                title: Text(
                  'English',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                onTap: () {
                  context.setLocale(Locale('en'));
                  Navigator.pop(context);
                },
              ),
              MyDivider(
                height: 2,
                color: Theme.of(context).indicatorColor,
              ),
              ListTile(
                title: Text(
                  'Français',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                onTap: () {
                  context.setLocale(Locale('fr'));
                  Navigator.pop(context);
                },
              ),
              MyDivider(
                height: 2,
                color: Theme.of(context).indicatorColor,
              ),
            ],
          ),
        );
      },
    );
  }
}
