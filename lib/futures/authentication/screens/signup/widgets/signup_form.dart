import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:careconnect/futures/authentication/screens/signup/widgets/terms_and_conditions_checkbox.dart';
import 'package:careconnect/utils/constants/colors.dart';
import 'package:careconnect/utils/constants/sizes.dart';
import 'package:careconnect/utils/constants/text_strings.dart';
import 'package:careconnect/utils/helpers/helper_functions.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          /// Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.userName,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),

          /// NIC
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.nic, prefixIcon: Icon(Iconsax.key)),
          ),

          /// Email
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),

          /// Phone number
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.phoneNumber, prefixIcon: Icon(Iconsax.call)),
          ),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),

          const SizedBox(height: TSizes.spaceBtwSections),

          /// Terms&conditions Checkbox
          const TTermsAndConditionCheckBox(),
          const SizedBox(height: TSizes.spaceBtwSections),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: const Text(TTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
