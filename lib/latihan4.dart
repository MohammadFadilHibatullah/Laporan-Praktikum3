import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Color.fromARGB(255, 2, 66, 184),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Penuhi Lindungi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
                Container(
      decoration: BoxDecoration(
    color: Color.fromARGB(255, 19, 107, 223),
    borderRadius: BorderRadius.circular(0), // Mengatur sudut border
  ),
  padding: EdgeInsets.fromLTRB(10, 20, 10, 40),
  child: Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Entering a Publish Space?',
            style: TextStyle(
              color: Colors.white, // Warna teks putih
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 5), // Spasi antara tulisan "Entering a Publish Space?" dan "Stay"
          Text(
            'Stay alert to stay safe', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      Positioned(
        right: 0,
        top: 0,
        child: Image.asset(
          'assets/o.jpg', // Ganti dengan path gambar Anda
          width: 70, // Sesuaikan ukuran gambar
          height: 70,
        ),
      ),
    ],
  ),
),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildGridItem('Covid19 Vaccine', 'assets/o.jpg'),
                  buildGridItem('Covid19 Test Result', 'assets/o.jpg'),
                  buildGridItem('EHAC', 'assets/o.jpg'),
                  buildGridItem('Covid19 Vaccine', 'assets/o.jpg'),
                  buildGridItem('Covid19 Test Result', 'assets/o.jpg', alignment: Alignment.topCenter),
                  buildGridItem('EHAC', 'assets/o.jpg', alignment: Alignment.topCenter),
                 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridItem(String title, String imagePath, {Alignment alignment = Alignment.center}) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: alignment,
            child: Image.asset(
              imagePath,
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(height: 4),
          Flexible(
            child: Text(
              title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}



















































