import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/d03_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class D01PageUi extends StatefulWidget {
  const D01PageUi({super.key});

  @override
  State<D01PageUi> createState() => _D01PageUiState();
}

class _D01PageUiState extends State<D01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
    children: [
      // เลเยอร์ที่ 1: รูปภาพพื้นหลัง
      Image.asset(
        'assets/images/img5.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
      // เลเยอร์ที่ 2: เนื้อหา
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 30,),
            Image.asset(
              'assets/images/img3.png',
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => D02PageUi()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 60),
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),               
              ),
              child: Text(
                'Login',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 15,),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => D03PageUi()),
                );
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 60),
                side: BorderSide(color: const Color.fromARGB(255, 0, 0, 0), width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),               
              ),
              child: Text(
                'Register',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ),
            SizedBox(height: 40,),
            Text(
              'Continue as a guest',
              style: GoogleFonts.poppins(
                fontSize: 13,
                color:Color(0xFF35C2C1),
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFF35C2C1),
                decorationThickness: 1.5,
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    ],
  ),
    );
  }
}