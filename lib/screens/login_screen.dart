import 'package:authentication_app/screens/signup_screen.dart';
import 'package:authentication_app/widgets/custom_button.dart';
import 'package:authentication_app/widgets/signinsignup_button.dart';
import 'package:flutter/material.dart';
import 'package:authentication_app/widgets/responsive_img.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Stack(
              children: [
                ResponsiveImage(imgPath: 'assets/images/header.png'),
                Positioned(
                  top: 60,
                  right: 42,
                  child: CustomButton(
                      btnName: 'SIGN UP',
                      callback: signup,
                      width: 122,
                      height: 40,
                      fontsize: 20,
                      fontColor: const Color(0xff2F80ED),
                      buttonBackgroundColor: const Color(0xffFFFFFF)),
                ),
              ],
            ),
          ),
          const Text(
            'Sign In To Continue',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Color(0xff4F4F4F),
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 22),
              child: _socialMediaIcons()),
          _dividerORdivider(),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 26),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 20.59, bottom: 8),
                  child: _showText("Email ID*", const Color(0xff4F4F4F)),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xff828282),
                          ),
                          borderRadius: BorderRadius.circular(5.0))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _showText('Password*', const Color(0xff4F4F4F)),
                      TextButton(
                          onPressed: () {},
                          child: _showText(
                              'Forgot Password?', const Color(0xff4F4F4F))),
                    ],
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.visibility_off_rounded),
                      ),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xff828282),
                          ),
                          borderRadius: BorderRadius.circular(5.0))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 29),
                  child: SignINsignUPbutton(
                    btnName: 'SIGN IN',
                    callback: () {},
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: SizedBox(
                    height: 45,
                    width: 208,
                    child: Text(
                      'Terms and Conditions | Privacy Policy',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff4F4F4F)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(child: ResponsiveImage(imgPath: 'assets/images/footer.png')),
        ],
      ),
    );
  }

  Row _socialMediaIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {},
          child: Image.asset(
            'assets/images/googleIcon.png',
            height: 26,
            width: 40,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(
            'assets/images/facebookIcon.png',
            height: 26,
            width: 27,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(
            'assets/images/twitterIcon.png',
            height: 25.79,
            width: 26.82,
          ),
        ),
      ],
    );
  }

  Row _dividerORdivider() {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: Color(0xff828282),
            endIndent: 16,
          ),
        ),
        Text(
          'OR',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Color(0xff4F4F4F)),
        ),
        Expanded(
          child: Divider(
            indent: 16,
            thickness: 1,
            color: Color(0xff828282),
          ),
        ),
      ],
    );
  }

  Text _showText(String showText, Color fontColor) {
    return Text(
      showText,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: fontColor),
    );
  }

  void signup() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignupPage()));
  }
}
