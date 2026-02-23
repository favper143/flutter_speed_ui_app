import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/c02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class C03PageUi extends StatefulWidget {
  const C03PageUi({super.key});

  @override
  State<C03PageUi> createState() => _C03PageUiState();
}

class _C03PageUiState extends State<C03PageUi> {
  bool _isAccepted = false;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  bool _isFormValid = false;

  @override
  void _validateForm() {
    setState(() {
      _isFormValid = _nameController.text.isNotEmpty &&
          _emailController.text.isNotEmpty &&
          _passController.text.isNotEmpty &&
          _confirmPassController.text.isNotEmpty &&
          _isAccepted;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10, right: 44),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color(0xFF00B140), width: 1),
                  ),
                  child: Image.asset(
                    'assets/images/img10.png',
                    width: 10,
                    height: 10,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 44),
              child: Column(
                children: [
                  Text(
                    'Create your account',
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Name',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(186, 0, 0, 0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    onChanged: (value) => _validateForm(),
                    controller: _nameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'ex: jon smith',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: const Color.fromARGB(129, 0, 0, 0),
                      ),
                      filled: true,
                      fillColor: Color(0xFFFAFAFA),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(186, 0, 0, 0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    onChanged: (value) => _validateForm(),
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'ex. jon.smith@email.com',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: const Color.fromARGB(129, 0, 0, 0),
                      ),
                      filled: true,
                      fillColor: Color(0xFFFAFAFA),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(186, 0, 0, 0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    onChanged: (value) => _validateForm(),
                    controller: _passController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '*********',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(129, 0, 0, 0),
                      ),
                      filled: true,
                      fillColor: Color(0xFFFAFAFA),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Confirm Password',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(186, 0, 0, 0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    onChanged: (value) => _validateForm(),
                    controller: _confirmPassController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '*********',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(129, 0, 0, 0),
                      ),
                      filled: true,
                      fillColor: Color(0xFFFAFAFA),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isAccepted = !_isAccepted;
                        _validateForm();
                      });
                    },
                    child: Row(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: _isAccepted
                                ? Colors.white
                                : const Color(0xFFF7F8F9),
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: _isAccepted
                                  ? const Color(0xFF4CAF50)
                                  : const Color(0xFFE8ECF4),
                              width: 2,
                            ),
                          ),
                          child: _isAccepted
                              ? const Icon(
                                  Icons.check,
                                  size: 18,
                                  color: Color(0xFF4CAF50),
                                )
                              : null,
                        ),
                        const SizedBox(width: 12),
                        RichText(
                          text: TextSpan(
                            style: GoogleFonts.poppins(
                                color: Colors.black, fontSize: 14),
                            children: [
                              const TextSpan(text: 'I understood the '),
                              TextSpan(
                                text: 'terms & policy',
                                style: const TextStyle(
                                  color: Color(0xFF4CAF50),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const TextSpan(text: '.'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: _isFormValid
                        ? () {
                            print("Sign In สำเร็จ!");
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _isFormValid
                          ? const Color(0xFF00B24D)
                          : Colors.grey[400],
                      minimumSize: const Size(double.infinity, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'SIGN IN',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'or sign in with',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(129, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      socialButton('assets/images/google.png'),
                      const SizedBox(width: 15),
                      socialButton('assets/images/facebook1.png'),
                      const SizedBox(width: 15),
                      socialButton('assets/images/twitter.png'),
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Have an account?',
                          style: GoogleFonts.poppins(
                            color: Color.fromARGB(139, 0, 0, 0),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
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
                                builder: (context) => C02PageUi(),
                              ),
                            );
                          },
                          child: Text(
                            'SIGN IN',
                            style: GoogleFonts.poppins(
                              color: Color(0xFF35C2C1),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget socialButton(String imagePath) {
  return Container(
    width: 55,
    height: 30,
    decoration: BoxDecoration(
      color: Color(0xFFF4F4F4),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Center(
      child: Image.asset(
        imagePath,
        width: 20,
        height: 20,
        colorBlendMode: BlendMode.srcIn,
      ),
    ),
  );
}
