import 'package:flutter/material.dart';
import 'package:subspace/subscriptions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 24, top: 40, bottom: 20),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(27, 27, 27, 1),
              ),
              child: const Text(
                'Explore',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 35, 1),
                border: Border.all(color: const Color.fromRGBO(92, 99, 171, 1)),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 12),
                    child: const Image(
                      image: AssetImage('assets/coin.png'),
                      height: 24,
                      width: 24,
                    ),
                  ),
                  const Text(
                    'Play and earn coins',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(),
                  ),
                  const Icon(
                    Icons.double_arrow,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  child: const Image(
                      image: AssetImage('assets/banner_image.png'))),
            ),
            const Subscriptions(),
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(24.0),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(42, 42, 42, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What do you want us to list next?',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 4.0),
                    child: const Text(
                      'Suggest us a subscription',
                      style: TextStyle(color: Colors.white60, fontSize: 14),
                    ),
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
