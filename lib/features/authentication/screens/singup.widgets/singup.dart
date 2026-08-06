import 'package:c_commerce/utils/constants/sizes.dart';
import 'package:c_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SingupScreen extends StatelessWidget {
  const SingupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(TSizes.dafaultSpace),
          child: Column(
            children: [
              // title 
              Text(TTexts.singUpTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              // form 
              Form(child: Column(
                children: [
                  Row(children: [
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(

                        labelText: TTexts.firstName,
                        prefixIcon: Icon(Iconsax.user),

                      ),
                    ),
                   
                  ],)
                ],
              ))
            ],
          ),
          ),
      ),
    );
  }
}
