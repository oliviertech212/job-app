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
  @ override
  void initState() {
    contet = LandingPageScreen();
    super.initState();
  }

  void _changeContent(Widget newContent , int index) {
    setState(() {
      currentIndex = index;
      contet = newContent;
    });
  }


  @override
  Widget build(BuildContext context) {

    
    return Scaffold(

      backgroundColor: AppColors.backgroundColor  ,
      
      body:    contet,
      



       bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColors.textColor,
        selectedItemColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (index) {
          switch (index) {
            case 0:
               
              _changeContent(LandingPageScreen() , index);
              break;
            case 1:
              _changeContent(LandingPageScreen() , index);
              break;
            case 2:
              _changeContent(LandingPageScreen() , index);
              break;
            case 3:
              _changeContent(LandingPageScreen() , index);
              break;
          }
        },
        items: const <BottomNavigationBarItem>[


          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Metrics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Heart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],


          
        ),
    );
  }
}
