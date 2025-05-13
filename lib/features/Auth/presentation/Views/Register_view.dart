import 'package:flutter/material.dart';
import 'package:homehaven/Constant.dart';
import 'package:homehaven/features/Auth/presentation/Widgets/Register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: RegisterViewBody(),
    );
  }
}
