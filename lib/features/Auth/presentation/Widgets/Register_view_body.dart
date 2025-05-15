import 'package:flutter/material.dart';
import 'package:homehaven/Constant.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/core/utils/Styless.dart';
import 'package:homehaven/core/widgets/Custom_TexField.dart';
import 'package:homehaven/core/widgets/Custom_button.dart';
import 'package:homehaven/features/Auth/presentation/Widgets/LoginWithButton.dart';
import 'package:homehaven/features/Auth/presentation/Widgets/OrWidget.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          SizedBox(
            height: 24,
          ),
          Text(
            'Create Account',
            style: Styless.Heading2,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Fill in your details below to get started on a seamless shopping experience.',
            style: Styless.BodyRegular.copyWith(color: Color(0xff747474)),
          ),
          SizedBox(
            height: 32,
          ),
          CustomTexfield(
            hintText: 'First Name',
            prefixIcon: Assets.personicon,
            suffixIcon: Assets.SuffixIcon,
            isPassword: false,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTexfield(
            hintText: 'Last Name',
            prefixIcon: Assets.personicon,
            suffixIcon: Assets.SuffixIcon,
            isPassword: false,
          ),
          SizedBox(
            height: 16,
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
            height: 24,
          ),
          Text(
            'By clicking Create Account, you acknowledge you have read and agreed to our Terms of Use and Privacy Policy',
            style: Styless.BodySmallRegular.copyWith(color: Color(0xff757575)),
          ),
          SizedBox(
            height: 24,
          ),
          CustomButton(
            onPressed: () {},
            textbutton: 'Create Account',
            width: double.infinity,
            height: 34,
            textcolor: Colors.white,
            buttoncolor: KPrimaryColor,
          ),
          SizedBox(
            height: 32,
          ),
          OrWidget(),
          SizedBox(
            height: 32,
          ),
          LoginWithButton(
            imagePath: Assets.GoogleIcon,
            hintText: 'Log In with Google',
            onTap: () {},
          ),
          SizedBox(
            height: 28,
          ),
          LoginWithButton(
            imagePath: Assets.FacebookIcon,
            hintText: 'Log In with Facebook',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
