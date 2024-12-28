import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemon_flutter/widgets/language_bottom_sheet.dart';
import 'package:pokemon_flutter/widgets/mydivider.widget.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _hasAcceptedTerms = false;

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
                  "create_account".tr(),
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
                    labelText: 'username'.tr(),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'email'.tr(),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: 'password'.tr(),
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
                SizedBox(height: 20),
                TextField(
                  obscureText: !_isConfirmPasswordVisible,
                  decoration: InputDecoration(
                    labelText: 'confirm_password'.tr(),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isConfirmPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).indicatorColor,
                      ),
                      onPressed: () {
                        setState(() {
                          _isConfirmPasswordVisible =
                              !_isConfirmPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                CheckboxListTile(
                  value: _hasAcceptedTerms,
                  onChanged: (value) {
                    setState(() {
                      _hasAcceptedTerms = value!;
                    });
                  },
                  title: RichText(
                    text: TextSpan(
                      text: 'i_agree_to_the'.tr(),
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'terms_Conditions'.tr(),
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // ici lelien
                            },
                        ),
                      ],
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text(
                    "sign_up".tr(),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 30),
                MyDivider(height: 1, color: Colors.grey),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("already_have_account".tr() + " ?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Text(
                        "sign_in".tr(),
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
                      style:
                          TextStyle(color: Theme.of(context).indicatorColor)),
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
