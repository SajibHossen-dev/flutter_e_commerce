import 'package:c_commerce/features/authentication/screens/login/login.dart';
import 'package:c_commerce/utils/constants/image_strings.dart';
import 'package:c_commerce/utils/constants/sizes.dart';
import 'package:c_commerce/utils/constants/text_strings.dart';
import 'package:c_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.dafaultSpace),
          child: Column(
            children: [
              // image
              Image(
                image: AssetImage(TImages.lightImage),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // title and subtitle
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                'support@codingwithint.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              // button
              const SizedBox(height: TSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(TTexts.tContinue),
                ),
              ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child:Text(TTexts.resendEmail)),)
            ],
          ),
        ),
      ),
    );
  }
}
