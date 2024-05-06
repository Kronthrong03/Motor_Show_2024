// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class ShowHondaUI extends StatefulWidget {
  const ShowHondaUI({super.key});

  @override
  State<ShowHondaUI> createState() => _ShowHondaUIState();
}

class _ShowHondaUIState extends State<ShowHondaUI> {
    List<String> _showmanu1 = [
    'https://www.honda.co.th/uploads/car_models/grade/1711353608_87.jpg',
    'https://www.honda.co.th/uploads/car_models/grade/1709479126_934.jpeg',
    'https://www.honda.co.th/uploads/car_models/grade/1705465775_197.png',
    'https://www.honda.co.th/uploads/car_models/grade/1678589161_587.jpg',
  ];

List<String> _showText1 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'Honda Accord e:HEV\nราคา 1,529,000 บาท',
    'New Honda City\nราคา 599,000 บาท',
    'New City HatchBack\nราคา 599,000 บาท',
    'Civic Type R \nราคา 3,990,000 บาท',
  ];
   List<String> _showmanu2 = [
    'https://www.honda.co.th/uploads/articles/3ac2d980449859df356e21aaf76467ff.jpg',
    'https://www.checkraka.com/uploaded/logo/5e/5e7890f9d642c79bc0de82b227411af7.webp',
    'https://s.isanook.com/au/0/ud/16/84404/brv.jpg?ip/crop/w700h366/q80/jpg',
    'https://api.hwcapis.com:12443/PRD.VDS.API.CAR/Media/view/0e6b6a763e5c445ea31022594fe0e5c6',
  ];

List<String> _showText2 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'Honda CR-V\nราคา 1,419,000 บาท',
    'Honda HR-V\nราคา 599,000 บาท',
    'Honda BR-V\nราคา 915,000 บาท',
    'Honda WR-V\nราคา 799,000 บาท',
  ];
     List<String> _showmanu3 = [
    'https://images.autofun.co.th/file1/2a90a5030932422991e1417ef5dff71f_1125x630.jpg',
    'https://images.autofun.co.th/file/02708506316449f6ba82e02d34481700.jpg',

  ];

List<String> _showText3 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'honda mobilio\nราคา 699,000 บาท',
    'honda br-v 1.5L\nราคา 765,000 บาท',
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