import 'package:flutter/material.dart';

class storyWidget extends StatelessWidget {
  storyWidget({this.izlendi, this.index});

  int izlendi;
  int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        index != 0
                            ? Colors.black.withOpacity(0.2)
                            : Color(0xff733FED),
                        index != 0
                            ? Colors.black.withOpacity(0.2)
                            : Color(0xff3F70ED),
                      ])),
            ),
            Container(
              height: 52,
              width: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.blue,
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://imgcy.trivago.com/c_lfill,d_dummy.jpeg,e_sharpen:60,f_auto,h_450,q_auto,w_450/itemimages/96/95/96959_v6.jpeg',
                      ),
                      fit: BoxFit.cover),
                  border: Border.all(
                    width: 3,
                    color: Color(0xffE5E5E5),
                  )),
            ),
          ],
        ),
        SizedBox(height: 9),
        Text(
          'Rixos',
          style: TextStyle(
            color: izlendi == index ? Colors.black : Color(0xff98A0B6),
          ),
        )
      ],
    );
  }
}
