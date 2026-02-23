import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d06_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class D05PageUi extends StatefulWidget {
  const D05PageUi({super.key});

  @override
  State<D05PageUi> createState() => _D05PageUiState();
}

class _D05PageUiState extends State<D05PageUi> {
  final List<TextEditingController> _otpControllers =
      List.generate(4, (index) => TextEditingController());

  @override
  void dispose() {
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    super.dispose();
  }

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
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 35,
                    right: 50,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'OTP Verification',
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
                    'Enter the verification code we just sent on your email address.',
                    style: GoogleFonts.poppins(
                      color: Colors.grey[700],
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      otpBox(context, _otpControllers[0], true, false),
                      otpBox(context, _otpControllers[1], false, false),
                      otpBox(context, _otpControllers[2], false, false),
                      otpBox(context, _otpControllers[3], false, true),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
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
                          builder: (context) => D06PageUi(),
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
                    'Verify',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
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
    width: 70,
    height: 70,
    child: TextField(
      cursorColor: const Color.fromARGB(255, 0, 0, 0),
      controller: controller,
      autofocus: isFirst,
      onChanged: (value) {
        if (value.length == 1 && !isLast) {
          FocusScope.of(context).nextFocus();
        }
        if (value.isEmpty && !isFirst) {
          FocusScope.of(context).previousFocus();
        }
      },
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      maxLength: 1,
      decoration: InputDecoration(
        border: InputBorder.none,
        counterText: "",
        filled: true,
        fillColor: const Color(0xFFF7F8F9),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFE8ECF4)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFE8ECF4)),
        ),
      ),
    ),
  );
}
