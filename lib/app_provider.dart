import 'dart:io';

import 'package:cuan_sheep/providers/provider_login.dart';
import 'package:cuan_sheep/providers/provider_signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

abstract class Login {
  int getUserId();
}

class LoginImpl extends ChangeNotifier {
  int data = 0;

  int getUserId() {
    return 1;
  }
}

class EditProfileState extends ChangeNotifier {
  File? image;

  void addImage(File image) {
    this.image = image;
    notifyListeners();
  }

  void deleteImage() {
    image = null;
    notifyListeners();
  }
}

class AppProvider extends StatelessWidget {
  final Widget child;
  const AppProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginImpl>(
          create: (context) => LoginImpl(),
        ),
        ChangeNotifierProvider<EditProfileState>(
          create: (context) => EditProfileState(),
        ),
        ChangeNotifierProvider<LoginProvider>(
          create: (context) => LoginProvider(),
        ),
        ChangeNotifierProvider<SignupProvider>(
          create: (context) => SignupProvider(),
        ),
      ],
      child: child,
    );
  }
}
