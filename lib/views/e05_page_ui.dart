import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/e06_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class E05PageUi extends StatefulWidget {
  const E05PageUi({super.key});

  @override
  State<E05PageUi> createState() => _E05PageUiState();
}

class _E05PageUiState extends State<E05PageUi> {
  final List<TextEditingController> _otpControllers =
      List.generate(4, (index) => TextEditingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF8EEC0),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
              child: Column(
                children: [
                  Text(
                    'OTP Verification',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/img2.png',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Enter OTP',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'An 4 digit code has been sent to your email',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF575757),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      otpBox(context, _otpControllers[0], true, false),
                      const SizedBox(width: 10),
                      otpBox(context, _otpControllers[1], false, false),
                      const SizedBox(width: 10),
                      otpBox(context, _otpControllers[2], false, false),
                      const SizedBox(width: 10),
                      otpBox(context, _otpControllers[3], false, true),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        'You should recieve the OTP in',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF575757),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '30 Second',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFF9800),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                  onTap: () {
                    for (var controller in _otpControllers) {
                      if (controller.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Please enter the complete OTP'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                        return;
                      }
                    }
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => E06PageUi(),
                        ),
                      );
                    });
                  },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Color(0xFFFF9800),
                            Color(0xFFFFC107),
                          ],
                        ),
                      ),
                      child: Text(
                        'Verify',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget otpBox(BuildContext context, TextEditingController controller,
    bool isFirst, bool isLast) {
  return SizedBox(
    width: 50,
    height: 50,
    child: TextField(
      controller: controller,
      autofocus: isFirst,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      maxLength: 1,
      showCursor: false,
      decoration: InputDecoration(
        counterText: "",
        filled: true,
        fillColor: const Color(0xFFE3E3E3),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFE8ECF4)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black, width: 1.5),
        ),
      ),
      onChanged: (value) {
        if (value.length == 1 && !isLast) {
          FocusScope.of(context).nextFocus();
        }
        if (value.isEmpty && !isFirst) {
          FocusScope.of(context).previousFocus();
        }
      },
    ),
  );
}
