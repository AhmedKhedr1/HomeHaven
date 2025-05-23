import 'package:flutter/material.dart';
import 'package:homehaven/features/Account/Presentation/Widgets/ProfileBG.dart';
import 'package:homehaven/features/Account/Presentation/Widgets/User_info.dart';

class AccountviewBody extends StatelessWidget {
  const AccountviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ProfileBG(), User_info()],
    );
  }
}
