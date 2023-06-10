import 'package:authentication_app/widgets/responsive_img.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  void switchToLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  // void initState() {
  //   Future.delayed(const Duration(seconds: 3), switchToLoginPage);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: ResponsiveImage(imgPath: 'assets/images/header.png'),
          ),
          Text(
            'ANGEL SURE',
            style: GoogleFonts.akayaTelivigala(
                fontSize: 36,
                fontWeight: FontWeight.w400,
                color: const Color(0xff2F80ED)),
          ),
          Image.asset(
            'assets/images/logo.png',
            width: 239,
            height: 298,
          ),
          Flexible(
            child: Stack(
              children: [
                ResponsiveImage(imgPath: 'assets/images/footer.png'),
                Positioned(
                    bottom: 16,
                    right: 16,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: FloatingActionButton(
                        onPressed: switchToLoginPage,
                        backgroundColor: const Color(0xffFFFFFF),
                        child: const Text(
                          '>',
                          style: TextStyle(
                              color: Color(0xff2F80ED),
                              fontSize: 30,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
