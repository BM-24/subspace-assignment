import 'package:flutter/material.dart';

class SubItem extends StatelessWidget {
  String asset;
  String title;
  String description;
  String rate;
  String buttonText;
  String alertText;
  bool bottomBar;

  SubItem(
      {Key? key,
      required this.asset,
      required this.title,
      required this.description,
      required this.rate,
      required this.buttonText,
      required this.alertText,
      required this.bottomBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.zero),
      child: Container(
        decoration: const BoxDecoration(color: Color.fromRGBO(42, 42, 42, 1)),
        margin:
            const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Container(
                      height: 64,
                      width: 64,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage(asset),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins'),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              description,
                              style: const TextStyle(
                                color: Colors.white60,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      children: [
                        Text(
                          rate,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 105, 131, 175),
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                          onPressed: (() {}),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: const EdgeInsets.only(
                              left: 32.0,
                              right: 32.0,
                              top: 4.0,
                              bottom: 4.0,
                            ),
                          ),
                          child: Text(buttonText),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 137, 123, 0.9),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(16)),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Text(
                alertText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
            Positioned.fill(
              child: bottomBar ? Container(
                alignment: Alignment.bottomCenter,
                child: const LinearProgressIndicator(
                  value: 0.4,
                ),
              ) : Container(),
            )
          ],
        ),
      ),
    );
  }
}
