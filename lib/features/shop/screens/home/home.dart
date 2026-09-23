import 'package:c_commerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:c_commerce/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              color: TColors.primary,
              padding: const EdgeInsets.all(0),
              child:
               Stack(children: [
               Positioned(top: -150, right: -250,  child: TCircularContaine(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
               Positioned( top: 100, right: -300, child: TCircularContaine(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
              
                ]),
            ),
          ],
        ),
      ),
    );
  }
}


