// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';

class ShowToyotaUI extends StatefulWidget {
  const ShowToyotaUI({super.key});

  @override
  State<ShowToyotaUI> createState() => _ShowToyotaUIState();
}

class _ShowToyotaUIState extends State<ShowToyotaUI> {

List<String> _showmanu1 = [
    'https://www.toyota.co.th/media/product/series/v/402/model/798d3263ac30c6c04da396ec92f645ef5f63be21e495388710a9eb1f8a8bc7df.webp',
    'https://www.toyota.co.th/media/product/series/v/402/model/1dea65bfaf4b381d48c507e6a7f801cd8926878db5a8f59875a0333370f54345.webp',
    'https://www.toyota.co.th/media/product/series/v/402/model/89e9e75fa1e2a9d6f8eae3e74f0bc31b9773142cf7211a3d0068ffbe8f4b83dd.webp',
    'https://www.toyota.co.th/media/product/series/v/402/model/8f531d06b8c59637939f9080950085d7d773cb7bd7ec395dfa06e51fb48aa5f5.webp',
  ];

List<String> _showText1 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'Yaris ATIV\nราคา 549,000 บาท',
    'Yaris \nราคา 559,000 บาท',
    'Corolla Altis \nราคา 894,000 บาท',
    'Corolla Altis GR Sport \nราคา 1,129,000 บาท',

  ];

  List<String> _showmanu2 = [
    'https://www.toyota.co.th/media/product/series/v/402/model/26067ee5ca9cf608fd0d1d07f31d62ab7f877e2735fd19c2f368748fe0538bb1.webp',
    'https://www.toyota.co.th/media/product/series/v/402/model/f3f18ada6b794af900318012273751994771fae830b6c48edeee76445557e5eb.webp',
    'https://www.toyota.co.th/media/product/series/v/402/model/2cf45aa691bb11fabf32a2396c3409731866a9b409c6d86faccbf060791d6370.webp',
    'https://www.toyota.co.th/media/product/series/v/402/model/8a92490ba2ffe28908a0b9ee6537201f5bbd528138a1c238e4f2c198d5892ae8.webp',
  ];

List<String> _showText2 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'Yaris Cross\nราคา 789,000 บาท',
    'Corolla Cross\nราคา 999,000 บาท',
    'Corolla Cross GR Sport\nราคา 1,254,000 บาท',
    'Fortuner GR Sport \nราคา 1,969,000 บาท',
  ];
    List<String> _showmanu3 = [
    'https://www.toyota.co.th/media/product/series/v/402/model/9ea937f22dd5ac6229be3218c42912381834dcb103ca8b91419e1b34372f7c72.webp',
    'https://www.toyota.co.th/media/product/series/v/402/model/36e500588ab739bd71e3242c1c30b530baa59375e93c9991fa6008007be0ad19.webp',
    'https://www.toyota.co.th/media/product/series/v/402/model/73fe65506a51182c5c6e08fcbc6e5be42e4cc8b79fe7de0c50f6695207b3b5f1.webp',
    'https://www.toyota.co.th/media/product/series/v/402/model/c5862597d4d2969903b3e7d1dc3b403f074430d6127715e11eb1a00731776821.webp',
  ];

List<String> _showText3 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'Hilux Revo Standard Cab\nราคา 584,000 บาท',
    'Hilux Revo Z Edition\nราคา 669,000บาท',
    'Hilux Revo Prerunner & 4x4\nราคา 775,000 บาท',
    'Hilux Revo GR Sport \nราคา 934,000 บาท',
  ];
      List<String> _showmanu4 = [
    'https://www.toyota.co.th/media/product/series/v/402/model/aa8191a1052c2cab2c4600cd4fbab6d2d170d88ed474c95e25226e5f4387f6bf.webp',
    'https://www.toyota.co.th/media/product/series/v/402/model/0cf0ff6f2297adcba34bdd79898a8eb4d99528ff6879ffc64b861d662b76163a.webp',
  ];

List<String> _showText4 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'Hiace\nราคา 1,069,000 บาท',
    'Commuter\nราคา 1,339,000 บาท',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 1,
          ),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                  Text('รถเก๋ง',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                  ),
                ],
              ),
              Container(
              height: 200.0, // เพิ่มความสูงเพื่อรองรับข้อความ
              padding: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
              ),
              child: ListView.builder(
                itemCount: _showmanu1.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          _showmanu1[index],
                          height: 100.0, // จำกัดขนาดรูปภาพ
                          fit: BoxFit.cover, // ให้รูปภาพเต็มกรอบ
                        ),
                        SizedBox(height: 10), // ระยะห่างระหว่างรูปภาพกับข้อความ
                        Text(
                          _showText1[index], // แสดงข้อความสำหรับแต่ละรูป
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16, // ขนาดข้อความ
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                  Text('รถ SUV & PPV',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                  ),
                ],
              ),
              Container(
              height: 200.0, // เพิ่มความสูงเพื่อรองรับข้อความ
              padding: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
              ),
              child: ListView.builder(
                itemCount: _showmanu2.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          _showmanu2[index],
                          height: 100.0, // จำกัดขนาดรูปภาพ
                          fit: BoxFit.cover, // ให้รูปภาพเต็มกรอบ
                        ),
                        SizedBox(height: 10), // ระยะห่างระหว่างรูปภาพกับข้อความ
                        Text(
                          _showText2[index], // แสดงข้อความสำหรับแต่ละรูป
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16, // ขนาดข้อความ
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                  Text('รถกระบะ',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                  ),
                ],
              ),
              Container(
              height: 200.0, // เพิ่มความสูงเพื่อรองรับข้อความ
              padding: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
              ),
              child: ListView.builder(
                itemCount: _showmanu3.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          _showmanu3[index],
                          height: 100.0, // จำกัดขนาดรูปภาพ
                          fit: BoxFit.cover, // ให้รูปภาพเต็มกรอบ
                        ),
                        SizedBox(height: 10), // ระยะห่างระหว่างรูปภาพกับข้อความ
                        Text(
                          _showText3[index], // แสดงข้อความสำหรับแต่ละรูป
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16, // ขนาดข้อความ
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                  Text('รถVAN',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                  ),
                ],
              ),
              Container(
              height: 200.0, // เพิ่มความสูงเพื่อรองรับข้อความ
              padding: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
              ),
              child: ListView.builder(
                itemCount: _showmanu4.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          _showmanu4[index],
                          height: 100.0, // จำกัดขนาดรูปภาพ
                          fit: BoxFit.cover, // ให้รูปภาพเต็มกรอบ
                        ),
                        SizedBox(height: 10), // ระยะห่างระหว่างรูปภาพกับข้อความ
                        Text(
                          _showText4[index], // แสดงข้อความสำหรับแต่ละรูป
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16, // ขนาดข้อความ
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ],
            ),
        ),
      ),
    );
  }
}