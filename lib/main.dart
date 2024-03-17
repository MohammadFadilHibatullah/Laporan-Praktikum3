import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Disable back button
          backgroundColor: Colors.blue,
          title: Text(
            'Penuhi Lindungi',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Color(0xFF24ACDE),
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Entering a Publish Space?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Stay alert to stay safe',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 0),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                  SizedBox(height: 20),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      buildGridItem('Covid19 \nVaccine', 'assets/o.jpg'),
                      buildGridItem('Covid19 \nTest Result', 'assets/o.jpg'),
                      buildGridItem('EHAC \n', 'assets/o.jpg'),
                      buildGridItem('Travel \nRegulations', 'assets/o.jpg'),
                      buildGridItem('Telemedicine \n', 'assets/o.jpg', alignment: Alignment.topCenter),
                      buildGridItem('Healthcare \nFacility', 'assets/o.jpg', alignment: Alignment.topCenter),
                    ],
                  ),
                ],
              ),
              Positioned(
                top: 29,
                right: 24,
                child: ClipRRect(                                                
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/o.jpg',
                        width: 120,
                        height: 70,
                      ),                                                                                                                                                                                    
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridItem(String title, String imagePath, {Alignment alignment = Alignment.center}) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 100,
                height: 100,
              ),
            ],
          ),
          SizedBox(height: 4),
          Flexible(
            child: Text(
              title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
