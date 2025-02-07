import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app/screens/landing-page.screen.dart';
import 'package:job_app/utils/colors.dart';
import 'package:job_app/utils/text_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'job app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: 24.0,
          ),
          headlineMedium: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
          bodyLarge: GoogleFonts.roboto(
            fontWeight: FontWeight.normal,
          ),
          bodyMedium: GoogleFonts.roboto(
            fontWeight: FontWeight.normal,
            fontSize: 14.0,
          ),
          bodySmall: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
          ),
          titleLarge: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 8.0,
          ),
          titleMedium: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
          titleSmall: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
      home: LAyoutScreen(),
    );
  }
}

class LAyoutScreen extends StatefulWidget {
  @override
  State<LAyoutScreen> createState() => _LAyoutScreenState();
}

class _LAyoutScreenState extends State<LAyoutScreen> {
  Widget? contet;
  int currentIndex = 0;
  @override
  void initState() {
    contet = LandingPageScreen();
    super.initState();
  }

  void _changeContent(Widget newContent, int index) {
    setState(() {
      currentIndex = index;
      contet = newContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: contet,
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            switch (index) {
              case 0:
                _changeContent(LandingPageScreen(), index);
                break;
              case 1:
                _changeContent(Center(child: Text("chart")), index);
                break;
              case 2:
                _changeContent(Center(child: Text("favorite")), index);
                break;
              case 3:
                _changeContent(Center(child: Text("profile")), index);
                break;
            }
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          iconSize: 32.0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.show_chart),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
