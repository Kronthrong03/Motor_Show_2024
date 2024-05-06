// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motor_show_2024_app/views/ShowModelcar_UI.dart';

class Introduction_UI extends StatefulWidget {
  const Introduction_UI({super.key});

  @override
  State<Introduction_UI> createState() => _Introduction_UIState();
}

class _Introduction_UIState extends State<Introduction_UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            image: Image.network(
              'https://www.toyota.co.th/media/product/series/v/402/model/798d3263ac30c6c04da396ec92f645ef5f63be21e495388710a9eb1f8a8bc7df.webp',
              width: MediaQuery.of(context).size.width * 1,
            ),
            titleWidget: Column(
              children: [
                Text(
                  'TOYOTA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Text(
                  'Yaris ATIV',
                  style: TextStyle(                  
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
              ],
            ),
            bodyWidget: Text(
              'ที่ออกแบบมาเพื่อตอบสนองความต้องการของกลุ่มผู้ใช้ที่ต้องการรถเล็กขนาดกะทัดรัดแต่มีความสะดวกสบายในการใช้งานทั่วไปและเดินทางในเมือง รถยานยนต์นี้มีดีไซน์ที่สดใสและสมาร์ท พร้อมกับความสะดวกสบายในการขับขี่ นอกจากนี้ยังมีเทคโนโลยีที่ช่วยเพิ่มประสิทธิภาพในการใช้งานและความปลอดภัย เช่น ระบบเตือนการชนหน้า, ระบบเตือนการลัดทาง, และการเชื่อมต่อมือถือผ่านทาง Apple CarPlay และ Android Auto เพื่อความสะดวกในการใช้งานมัลติมีเดียและการนำทางออนไลน์. ด้วยคุณสมบัติที่ครบครันและความคุ้มค่า Yaris ATIV เป็นตัวเลือกที่น่าสนใจสำหรับผู้ที่ต้องการรถเล็กในการใช้งานประจำวันในเมือง',
              textAlign: TextAlign.center,
            ),
          ),
          PageViewModel(
            image: Image.asset('assets/images/Mitsu.png'),
            titleWidget: Column(
              children: [
                Text(
                  'MITSUBISHI',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Text(
                  'ดับเบิ้ล แค็บ แอทลีท AT',
                  style: TextStyle(                  
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
              ],
            ),
            bodyWidget: Text(
              ' เป็นรุ่นยอดนิยมของรถกระบะจาก Mitsubishi ที่มีการออกแบบใหม่ล่าสุดและมีความสปอร์ตและหรูหรามากขึ้น มีคุณสมบัติเสริมเช่น เครื่องยนต์ที่ทรงพลัง, ดีไซน์ภายนอกที่โดดเด่น, และเทคโนโลยีใหม่ๆ ที่ช่วยเพิ่มประสิทธิภาพการขับขี่และความปลอดภัย. ถ้าคุณกำลังมองหารถกระบะที่สมบูรณ์แบบสำหรับการใช้งานทั่วไปและการผจญภัยในสภาพถนนที่หลากหลาย',
              textAlign: TextAlign.center,
            ),
          ),
          PageViewModel(
            image: Image.network(
              'https://www.honda.co.th/uploads/car_models/colors/1711354219_447.png',
              width: MediaQuery.of(context).size.width * 1,
            ),
            titleWidget: Column(
              children: [
                Text(
                  'HONDA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Text(
                  'Honda Accord',
                  style: TextStyle(                  
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
              ],
            ),
            bodyWidget: Text(
              'Honda Accord เป็นรถ Sedan ขนาดกลางที่มีความนิยมอย่างแพร่หลายทั่วโลก มีลักษณะดีไซน์ที่สวยงามและสปอร์ต มาพร้อมกับเทคโนโลยีใหม่ๆ ที่ทันสมัย เช่น ระบบนำทาง GPS, ระบบเสียงรอบทิศทาง, และคุณสมบัติความปลอดภัยที่ทันสมัย เครื่องยนต์มีประสิทธิภาพสูงและประหยัดเชื้อเพลิง การขับขี่สบาย โดยมีสไตล์และความสวยงามที่เป็นเอกลักษณ์ของ Accord ที่แตกต่างออกไปจากรถ Sedan รุ่นอื่นๆ ที่มีอยู่บนทางตลาด',
              textAlign: TextAlign.center,
            ),
          ),
          PageViewModel(
            image: Image.asset('assets/images/Mazda.jpg'),
            titleWidget: Column(
              children: [
                Text(
                  'MAZDA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Text(
                  'CARBON EDITION',
                  style: TextStyle(                  
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
              ],
            ),
            bodyWidget: Text(
              ' เป็นรุ่นพิเศษที่ปรับแต่งมาจากบางรุ่นของ Mazda เพื่อเน้นความสปอร์ตและดีไซน์ที่โดดเด่น โดยมีการใช้วัสดุคาร์บอนไฟเบอร์ในบางส่วนของรถ เพื่อเพิ่มความหรูหราและการดึงดูดสายตา รุ่น Carbon Edition มักมีการปรับแต่งในด้านดีไซน์ภายนอกและภายใน เช่น ล้อและหุ่นยนต์ที่ออกแบบมาเป็นพิเศษ เครื่องยนต์อาจมีการปรับแต่งเพิ่มเติมเพื่อเพิ่มประสิทธิภาพหรือความสปอร์ต รวมถึงคุณสมบัติที่ดูแล้วเป็นเอกลักษณ์ของรุ่น Carbon Edition นั่นเอง โดยรุ่นนี้มักมีจำหน่ายในจำนวนจำกัดและมีความนิยมอย่างมากระหว่างชาวแฟนรถ Mazda',
              textAlign: TextAlign.center,
            ),
          ),
       
        ],
        done: Text(
          'หน้าหลัก',
          style: TextStyle(color: Color.fromARGB(255, 53, 85, 52)),
        ),
        onDone: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ShowModelcar_UI(),
          ),
        ),
        next: Icon(
          Icons.arrow_right_alt,
          color: Color.fromARGB(255, 53, 85, 52),
        ),
        nextFlex: 0,
        showSkipButton: true,
        skip: Text(
          'skip',
          style: TextStyle(
            color: Color.fromARGB(255, 53, 85, 52),
          ),
        ),
        dotsDecorator: DotsDecorator(
          color: Color.fromARGB(255, 53, 85, 52),
          activeColor: Color.fromARGB(255, 68, 138, 77),
          activeSize: Size(
            MediaQuery.of(context).size.width * 0.055,
            MediaQuery.of(context).size.width * 0.025,
          ),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
        ),
        infiniteAutoScroll: true,
        autoScrollDuration: 2000,
      ),
    );
  }
}