import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class A02PageUi extends StatefulWidget {
  const A02PageUi({super.key});

  @override
  State<A02PageUi> createState() => _A02PageUiState();
}

class _A02PageUiState extends State<A02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('9:41', style: TextStyle(fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Icon(Icons.signal_cellular_alt, size: 18),
                        SizedBox(width: 5),
                        Icon(Icons.wifi, size: 18),
                        SizedBox(width: 5),
                        Icon(Icons.battery_full, size: 18),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Welcome Back',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF464444),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et. ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color(0xFF464444),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.85,
                  ),
                  filled: true,
                  fillColor: Color(0xFFF1F4F7),
                  hintText: 'Username, Email & Phone Number',
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.85,
                  ),
                  filled: true,
                  fillColor: Color(0xFFF1F4F7),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(right: 25, top: 10),
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width * 0.90, 70),
                  backgroundColor: Color(0xFFF89AEE),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                child: Text(
                  'SIGN IN',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFF89AEE).withOpacity(0.0),
                              Color(0xFFF89AEE),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Or Sign up With',
                        style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 11,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFF89AEE),
                              Color(0xFFF89AEE).withOpacity(0.0),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // จัดให้อยู่กึ่งกลางหน้าจอ
                  children: [
                    socialButton(
                        'assets/images/google.png'), // เปลี่ยนเป็น path รูปของคุณ
                    SizedBox(width: 18), // ระยะห่างระหว่างปุ่ม
                    socialButton(
                      'assets/images/facebook2.png'),
                    SizedBox(width: 18),
                    socialButton(
                      'assets/images/apple.png'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget socialButton(String imagePath) {
  return Container(
    padding: EdgeInsets.all(12), // ระยะห่างระหว่างรูปกับเส้นขอบ
    decoration: BoxDecoration(
      color: Color(0xFFF1F1F1), // สีพื้นหลังเทาอ่อน
      shape: BoxShape.circle, // ทำให้เป็นวงกลม
      border: Border.all(
        color: Color(0xFFF89AEE).withOpacity(0.5), // เส้นขอบสีชมพูจางๆ
        width: 1,
      ),
    ),
    child: Image.asset(
      imagePath,
      width: 25, // ปรับขนาดไอคอนตามต้องการ
      height: 25,
    ),
  );
}
