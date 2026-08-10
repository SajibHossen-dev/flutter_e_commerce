import 'package:c_commerce/common/styles/spacing_styels.dart';
import 'package:c_commerce/utils/constants/enums.dart';
import 'package:c_commerce/utils/constants/image_strings.dart';
import 'package:c_commerce/utils/constants/sizes.dart';
import 'package:c_commerce/utils/constants/text_strings.dart';
import 'package:c_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWitAppBarHeight *2,
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
                TTexts.yourAccountCreateTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                'support@codingwithint.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          ),
      ),
    );
  }
}
