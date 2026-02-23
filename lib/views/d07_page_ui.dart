import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class D07PageUi extends StatefulWidget {
  const D07PageUi({super.key});

  @override
  State<D07PageUi> createState() => _D07PageUiState();
}

class _D07PageUiState extends State<D07PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/img9.png',
            ),
            SizedBox(height: 20),
            Text(
              'Password Changed!',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'Your password has been changed successfully.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => D02PageUi()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 60),
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Back to Login',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
