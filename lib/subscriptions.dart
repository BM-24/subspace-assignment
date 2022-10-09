import 'package:flutter/material.dart';
import 'package:subspace/sub_item.dart';

class Subscriptions extends StatelessWidget {
  const Subscriptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          SubItem(
            asset: 'assets/netflix.png',
            title: 'Netflix Premium',
            rate: 'Rs 163 / user /Month',
            description: 'bought by Ishika Verma',
            buttonText: 'Buy',
            alertText: '6+ groups',
            bottomBar: true,
          ),
          SubItem(
            asset: 'assets/prime-video.png',
            title: 'Amazon Premium',
            description:
                'Watch Unlimited Movies, TV Shows & Get Free Shipping Benefits with Amazon Prime',
            rate: 'Rs 700 650 / Month',
            buttonText: 'Join',
            alertText: '40% off',
            bottomBar: false,
          ),
        ],
      ),
    );
  }
}
