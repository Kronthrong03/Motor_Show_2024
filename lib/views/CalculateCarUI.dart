import 'package:flutter/material.dart';

class CalculateUI extends StatefulWidget {
  const CalculateUI({super.key});

  @override
  State<CalculateUI> createState() => _CalculateUIState();
}

class _CalculateUIState extends State<CalculateUI> {
  List<String> _period = [
    '12 งวด(1ปี)',
    '24 งวด(2ปี)',
    '30 งวด(3ปี)',
    '48 งวด(4ปี)',
    '60 งวด(5ปี)',
    '72 งวด(6ปี)',
  ];
 
  String _periodSelected = '12 งวด(1ปี)';
 
  int downpayment = 10;
 
  bool valuecarStatus = false;
  bool percentStatus = false;
 
  TextEditingController valuecar = TextEditingController(text: '0');
  TextEditingController percent = TextEditingController(text: '0');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Image.asset(
                  'assets/images/LogoCalculate.jpg',
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ราคารถ(บาท)',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Container(
                  height: 40.0,
                  child: TextField(
                    controller: valuecar,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'เงินดาวน์(%)',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Radio(
                      value: 10,
                      groupValue: downpayment,
                      onChanged: (paramValue) {
                        setState(() {
                          downpayment = paramValue!;
                        });
                      },
                    ),
                    Text('10%'),
                    Radio(
                      value: 20,
                      groupValue: downpayment,
                      onChanged: (paramValue) {
                        setState(() {
                          downpayment = paramValue!;
                        });
                      },
                    ),
                    Text('20%'),
                    Radio(
                      value: 25,
                      groupValue: downpayment,
                      onChanged: (paramValue) {
                        setState(() {
                          downpayment = paramValue!;
                        });
                      },
                    ),
                    Text('25%'),
                    Radio(
                      value: 30,
                      groupValue: downpayment,
                      onChanged: (paramValue) {
                        setState(() {
                          downpayment = paramValue!;
                        });
                      },
                    ),
                    Text('30%'),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'จำนวนปีที่ผ่อน',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
                DropdownButton(
                  items: _period
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                e,
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (paramValue) {
                    setState(() {
                      _periodSelected = paramValue!;
                    });
                  },
                  value: _periodSelected,
                  isExpanded: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ดอกเบี้ย(%)ต่อปี',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  height: 40.0,
                  child: TextField(
                    controller: percent,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                ElevatedButton(
                  onPressed: () {
                    // ตรวจสอบค่าที่ป้อนใน TextField ว่าเป็น 0 หรือไม่
                    if (valuecar.text == '0') {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('กรุณาป้อนราคารถ(บาท)'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('ตกลง'),
                              ),
                            ],
                          );
                        },
                      );
                    } else if (percent.text == '0') {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('กรุณาป้อนดอกเบี้ยต่อปี(%)'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('ตกลง'),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      // ดำเนินการคำนวณต่อเมื่อค่าที่ป้อนไม่ใช่ 0
 
                      double downmoney =
                          (double.parse(valuecar.text) * downpayment) / 100;
                      double salecar =
                          (double.parse(valuecar.text) - downmoney);
                      double Interestamount =
                          (salecar * (double.parse(percent.text))) / 100;
                      double totalperiod = 0;
                      double Monthlyinstallmentamount = 0;
                      if (_periodSelected == "12 งวด(1ปี)") {
                        totalperiod = Interestamount * 1;
                        Monthlyinstallmentamount =
                            (salecar + totalperiod) / (1 * 12);
                      } else if (_periodSelected == "24 งวด(2ปี)") {
                        totalperiod = Interestamount * 2;
                        Monthlyinstallmentamount =
                            (salecar + totalperiod) / (2 * 12);
                      } else if (_periodSelected == "36 งวด(3ปี)") {
                        totalperiod = Interestamount * 3;
                        Monthlyinstallmentamount =
                            (salecar + totalperiod) / (3 * 12);
                      } else if (_periodSelected == "48 งวด(4ปี)") {
                        totalperiod = Interestamount * 4;
                        Monthlyinstallmentamount =
                            (salecar + totalperiod) / (4 * 12);
                      } else if (_periodSelected == "60 งวด(5ปี)") {
                        totalperiod = Interestamount * 5;
                        Monthlyinstallmentamount =
                            (salecar + totalperiod) / (5 * 12);
                      } else if (_periodSelected == "72 งวด(6ปี)") {
                        totalperiod = Interestamount * 6;
                        Monthlyinstallmentamount =
                            (salecar + totalperiod) / (6 * 12);
                      }
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('ยอดผ่อนรถต่อเดือน'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'ราคารถ ' +
                                        valuecar.text +
                                        ' บาท \ดาวน์ ' +
                                        downpayment.toStringAsFixed(0) +
                                        '%' +
                                        ' เป็นเงิน ' +
                                        salecar.toStringAsFixed(0) +
                                        ' บาท ' +
                                        'จำนวนเดือนผ่อน ' +
                                        _periodSelected +
                                        ' ค่าผ่อนต่อเดือนเป็นเงิน ' +
                                        Monthlyinstallmentamount
                                            .toStringAsFixed(0) +
                                        ' บาท',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text(
                    'คำนวณค่ารถ',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 236, 234, 234),
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.024,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 219, 4, 4),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.7,
                      MediaQuery.of(context).size.height * 0.06,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}