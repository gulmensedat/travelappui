import 'package:flutter/material.dart';
import 'package:travelapp/view/widgets/services_widget.dart';

class HolidayPlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFF1FF),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 25),
              child: Container(
                height: 100,
                color: Colors.transparent,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Text(
                "Let's plan a\n"
                'great holiday\n'
                "for you!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Amsterdam',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Text(
                'WHAT KIND OF SERVICES DO YOU NEED?',
                style: TextStyle(color: Color(0xffAFB6C8), fontSize: 12),
              ),
            ),
            SizedBox(height: 9),
            Container(
              height: 150,
              //color: Colors.blue,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 10),
                    child: ServicesWidget(
                        icRenk: Color(0xffCFF1FF),
                        borderColor: Color(0xff394CF4),
                        icIconAsset: 'assets/images/plane.png',
                        text: 'Airplane'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 10),
                    child: ServicesWidget(
                        icRenk: Color(0xffCFF1FF),
                        borderColor: Color(0xff394CF4),
                        icIconAsset: 'assets/images/hotel.png',
                        text: 'Hotel'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 10),
                    child: ServicesWidget(
                        icRenk: Colors.white,
                        borderColor: Colors.white,
                        icIconAsset: 'assets/images/beach-sunset.png',
                        text: 'Beach'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 10),
                    child: ServicesWidget(
                        icRenk: Colors.white,
                        borderColor: Colors.white,
                        icIconAsset: 'assets/images/car.png',
                        text: 'Rent a Car'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Vector.png'))),
                  ),
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Color(0xff394CF4)),
                    child: Center(
                      child: Icon(
                        Icons.navigate_next,
                        color: Colors.white,
                        size: 35,
                      ),
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
