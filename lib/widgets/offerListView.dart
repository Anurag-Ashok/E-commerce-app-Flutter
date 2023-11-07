import 'package:flutter/material.dart';

class offerListView extends StatefulWidget {
  const offerListView({super.key});

  @override
  State<offerListView> createState() => _offerListViewState();
}

class _offerListViewState extends State<offerListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Minimum 30% OFF',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Column(
            children: [
              // Container(
              //   height: 40,
              //   width: double.infinity,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: 10,
              //     itemBuilder: (context, index) {
              //       return Container(
              //         color: Colors.black45,
              //         height: 30,
              //         width: 30,
              //       );
              //     },
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
