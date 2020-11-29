import 'package:flutter/material.dart';

class ServicesWidget extends StatelessWidget {
  Color icRenk;
  Color borderColor;
  String icIconAsset;
  String text;

  ServicesWidget({this.icRenk, this.borderColor, this.icIconAsset, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 95,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        borderColor,
                        borderColor,
                      ])),
            ),
            Container(
              height: 87,
              width: 72,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: icRenk,
                  border: Border.all(
                    width: 2,
                    color: icRenk,
                  )),
              child: Center(
                child: Container(
                  height: 33,
                  width: 33,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage(
                          icIconAsset,
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 9),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
