import 'package:flutter/material.dart';

import 'package:new_e_comerce/widgets/gridViewProduct.dart';
import 'package:new_e_comerce/widgets/mainAdd.dart';
import 'package:new_e_comerce/widgets/offerListView.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          mainAdd(), offerListView(), //
          productGridView()
        ],
      ),
    );
  }
}
