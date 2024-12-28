import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemon_flutter/widgets/language_bottom_sheet.dart';
import 'package:pokemon_flutter/widgets/mydivider.widget.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/logo.png'),
                ),
                SizedBox(height: 20),
                Text(
                  "sign_in".tr(),
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSocialButton(FontAwesomeIcons.google, Colors.red),
                    _buildSocialButton(FontAwesomeIcons.facebook, Colors.blue),
                    _buildSocialButton(FontAwesomeIcons.twitter, Colors.black),
                    _buildSocialButton(FontAwesomeIcons.apple, Colors.black),
                  ],
                ),
                SizedBox(height: 20),
                MyDivider(height: 1, color: Colors.grey),
                Text("or".tr(), style: TextStyle(color: Colors.black)),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'email_username'.tr(),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: 'enter_password'.tr(),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).indicatorColor,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "forgot_password".tr() + " ?",
                      style: TextStyle(
                        color: Theme.of(context).indicatorColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pokemon-tcg-page');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text(
                    "sign_in".tr(),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 30),
                MyDivider(height: 1, color: Colors.grey),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("not_have_account".tr() + " ?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/create-account');
                      },
                      child: Text(
                        "create_account".tr(),
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    ChangeLanguage.showLanguageBottomSheet(context);
                  },
                  child: Text(
                      context.locale.languageCode == 'en'
                          ? 'English'
                          : 'Français',
                      style: TextStyle(
                        color: Theme.of(context).indicatorColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(IconData icon, Color color) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.grey[200],
      child: Icon(icon, color: color),
    );
  }
}
