import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:careconnect/common/styles/spacing_styles.dart';
import 'package:careconnect/common/widgets/login_signup/form_divider.dart';
import 'package:careconnect/common/widgets/login_signup/social_buttons.dart';
import 'package:careconnect/futures/authentication/screens/login/widgets/login_form.dart';
import 'package:careconnect/futures/authentication/screens/login/widgets/login_header.dart';
import 'package:careconnect/utils/constants/colors.dart';
import 'package:careconnect/utils/constants/image_strings.dart';
import 'package:careconnect/utils/constants/sizes.dart';
import 'package:careconnect/utils/constants/text_strings.dart';
import 'package:careconnect/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & SubTitle
              const TLoginHeader(),

              /// Form
              const TLoginForm(),

              ///Divider
              TFormDivider(
                dividerText: TTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
