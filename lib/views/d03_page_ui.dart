import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class D03PageUi extends StatefulWidget {
  const D03PageUi({super.key});

  @override
  State<D03PageUi> createState() => _D03PageUiState();
}

class _D03PageUiState extends State<D03PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 35, top: 5, bottom: 10,),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFE8ECF4),
                      width: 1,
                    ),
                    borderRadius:
                        BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 18,
                      color: Color(0xFF1E232C),
                    ),
                    padding: EdgeInsets
                        .zero,
                    constraints:
                        const BoxConstraints(),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 35,
                right: 50,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hello! Register to get started',
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: const Color(0xFFE8ECF4),
                  ),
                ),
                filled: true,
                fillColor: const Color(0xFFF7F8F9),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.8,
                ),
                hintText: 'Username',
                hintStyle: GoogleFonts.poppins(
                  color: Colors.grey[700],
                  fontSize: 13,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: const Color(0xFF1F41BB),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: const Color(0xFFE8ECF4),
                  ),
                ),
                filled: true,
                fillColor: const Color(0xFFF7F8F9),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.8,
                ),
                hintText: 'Email',
                hintStyle: GoogleFonts.poppins(
                  color: Colors.grey[700],
                  fontSize: 13,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: const Color(0xFF1F41BB),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: const Color(0xFFE8ECF4),
                  ),
                ),
                filled: true,
                fillColor: Color(0xFFF7F8F9),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.8,
                ),
                hintText: 'Password',
                hintStyle: GoogleFonts.poppins(
                  color: Colors.grey[700],
                  fontSize: 13,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: const Color(0xFFE8ECF4),
                  ),
                ),
                filled: true,
                fillColor: const Color(0xFFF7F8F9),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.8,
                ),
                hintText: 'Confirm Password',
                hintStyle: GoogleFonts.poppins(
                  color: Colors.grey[700],
                  fontSize: 13,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xFFE8ECF4),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width * 0.82, 60),
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Register',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color.fromARGB(255, 0, 0, 0).withAlpha(60),
                      thickness: 0.7,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Or Register With',
                      style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    color: Color.fromARGB(255, 0, 0, 0).withAlpha(60),
                    thickness: 0.7,
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialButton('assets/images/facebook1.png'),
                  const SizedBox(width: 15),
                  socialButton('assets/images/google.png'),
                  const SizedBox(width: 15),
                  socialButton('assets/images/apple.png'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                Text(
                  'Already have an account?',
                  style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Login Now',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF35C2C1),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget socialButton(String imagePath) {
  return Container(
    width: 89.5,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      border: Border.all(
        color: const Color(0xFFE8ECF4),
      ),
    ),
    child: Center(
      child: Image.asset(
        imagePath,
        width: 15,
        height: 15,
        colorBlendMode: BlendMode.srcIn,
      ),
    ),
  );
}
