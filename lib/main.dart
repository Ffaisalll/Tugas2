import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: const Text(
                    'Mandalika',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Lombok, Nusa Tenggara Barat',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.favorite_border_outlined,
            color: Colors.black,
            size: 20,
          ),
          const Text('4.0'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.black, Icons.call_outlined, 'CALL'),
        _buildButtonColumn(Colors.black, Icons.near_me_outlined, 'ROUTE'),
        _buildButtonColumn(Colors.black, Icons.share_outlined, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Mandalika memiliki pesona alam yang tiada tandingannya. pantai dan bukit yang indah akan melengkapi liburan. Dan dengan menjadi tuan rumah dari motogp 2022 mandalika menjadi salah satu destinasi terpopuler di Indonesia.',
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Mandalika',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'asset/mandalika.jpg',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(label,
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w400)),
        ),
      ],
    );
  }
}
