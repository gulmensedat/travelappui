import 'package:flutter/material.dart';

class planWidget extends StatelessWidget {
  String imageURL;
  String text;

  planWidget({this.imageURL, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 165,
          width: 116,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                image: NetworkImage(imageURL),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(height: 16),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
