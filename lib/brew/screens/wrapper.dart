import 'package:TrainingApp/brew/screens/authenticate/authenticate.dart';
import 'package:TrainingApp/brew/screens/home/home.dart';
import 'package:TrainingApp/modals/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    // Return either Home or Authenticate Widget
    return Authenticate();
  }
}
