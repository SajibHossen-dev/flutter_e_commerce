import 'package:c_commerce/common/styles/spacing_styels.dart';
import 'package:c_commerce/utils/constants/image_strings.dart';
import 'package:c_commerce/utils/constants/sizes.dart';
import 'package:c_commerce/utils/constants/text_strings.dart';
import 'package:c_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

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
                  Image(height: 150, image: AssetImage(dark ? TImages.darkImage : TImages.lightImage)),
                  Text(TTexts.homeAppBarTitle , style: Theme.of(context).textTheme.headlineMedium,),
                  const SizedBox(height: TSizes.sm,),
                  Text(TTexts.homeAppBarSubTitle , style: Theme.of(context).textTheme.bodyMedium,)
                ],
                
                
              ),
               // login form
               Form(child: Column(
                children: [
                  // email 
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon()
                    ),
                  )
                ],
               ))
            ],
          ),
        ),
      ),
    );
  }
}
