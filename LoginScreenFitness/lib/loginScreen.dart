import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // iphone141aTw (202:129)
        width: double.infinity,
        height: 900 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle315Qh (202:130)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 390 * fem,
                  height: 490 * fem,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff265c82),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // hellowelcomebackmoK (206:158)
              left: 15 * fem,
              top: 70 * fem,
              child: Align(
                child: SizedBox(
                  width: 142 * fem,
                  height: 20 * fem,
                  child: RichText(
                    text: TextSpan(
                      text: 'Hello Welcome Back!',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 13 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // usermCy (206:150)
              left: 162 * fem,
              top: 45 * fem,
              child: Align(
                child: SizedBox(
                  width: 20 * fem,
                  height: 19 * fem,
                  child: Image.asset(
                    'assets/page-1/images/user-PYZ.png',
                    width: 20 * fem,
                    height: 19 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // loginaccountUt5 (206:149)
              left: 15 * fem,
              top: 42 * fem,
              child: Align(
                child: SizedBox(
                  width: 143 * fem,
                  height: 24 * fem,
                  child: Text(
                    'Login Account ',
                    style: SafeGoogleFont(
                      'Raleway',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.175 * ffem / fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle32msB (202:132)
              left: 0 * fem,
              top: 385 * fem,
              child: Align(
                child: SizedBox(
                  width: 390 * fem,
                  height: 495 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25 * fem),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle334bP (202:137)
              left: 0 * fem,
              top: 385 * fem,
              child: Align(
                child: SizedBox(
                  width: 390 * fem,
                  height: 495 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25 * fem),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle34AuK (202:138)
              left: 0 * fem,
              top: 106 * fem,
              child: Align(
                child: SizedBox(
                  width: 390 * fem,
                  height: 766 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25 * fem),
                      color: const Color(0xff1e2933),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // forgotpasswordgcm (206:148)
              left: 249 * fem,
              top: 444 * fem,
              child: Align(
                child: SizedBox(
                  width: 115 * fem,
                  height: 18 * fem,
                  child: Text(
                    'Forgot Password ?',
                    style: SafeGoogleFont(
                      'Outfit',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.26 * ffem / fem,
                      color: const Color(0xff4285f4),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle28NkV (206:146)
              left: 25 * fem,
              top: 484 * fem,
              child: Align(
                child: SizedBox(
                  width: 339 * fem,
                  height: 55 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12 * fem),
                      color: const Color(0xff265c82),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // login6Ah (206:147)
              left: 172 * fem,
              top: 500 * fem,
              child: Align(
                child: SizedBox(
                  width: 49 * fem,
                  height: 23 * fem,
                  child: Text(
                    'Login ',
                    style: SafeGoogleFont(
                      'Outfit',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.26 * ffem / fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle36o57 (206:143)
              left: 25 * fem,
              top: 377 * fem,
              child: Align(
                child: SizedBox(
                  width: 339 * fem,
                  height: 58 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12 * fem),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse3udw (202:134)
              left: 130 * fem,
              top: 123 * fem,
              child: Align(
                child: SizedBox(
                  width: 130 * fem,
                  height: 130 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(65 * fem),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // barbellphoto1Qah (203:139)
              left: 149 * fem,
              top: 143 * fem,
              child: Align(
                child: SizedBox(
                  width: 92 * fem,
                  height: 90 * fem,
                  child: Image.asset(
                    'assets/page-1/images/barbell-photo-1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle35vZ3 (206:142)
              left: 25 * fem,
              top: 302 * fem,
              child: Align(
                child: SizedBox(
                  width: 339 * fem,
                  height: 58 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12 * fem),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // usernameFLR (206:144)
              left: 38 * fem,
              top: 318 * fem,
              child: Align(
                child: SizedBox(
                  width: 60 * fem,
                  height: 17 * fem,
                  child: Text(
                    'Username',
                    style: SafeGoogleFont(
                      'Outfit',
                      fontSize: 13 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.26 * ffem / fem,
                      color: const Color(0xff6f6f6f),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // passwordxEq (206:145)
              left: 44 * fem,
              top: 394 * fem,
              child: Align(
                child: SizedBox(
                  width: 56 * fem,
                  height: 17 * fem,
                  child: Text(
                    'Password',
                    style: SafeGoogleFont(
                      'Outfit',
                      fontSize: 13 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.26 * ffem / fem,
                      color: const Color(0xff6f6f6f),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
