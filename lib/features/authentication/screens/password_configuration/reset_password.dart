import 'package:c_commerce/utils/constants/image_strings.dart';
import 'package:c_commerce/utils/constants/sizes.dart';
import 'package:c_commerce/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:c_commerce/utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: const Icon(CupertinoIcons.clear))
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
                TTexts.resetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTexts.resetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
               const SizedBox(height:  TSizes.spaceBtwSections,),
            // done btn


            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> Get.to(() => const ResetPassword()), child: const Text(TTexts.done)),),


              const SizedBox(height:  TSizes.spaceBtwSections,),
            // resend email


            SizedBox(width: double.infinity, child: TextButton(onPressed: ()=> Get.to(() => const ResetPassword()), child: const Text(TTexts.resendEmail)),)
          ],
        ),
        ),
      ),
    );
  }
}
