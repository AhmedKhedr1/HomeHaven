import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/core/utils/Styless.dart';
import 'package:homehaven/features/Account/Presentation/Widgets/User_info.dart';

class ProfileBG extends StatelessWidget {
  const ProfileBG({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          Assets.Profile_BG,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16, left: 16, top: 58),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Account',
                style: Styless.Heading3.copyWith(color: Colors.white),
              ),
              Image.asset(
                Assets.Notificationicon,
                color: Colors.white,
              )
            ],
          ),
        ),
        Positioned(left: 16, right: 16, top: 115, child: User_info())
      ],
    );
  }
}
