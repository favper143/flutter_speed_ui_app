import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/a02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class A01PageUi extends StatefulWidget {
  const A01PageUi({super.key});

  @override
  State<A01PageUi> createState() => _A01PageUiState();
}

class _A01PageUiState extends State<A01PageUi> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(4)),
            Container(
              width: MediaQuery.of(context).size.width * 0.96,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                  color: Color(0xFFF89AEE)),
              child: Image.asset(
                'assets/images/img7.png',
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.55,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Discover Your',
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 71, 67, 71),
              ),
            ),
            Text(
              'Own Dream House',
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 71, 67, 71),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              style: GoogleFonts.poppins(
                fontSize: 11,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 71, 67, 71),
              ),
            ),
            Text(
              'Diam maecenas mi non sed ut odio. Non, justo, sed facilisi',
              style: GoogleFonts.poppins(
                fontSize: 11,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 71, 67, 71),
              ),
            ),
            Text(
              'et. Eget viverra urna, vestibulum egestas faucibus',
              style: GoogleFonts.poppins(
                fontSize: 11,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 71, 67, 71),
              ),
            ),
            Text(
              'egestas. Sagittis nam velit volutpat eu nunc.',
              style: GoogleFonts.poppins(
                fontSize: 11,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 71, 67, 71),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFF1F1F1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isLogin = true;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => A02PageUi(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              isLogin ? Color(0xFFF89AEE) : Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                        ),
                        child: Text(
                          'Sign in',
                          style: GoogleFonts.poppins(
                            color: isLogin
                                ? Colors.white
                                : const Color.fromARGB(255, 61, 49, 49),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isLogin = false;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => A02PageUi(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              !isLogin ? Color(0xFFF89AEE) : Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        child: Text(
                          'Register',
                          style: GoogleFonts.poppins(
                            color: !isLogin
                                ? Colors.white
                                : const Color.fromARGB(255, 61, 49, 49),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
