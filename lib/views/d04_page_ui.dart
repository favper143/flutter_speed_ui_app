import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/d05_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class D04PageUi extends StatefulWidget {
  const D04PageUi({super.key});

  @override
  State<D04PageUi> createState() => _D04PageUiState();
}

class _D04PageUiState extends State<D04PageUi> {

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 35,
                    top: 30,
                    bottom: 10,
                  ),
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
                        borderRadius: BorderRadius.circular(12),
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
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
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
                      'Forgot Password?',
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
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Text(
                    'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                    style: GoogleFonts.poppins(
                      color: Colors.grey[700],
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _emailController,
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
                    hintText: 'Enter your email',
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
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_emailController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please enter your email address'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      return;
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Verification code sent to ${_emailController.text}'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => D05PageUi(),
                        ),
                      );
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.82, 60),
                    backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Send Code',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding:  EdgeInsets.only(bottom: 60)),
                    Text(
                      'Remember Password?',
                      style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => D02PageUi(),
                          ),
                        );
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          color: Color(0xFF35C2C1),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
