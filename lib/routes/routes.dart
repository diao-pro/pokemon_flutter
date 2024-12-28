import 'package:flutter/material.dart';
import 'package:pokemon_flutter/pages/pokemon-tcg.page.dart';
import 'package:pokemon_flutter/pages/sign-in.page.dart';
import 'package:pokemon_flutter/pages/sign-up.page.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    "/": (context) => SignInPage(),
    "/create-account": (context) => SignUpPage(),
    "/pokemon-tcg-page": (context) => PokemonTCGPage(),
  };
}
