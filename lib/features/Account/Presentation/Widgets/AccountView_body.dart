import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/core/utils/Styless.dart';
import 'package:homehaven/features/Account/Presentation/Widgets/ProfileBG.dart';
import 'package:homehaven/features/Account/Presentation/Widgets/buildListTile.dart';

class AccountviewBody extends StatelessWidget {
  const AccountviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileBG(),
          SizedBox(
            height: 65,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'General',
                  style: Styless.BodyBold,
                ),
                SizedBox(
                  height: 8,
                ),
                buildListTile(
                  leading: Assets.transaction,
                  title: 'Transaction',
                ),
                buildListTile(
                  leading: Assets.loveicon,
                  title: 'Wishlist',
                ),
                buildListTile(
                  leading: Assets.savedicon,
                  title: 'Saved Address',
                ),
                buildListTile(
                  leading: Assets.Paymenticon,
                  title: 'Payment Methods',
                ),
                buildListTile(
                  leading: Assets.Notificationicon,
                  title: 'Notification',
                ),
                buildListTile(
                  leading: Assets.PasswordIcon,
                  title: 'Security',
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Help',
                  style: Styless.BodyBold,
                ),
                buildListTile(
                  leading: Assets.personicon,
                  title: 'Get in Touch With Us',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
