import 'package:flutter/material.dart';
import 'package:homehaven/Constant.dart';
import 'package:homehaven/features/Account/Presentation/Widgets/AccountView_body.dart';

class Accountview extends StatelessWidget {
  const Accountview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: AccountviewBody(),
    );
  }
}
