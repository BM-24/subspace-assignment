import 'package:flutter/material.dart';

class SubItem extends StatelessWidget {
  String asset, title, description, rate, buttonText;
  SubItem(
      {Key? key,
      required this.asset,
      required this.title,
      required this.description,
      required this.rate,
      required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(28.0)),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        margin:
            const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
        decoration: const BoxDecoration(color: Color.fromRGBO(42, 42, 42, 1)),
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
                            fontSize: 12,),
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
                        color: Colors.white,
                        fontSize: 12.0,
                        fontFamily: 'Poppins'),
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
    );
  }
}
