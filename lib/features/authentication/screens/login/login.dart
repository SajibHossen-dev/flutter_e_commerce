import 'package:c_commerce/common/styles/spacing_styels.dart';
import 'package:c_commerce/common/widgets/login_singup/form_divider.dart';
import 'package:c_commerce/common/widgets/login_singup/social_buttons.dart';
import 'package:c_commerce/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:c_commerce/features/authentication/screens/singup.widgets/singup.dart';
import 'package:c_commerce/utils/constants/image_strings.dart';
import 'package:c_commerce/utils/constants/sizes.dart';
import 'package:c_commerce/utils/constants/text_strings.dart';
import 'package:c_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWitAppBarHeight,
          child: Column(
            children: [
              // logo title subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      dark ? TImages.darkImage : TImages.lightImage,
                    ),
                  ),
                  Text(
                    TTexts.homeAppBarTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: TSizes.sm),
                  Text(
                    TTexts.homeAppBarSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              // login form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:TSizes.spaceBtwSections ),
                  child: Column(
                    children: [
                      // email
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TTexts.email,
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),
                  
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields / 2),
                  
                      // remember me and forget password
                      Row(
                        // Remember me
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(TTexts.rememberme),
                            ],
                          ),
                          // forget password
                          TextButton(
                            onPressed: () => Get.to(() => const ForgetPassword()),
                            child: const Text(TTexts.forgetPassword),
                          ),
                        ],
                      ),
                  
                      const SizedBox(height: TSizes.spaceBtwSections),
                      // sing in button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(TTexts.singIn),
                        ),
                      ),
                      SizedBox(height: TSizes.spaceBtwItems,),
                      // create Account Button
                       SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: ()=> Get.to(() => const SingupScreen()),
                          child: Text(TTexts.createAccount),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            // divider 
            TFormDivider(),
            SizedBox(height:TSizes.spaceBtwItems),
              // footer 
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
