import 'package:flutter/material.dart';
void main() {
  runApp(bbobbiProfile());
}

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class bbobbiProfile extends StatelessWidget {
  // final String nicknamePet;
  // final String mainImage;
  // final String characteristic;
  // final String missingLocation;
  // final String phoneNumber;

  // Constructor to receive data
  // const hard_profile({
  //   required this.nicknamePet,
  //   required this.mainImage,
  //   required this.characteristic,
  //   required this.missingLocation,
  //   required this.phoneNumber,
  // });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 111, 174, 186),
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
        centerTitle: true,
        title: Text('상세정보',style: TextStyle(
      fontSize: 30, // 원하는 글씨 크기로 조절
      fontWeight: FontWeight.bold, // 굵기 조절
      fontFamily: 'DungGeunMo',
      color: Colors.white,),),
        backgroundColor: Color.fromARGB(255, 111, 174, 186),
        ),
        body: ListView(
          children: [
            bbobbiDetail(),
            // ShowingDetail(
            //   nicknamePet: nicknamePet,
            //   mainImage: mainImage,
            //   characteristic: characteristic,
            //   missingLocation: missingLocation,
            //   phoneNumber: phoneNumber,
            //),
          ],
        ),
      ),
    );
  }
}

class bbobbiDetail extends StatelessWidget {
  // final String nicknamePet;
  // final String mainImage;
  // final String characteristic;
  // final String missingLocation;
  // final String phoneNumber;

  // Constructor to receive data
  const bbobbiDetail(
    //{
    // required this.nicknamePet,
    // required this.mainImage,
    // required this.characteristic,
    // required this.missingLocation,
    // required this.phoneNumber,
  //}
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // 세로 중앙 정렬
      crossAxisAlignment: CrossAxisAlignment.center, // 가로 중앙 정렬
      children: [
        Container(
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color.fromARGB(255, 111, 174, 186)),
          child: Stack(
            children: [
              Positioned(
                left: 93,
                top: 50,
                child: Container(
                  width: 189,
                  height: 184,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bbobbi18.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -1,
                top: 255,
                child: Container(
                  width: 376,
                  height: 513,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: 19,
                top: 545,
                child: Container(
                  width: 335,
                  height: 71,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 335,
                          padding: const EdgeInsets.only(top: 22),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  //height: double.infinity,
                                  height: null,
                                  padding: const EdgeInsets.all(15),
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1, color: Color(0xFFC8D1E1)),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 24, height: 24),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
  left: 127,
  top: 0,
  child: Column(
    children: [
      Text(
        '주인 전화번호',
        style: TextStyle(
          color: Color.fromARGB(138, 15, 179, 133),
          fontSize: 16,
          fontFamily: 'DungGeunMo',
          fontWeight: FontWeight.bold,
          height: 0,
        ),
      ),
      SizedBox(height:20),
      Text(
        '010-9526-6526',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'DungGeunMo',
          fontWeight: FontWeight.w400,
          height: 0,
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
                left: 20,
                top: 451,
                child: Container(
                  width: 335,
                  height: 71,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 335,
                          padding: const EdgeInsets.only(top: 22),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  //height: double.infinity,
                                  height: null,
                                  padding: const EdgeInsets.all(15),
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1, color: Color(0xFFC8D1E1)),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 24, height: 24),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
  left: 126,
  top: 5,
  child: Column(
    children: [
      Text(
        '반려동물 특징',
        style: TextStyle(
          color: Color.fromARGB(138, 15, 179, 133),
          fontSize: 16,
          fontFamily: 'DungGeunMo',
          fontWeight: FontWeight.bold,
          height: 0,
        ),
      ),
      SizedBox(height:15),
      Text(
        '사람을 무서워함',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'DungGeunMo',
          fontWeight: FontWeight.w400,
          height: 0,
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
                left: 20,
                top: 362,
                child: Container(
                  width: 336,
                  height: 71,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 1,
                        top: 0,
                        child: Container(
                          width: 335,
                          padding: const EdgeInsets.only(top: 22),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  //height: double.infinity,
                                  height: null,
                                  padding: const EdgeInsets.all(15),
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1, color: Color(0xFFC8D1E1)),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 24, height: 24),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 335,
                          padding: const EdgeInsets.only(top: 22),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  //height: double.infinity,
                                  height: null,
                                  padding: const EdgeInsets.all(15),
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1, color: Color(0xFFC8D1E1)),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 24, height: 24),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
  left: 112,
  top: 0,
  child: Column(
    children: [
      Text(
        '반려동물 실종위치',
        style: TextStyle(
          color: Color.fromARGB(138, 15, 179, 133),
          fontSize: 16,
          fontFamily: 'DungGeunMo',
          fontWeight: FontWeight.bold,
          height: 0,
        ),
      ),
      SizedBox(height: 20,),
      Text(
        '6P실',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'DungGeunMo',
          fontWeight: FontWeight.w400,
          height: 0,
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
                left: 19,
                top: 273,
                child: Container(
                  width: 336,
                  height: 71,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 336,
                        height: 71,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 1,
                              top: 0,
                              child: Container(
                                width: 335,
                                height: 71,
                                padding: const EdgeInsets.only(top: 22),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        //height: double.infinity,
                                        height:null,
                                        padding: const EdgeInsets.all(15),
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 1, color: Color(0xFFC8D1E1)),
                                            borderRadius: BorderRadius.circular(6),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(width: 24, height: 24),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 335,
                                height: 71,
                                padding: const EdgeInsets.only(top: 22),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        //height: double.infinity,
                                        height: null,
                                        padding: const EdgeInsets.all(15),
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 1, color: Color(0xFFC8D1E1)),
                                            borderRadius: BorderRadius.circular(6),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(width: 24, height: 24),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
  left: 127,
  top: 0,
  child: Column(
    children: [
      Text(
        '반려동물 이름',
        style: TextStyle(
          color: Color.fromARGB(138, 15, 179, 133),
          fontSize: 16,
          fontFamily: 'DungGeunMo',
          fontWeight: FontWeight.bold,
          height: 0,
        ),
      ),
      SizedBox(height: 20,),
      Text(
        '뽀삐',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'DungGeunMo',
          fontWeight: FontWeight.w400,
          height: 0,
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
            ],
          ),
        ),
      ],
    );
  }
}