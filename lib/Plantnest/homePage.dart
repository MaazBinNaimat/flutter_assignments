import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        //   BackGround Color
        backgroundColor: Colors.green.shade100,

        //   Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green.shade200,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_rounded,
                  color: Colors.green,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.green,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.ac_unit_rounded,
                  color: Colors.green,
                ),
                label: ''),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    child: Container(
                      height: 230,
                      width: double.maxFinite,
                      color: Colors.green.shade400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/logo-02.png',
                      width: 100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 120, left: 25, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'PlantNest',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                        CircleAvatar(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset('assets/images/pr1.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 195, left: 35, right: 35),
                    child: Container(
                      height: 55,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        )]
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 8.5),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Seach...',
                            hoverColor: Colors.black,
                            border: InputBorder.none,
                            suffixIcon: IconButton(onPressed: (){
                              print('Search button pressed');
                            }, icon: Icon(Icons.search), ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
