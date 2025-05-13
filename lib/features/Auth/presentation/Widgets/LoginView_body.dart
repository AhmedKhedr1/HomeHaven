// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/core/utils/Styless.dart';
import 'package:homehaven/core/widgets/Custom_TexField.dart';
import 'package:homehaven/core/widgets/Custom_button.dart';

class LoginviewBody extends StatelessWidget {
  const LoginviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            Text(
              'Welcome Back!',
              style: Styless.Heading2,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Enter your email to start shopping and get awesome deals today!',
              style: Styless.BodyRegular.copyWith(color: Color(0xff747474)),
            ),
            SizedBox(
              height: 32,
            ),
            CustomTexfield(
              hintText: 'Email',
              prefixIcon: Assets.EmailIcon,
              suffixIcon: Assets.SuffixIcon,
              isPassword: false,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTexfield(
              hintText: 'Password',
              prefixIcon: Assets.PasswordIcon,
              suffixIcon: Assets.SuffixIcon,
              isPassword: true,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Forgot your password?',
              style: Styless.BodyRegular.copyWith(color: Color(0xff156651)),
            ),
            SizedBox(
              height: 24,
            ),
            CustomButton(
              onPressed: () {},
              textbutton: 'Log in',
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}