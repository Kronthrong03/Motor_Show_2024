// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class ShowMazdaUI extends StatefulWidget {
  const ShowMazdaUI({super.key});

  @override
  State<ShowMazdaUI> createState() => _ShowMazdaUIState();
}

class _ShowMazdaUIState extends State<ShowMazdaUI> {
  List<String> _showmanu1 = [
    'https://mazdaarena.com/wp-content/uploads/2022/11/image-removebg-preview-1.png',
    'https://www.mazdamisr.com/media/50fbicm3/mazda3_bfvgnak_46v_by3_ext_360_36_png_0006.jpg',
    'https://cf.autodeft2.pw/uploads/images/2019/Mazda/001_o.jpg',
  ];

  List<String> _showText1 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'NEW MAZDA 2\nราคา 599,000 บาท',
    'NEW MAZDA3\nราคา 979,000 บาท',
    'Mazda 6\nราคา 2,400,000 บาท',
  ];
   List<String> _showmanu2 = [
    'https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_cg_hero_low/v1/editorial/vhs/2021-mazda-bt-50.png',
  ];

  List<String> _showText2 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'mazda bt-50\nราคา 771,000 บาท',
  ];
     List<String> _showmanu3 = [
    'https://www.mazda.co.th/link/82fa590cf88846a785197da1b0517ec4.aspx',
    'https://www.matichon.co.th/wp-content/uploads/2019/11/Exterior-01.jpg',
    'https://www.grandprix.co.th/wp-content/uploads/2021/07/New-Mazda-cx3-2021-20-660x400@2x.jpg',

  ];

List<String> _showText3 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'mazda cx-5\nราคา 1,349,000 บาท',
    'mazda cx-8\nราคา 1,549,000 บาท',
    'mazda cx-3\nราคา 770,000 บาท'
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
                left: 1.0,
                right: 1.0,
              ),
              child: ListView.builder(
                itemCount: _showmanu1.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: 1.0,
                      right: 1.0,
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
                  Text('รถ กระบะ',
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
            ],
            ),
        ),
      ),
    );
  }
}