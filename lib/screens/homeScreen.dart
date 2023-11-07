import 'package:flutter/material.dart';
import 'package:new_e_comerce/widgets/mainAdd.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            mainAdd(),
          ],
        ),
      ),
    );
  }
}
