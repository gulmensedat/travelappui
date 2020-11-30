import 'package:flutter/material.dart';
import 'package:travelapp/view/holiday_plan_screen.dart';
import 'package:travelapp/view/widgets/plan_widget.dart';
import 'package:travelapp/view/widgets/story_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int izlendi;

  @override
  void initState() {
    super.initState();
    izlendi = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        iconSize: 26,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.6),
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/home.png',
                scale: 1.2,
              ),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/postadd.png',
                scale: 1.2,
              ),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/profile.png',
                scale: 1.2,
              ),
              title: Text('')),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: Text(
                  'Create a \n'
                  'holiday plan',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
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
                  'STORIES',
                  style: TextStyle(color: Color(0xffAFB6C8)),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 105,
                //color: Colors.blue,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: index == 0
                            ? const EdgeInsets.only(
                                left: 24.0,
                                bottom: 10.0,
                                right: 10.0,
                                top: 10.0)
                            : const EdgeInsets.all(10.0),
                        child: storyWidget(izlendi: 0, index: index),
                      );
                    }),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Text(
                  'PLAN SUGGESTIONS',
                  style: TextStyle(color: Color(0xffAFB6C8)),
                ),
              ),
              SizedBox(height: 20),
              Container(
<<<<<<< Updated upstream
                height: MediaQuery.of(context).size.height * 0.39,
=======
                height: 240,
>>>>>>> Stashed changes
                //color: Colors.pink,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: index == 0
                            ? const EdgeInsets.only(
                                left: 24.0,
                                bottom: 10.0,
                                right: 10.0,
                                top: 10.0)
                            : const EdgeInsets.all(10.0),
                        child: Container(
                          height: 170,
                          width: 116,
                          //color: Colors.blue,
                          child: planWidget(
                            imageURL:
                                'https://elifinatlasi.com/wp-content/uploads/2019/05/paris-travel-planning.jpg',
                            text: 'Tips for preparing a holiday bag',
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 20.0),
                child: Text(
                  'PRIVATE TOUR PLAN',
                  style: TextStyle(color: Color(0xffAFB6C8)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HolidayPlanScreen()));
                  },
                  child: Container(
                    height: 72,
                    width: 336,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://www.berkshirechoral.org/images/made/images/uploads/Barcelona_870_580_s_c1.jpg'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'from İstanbul to',
                                      style: TextStyle(
                                          color: Color(0xff989EAF),
                                          fontSize: 12),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Barcelona',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chevron_right,
                                color: Color(0xff989EAF),
                                size: 23,
                              ),
                              SizedBox(height: 4),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.transparent,
                                size: 23,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
