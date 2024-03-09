import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:careconnect/common/widgets/login_signup/form_divider.dart';
import 'package:careconnect/common/widgets/login_signup/social_buttons.dart';
import 'package:careconnect/futures/authentication/screens/signup/widgets/signup_form.dart';
import 'package:careconnect/utils/constants/colors.dart';
import 'package:careconnect/utils/constants/sizes.dart';
import 'package:careconnect/utils/constants/text_strings.dart';
import 'package:careconnect/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(TTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Form
              const TSignupForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Social Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
