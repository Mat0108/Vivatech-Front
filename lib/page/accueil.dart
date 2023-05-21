import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import '../utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // accueilV9F (1:2)
        width: double.infinity,
        height: 926*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/vt23-gradients-rvb-1080x19202x-2-bg.png',
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupazgdfbT (XSJLTzj6UEN1UZ5xk2azGd)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(15*fem, 35*fem, 0*fem, 14*fem),
                width: 428*fem,
                height: 360*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupph9w8E9 (XSJJhP1QrtQzVvW1PgPH9w)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                      width: 428*fem,
                      height: 202*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // rectangle2F3s (1:4)
                            left: 9*fem,
                            top: 157*fem,
                            child: Align(
                              child: SizedBox(
                                width: 333*fem,
                                height: 45*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    border: Border.all(color: Color(0x33ffffff)),
                                    color: Color(0x66ffffff),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 2*fem,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle3LUd (1:5)
                            left: 353*fem,
                            top: 157*fem,
                            child: Align(
                              child: SizedBox(
                                width: 44*fem,
                                height: 45*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    border: Border.all(color: Color(0x33ffffff)),
                                    color: Color(0x66ffffff),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 2*fem,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // iconmagnifyingglass1qf (1:6)
                            left: 364*fem,
                            top: 169*fem,
                            child: Align(
                              child: SizedBox(
                                width: 22*fem,
                                height: 21.17*fem,
                                child: Image.asset(
                                  'assets/page-1/images/icon-magnifying-glass.png',
                                  width: 22*fem,
                                  height: 21.17*fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // faitesvosrecherchesJJy (1:8)
                            left: 24*fem,
                            top: 173*fem,
                            child: Align(
                              child: SizedBox(
                                width: 133*fem,
                                height: 17*fem,
                                child: Text(
                                  'Faites vos recherches....',
                                  style: SafeGoogleFont (
                                    'Museo Sans',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2575*ffem/fem,
                                    color: Color(0xffa1009b),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // frame179qP (1:9)
                            left: 0*fem,
                            top: 0*fem,
                            child: Container(
                              width: 428*fem,
                              height: 167*fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // rectangle4GQD (1:10)
                                    left: 9*fem,
                                    top: 10*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 389*fem,
                                        height: 122*fem,
                                        child: Container(
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(10*fem),
                                            border: Border.all(color: Color(0x33ffffff)),
                                            color: Color(0xa5ffffff),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x3f000000),
                                                offset: Offset(0*fem, 4*fem),
                                                blurRadius: 2*fem,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // frvt23smallblack1in1 (1:11)
                                    left: 14*fem,
                                    top: -2*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 379*fem,
                                        height: 146*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/fr-vt23-small-black-1.png',
                                          fit: BoxFit.cover,
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
                    ),
                    Container(
                      // frame20d8H (1:39)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                      padding: EdgeInsets.fromLTRB(5*fem, 18*fem, 7*fem, 1*fem),
                      height: 102*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // frame21ifX (1:40)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                            width: 65*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogrouptcdbSrR (XSJLma49M4B3ffYJXqTCdb)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 12*fem, 8*fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff00ffff)),
                                    color: Color(0xb2ffffff),
                                    borderRadius: BorderRadius.circular(50*fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 2*fem,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    // image5JNq (1:43)
                                    child: SizedBox(
                                      width: 43*fem,
                                      height: 45*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/image-5.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // monpassSE9 (1:41)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                  child: Text(
                                    'Mon pass',
                                    style: SafeGoogleFont (
                                      'Museo Sans',
                                      fontSize: 10*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame22wgh (1:44)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0*fem),
                            width: 65*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupairqHEm (XSJLtz1TbtvoUQfqhGAirq)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  padding: EdgeInsets.fromLTRB(9*fem, 12*fem, 9*fem, 13*fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff00ff00)),
                                    color: Color(0xb2ffffff),
                                    borderRadius: BorderRadius.circular(50*fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 2*fem,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    // image19mfj (1:47)
                                    child: SizedBox(
                                      width: 47*fem,
                                      height: 38*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/image-19.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // jeuxHty (1:45)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                  child: Text(
                                    'Jeux',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Museo Sans',
                                      fontSize: 10*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame23Qyb (1:48)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                            width: 65*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupmsnqYpu (XSJM2EJPHpTC6Kuj1bmSnq)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  padding: EdgeInsets.fromLTRB(11*fem, 9*fem, 12*fem, 9*fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xffffff00)),
                                    color: Color(0xb2ffffff),
                                    borderRadius: BorderRadius.circular(50*fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 2*fem,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    // image20S9b (1:51)
                                    child: SizedBox(
                                      width: 42*fem,
                                      height: 45*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/image-20.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  // armSm (1:49)
                                  'AR',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Museo Sans',
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2575*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame24Vdf (1:52)
                            width: 65*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupfnwp3QH (XSJM8UcyaEbPbHohFQfNwP)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  padding: EdgeInsets.fromLTRB(13*fem, 14*fem, 13*fem, 10*fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xfff15700)),
                                    color: Color(0xb2ffffff),
                                    borderRadius: BorderRadius.circular(50*fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 2*fem,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    // image8Kch (1:55)
                                    child: SizedBox(
                                      width: 39*fem,
                                      height: 39*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/image-8.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // cvqb3 (1:53)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                                  child: Text(
                                    'CV',
                                    style: SafeGoogleFont (
                                      'Museo Sans',
                                      fontSize: 10*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575*ffem/fem,
                                      color: Color(0xffffffff),
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
            ),
            Positioned(
              // autogroupm8rtkxu (XSJJwYGV6u13N7CULBM8RT)
              left: 0*fem,
              top: 360*fem,
              child: Container(
                width: 428*fem,
                height: 476*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // frame195kH (1:12)
                      left: 0*fem,
                      top: 0*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0*fem, 18*fem, 0*fem, 0*fem),
                        width: 428*fem,
                        height: 476*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // autogroupnaswmd7 (XSJKCNB7caWYybTYf2nAsw)
                              margin: EdgeInsets.fromLTRB(31*fem, 0*fem, 0*fem, 21*fem),
                              width: 165*fem,
                              height: 34*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff5508a0)),
                                color: Color(0xff5508a0),
                                borderRadius: BorderRadius.circular(10*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0*fem, 4*fem),
                                    blurRadius: 2*fem,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'CONFÉRENCES',
                                  style: SafeGoogleFont (
                                    'Museo Sans',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575*ffem/fem,
                                    color: Color(0xb25508a0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // frame12Qg5 (1:28)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                              width: double.infinity,
                              height: 189*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // autogroupaohw8c5 (XSJL7WKEfM25WzYheBAohw)
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // autogroupegjo5nD (XSJKfBjkzLcN2XqbvEegjo)
                                          width: 133*fem,
                                          height: 150*fem,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // rectangle33doj (1:34)
                                                left: 0*fem,
                                                top: 2*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 93*fem,
                                                    height: 148*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/rectangle-33.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // rectangle99n5 (1:35)
                                                left: 0*fem,
                                                top: 0*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 133*fem,
                                                    height: 150*fem,
                                                    child: Container(
                                                      decoration: BoxDecoration (
                                                        color: Color(0xcc5508a0),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color(0x3f000000),
                                                            offset: Offset(0*fem, 4*fem),
                                                            blurRadius: 2*fem,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4*fem,
                                        ),
                                        Container(
                                          // autogroupcewr2L5 (XSJKk6mEjQue2tcMPLcEWR)
                                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                          width: 156*fem,
                                          height: 148*fem,
                                          decoration: BoxDecoration (
                                            border: Border.all(color: Color(0xff5508a0)),
                                            image: DecorationImage (
                                              fit: BoxFit.cover,
                                              image: AssetImage (
                                                'assets/page-1/images/rectangle-31-bg.png',
                                              ),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x3f000000),
                                                offset: Offset(0*fem, 15*fem),
                                                blurRadius: 10*fem,
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Futur',
                                              style: SafeGoogleFont (
                                                'Museo Sans',
                                                fontSize: 20*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2575*ffem/fem,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4*fem,
                                        ),
                                        Container(
                                          // autogroup6b65RND (XSJKpM9ACpHTHwpVU66b65)
                                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                          width: 145*fem,
                                          height: 148*fem,
                                          decoration: BoxDecoration (
                                            border: Border.all(color: Color(0xff5508a0)),
                                            image: DecorationImage (
                                              fit: BoxFit.cover,
                                              image: AssetImage (
                                                'assets/page-1/images/rectangle-32-bg.png',
                                              ),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x3f000000),
                                                offset: Offset(0*fem, 15*fem),
                                                blurRadius: 10*fem,
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Web3',
                                              style: SafeGoogleFont (
                                                'Museo Sans',
                                                fontSize: 20*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2575*ffem/fem,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // autogroup2yx7qwj (XSJKtWgtPm3axb5odJ2YX7)
                                    height: 398*fem,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // autogroupdhq1zZj (XSJKxvjCS5emQUBbZ8dhQ1)
                                          margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 105*fem),
                                          width: 143*fem,
                                          height: 150*fem,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // rectangle34vTP (1:31)
                                                left: 0*fem,
                                                top: 2*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 63*fem,
                                                    height: 148*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/rectangle-34.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // rectangle35EU5 (1:36)
                                                left: 0*fem,
                                                top: 0*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 143*fem,
                                                    height: 150*fem,
                                                    child: Container(
                                                      decoration: BoxDecoration (
                                                        color: Color(0xcc5508a0),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color(0x3f000000),
                                                            offset: Offset(0*fem, 4*fem),
                                                            blurRadius: 2*fem,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // rectangle38jQq (1:37)
                                          width: 59*fem,
                                          height: 143*fem,
                                          decoration: BoxDecoration (
                                            border: Border.all(color: Color(0xff5508a0)),
                                            color: Color(0xccffffff),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x3f000000),
                                                offset: Offset(0*fem, 4*fem),
                                                blurRadius: 2*fem,
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
                            Container(
                              // autogroupbkvw3wK (XSJKHCNQ5CC9PYHUCbBKVw)
                              margin: EdgeInsets.fromLTRB(31*fem, 0*fem, 0*fem, 15*fem),
                              width: 100*fem,
                              height: 34*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff5508a0)),
                                color: Color(0xff5508a0),
                                borderRadius: BorderRadius.circular(10*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0*fem, 4*fem),
                                    blurRadius: 2*fem,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'STANDS',
                                  style: SafeGoogleFont (
                                    'Museo Sans',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575*ffem/fem,
                                    color: Color(0xb25508a0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupfg5bHqf (XSJKMSkKYbZxebVcHLfg5b)
                              width: double.infinity,
                              height: 189*fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // frame11SiZ (1:17)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 428*fem,
                                        height: 189*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/frame-11.png',
                                          width: 428*fem,
                                          height: 189*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // image11xS1 (1:38)
                                    left: 245*fem,
                                    top: 26*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 96*fem,
                                        height: 94*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/image-11.png',
                                          fit: BoxFit.cover,
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
                    ),
                    Positioned(
                      // image10UfF (1:86)
                      left: 81*fem,
                      top: 368*fem,
                      child: Align(
                        child: SizedBox(
                          width: 120*fem,
                          height: 41*fem,
                          child: Image.asset(
                            'assets/page-1/images/image-10.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // iconarrowcirclerightCbF (1:87)
                      left: 381*fem,
                      top: 128*fem,
                      child: Align(
                        child: SizedBox(
                          width: 41.35*fem,
                          height: 41.35*fem,
                          child: Image.asset(
                            'assets/page-1/images/icon-arrow-circle-right.png',
                            width: 41.35*fem,
                            height: 41.35*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // iconarrowcircleleftWM3 (1:89)
                      left: 8*fem,
                      top: 129*fem,
                      child: Align(
                        child: SizedBox(
                          width: 41.35*fem,
                          height: 41.35*fem,
                          child: Image.asset(
                            'assets/page-1/images/icon-arrow-circle-left.png',
                            width: 41.35*fem,
                            height: 41.35*fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // frame13oL9 (1:56)
              left: 0*fem,
              top: 831*fem,
              child: Align(
                child: SizedBox(
                  width: 428*fem,
                  height: 102*fem,
                  child: Image.asset(
                    'assets/page-1/images/frame-13.png',
                    width: 428*fem,
                    height: 102*fem,
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