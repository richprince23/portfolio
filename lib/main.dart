import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/const.dart';
import 'package:portfolio/screens/homepage.dart';
import 'package:portfolio/screens/navbar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Aikins Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.oxygenTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            foregroundColor: Colors.black,
            titleTextStyle: GoogleFonts.oxygen(
              color: Colors.black,
              fontSize: 16,
            )),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Navbar(),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          height: size.height,
          color: lightGreyCol,
          padding: const EdgeInsets.symmetric(
            horizontal: 80,
            vertical: 20,
          ),
          child: SingleChildScrollView(child: const Home()),
        ),
      ),
    );
  }
}
