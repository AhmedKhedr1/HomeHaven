import 'package:flutter/material.dart';
import 'package:homehaven/Constant.dart';
import 'package:homehaven/features/Auth/presentation/Widgets/LoginView_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: LoginviewBody(),
    );
  }
}
