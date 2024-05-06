// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class ShowMitsuUI extends StatefulWidget {
  const ShowMitsuUI({super.key});

  @override
  State<ShowMitsuUI> createState() => _ShowMitsuUIState();
}

class _ShowMitsuUIState extends State<ShowMitsuUI> {
  List<String> _showmanu1 = [
    'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/cars/space-star/2020/primary/hero/Y35_0_20EL-04-R-Side.png?width=480&quality=70&auto=webp',
    'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/cars/attrage/2020/primary/hero/W85_hero202103_2.png?width=480&quality=70&auto=webp',
  ];

List<String> _showText1 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'MIRAGE\nราคา 509,000 บาท',
    'ATTRAGE\nราคา 529,000 บาท',

  ];  List<String> _showmanu2 = [
    'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/cars/xpander/2022/primary/hero/U33_Xpander_2022.png?width=480&quality=70&auto=webp',
    'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/cars/xpander-cross-hev/2024/primary/hero/U28_Xpander_Cross_HEV_2024.png?width=480&quality=70&auto=webp',
    'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/cars/outlander-phev/2021/primary/hero/W85_OutlanderPHEV_1.png?width=480&quality=70&auto=webp',
    'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/cars/pajero-sport/2024/primary/hero/X37_hero.png?width=480&quality=70&auto=webp',
  ];

List<String> _showText2 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'Xpender\nราคา 933,000 บาท',
    'Xpender Cross New\nราคา 961,000 บาท',
    'Xpender PHEV\nราคา 1,640,000 บาท',
    'New Pajero Sport \nราคา 1,389,000 บาท',
  ];
      List<String> _showmanu3 = [
    'https://cdn.discordapp.com/attachments/945151014623928411/1236968793033670676/MSHTTimg1_2.png?ex=6639f076&is=66389ef6&hm=c3ba60d7bd5d4bfbd748487aeef8e2f2e626a71b122045123ad1f0cb92c77c76&',
    'https://cdn.discordapp.com/attachments/945151014623928411/1236967698127257631/MSHMGimg3_2.jpg?ex=6639ef70&is=66389df0&hm=356af6078c3e344386a514d5c7238a8f24ccc7c947c450f5ea301f0e71d5a60a&',
    'https://cdn.discordapp.com/attachments/945151014623928411/1236967712811520031/MSHSCimg4_2.png?ex=6639ef74&is=66389df4&hm=1ac60aa3adf91070cce98b2f5ea4a8c89efddd60cdaf0e1696ca1550ca913980&',
    'https://cdn.discordapp.com/attachments/945151014623928411/1236968756916518983/MSHDimh2_2.jpg?ex=6639f06d&is=66389eed&hm=a9a320c55ade3395517bd1903cd85492f3bc349e608f24c1e118a428fa11a977&',
  ];

List<String> _showText3 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'ออล-นิว มิตซูบิชิ ไทรทัน ดับเบิ้ล แค็บ พลัส\nราคา 820,000 บาท',
    'ออล-นิว มิตซูบิชิ ไทรทัน ซิงเกิ้ล แค็บ ขับเคลื่อน 4 ล้อ\nราคา 699,000 บาท',
    'ออล-นิว มิตซูบิชิ ไทรทัน เมกะ แค็บ\nราคา 740,000 บาท',
    'Mitsubishi Triton Athlete\nราคา 569,000 บาท',
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
            ],
            ),
        ),
      ),
    );
  }
}