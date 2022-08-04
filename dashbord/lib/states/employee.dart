import 'package:dashbord/states/dashbord.dart';
import 'package:dashbord/states/partner.dart';
import 'package:dashbord/states/payroll.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Employee extends StatefulWidget {
  const Employee({Key? key}) : super(key: key);

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            buildMenu(context),
            buildSettingAccount(),
            buildPersonalData(),
          ],
        ),
      ),
    );
  }
}

Expanded buildPersonalData() {
  return Expanded(
    flex: 12,
    child: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'ข้อมูลส่วนตัว',
              style: GoogleFonts.fredokaOne(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 90),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ชื่อ - สกุล :',
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'วัน เดือน ปี ที่เกิด :',
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'หมายเลขบัตรประจำตัวประชาชน:',
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'หมายเลขโทรศัพท์มือถือ :',
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'อีเมล์แอดเดรส :',
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'ตำแหน่ง :',
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'วันที่สิ้นสุดสัญญาจ้าง :',
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                Text(
                                  'สถานภาพ :',
                                  style: GoogleFonts.comicNeue(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 50),
                                Text(
                                  'เชื้อชาติ :',
                                  style: GoogleFonts.comicNeue(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 50),
                                Text(
                                  'สัญชาติ :',
                                  style: GoogleFonts.comicNeue(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 50),
                                Text(
                                  'ศาสนา :',
                                  style: GoogleFonts.comicNeue(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Text(
                              'ที่อยู่ปัจจุบัน :',
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'ประวัติการทำงาน / ผลงานที่ผ่านมา :',
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'เอกสารที่เกี่ยวข้อง :',
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'อัตราเงินเดือน (บาท) :',
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'คำนวณภาษีเงินได้ตามอัตราก้าวหน้าที่ต้องเสีย (ต่อปี) :',
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'จำนวณภาษีที่บริษัทหักนำส่งกรมสรรพกร (ต่อเดือน) :',
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Expanded buildSettingAccount() {
  return Expanded(
    flex: 5,
    child: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black12,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Employee',
              style: GoogleFonts.fredokaOne(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.only(right: 100),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Expanded buildMenu(BuildContext context) {
  return Expanded(
    flex: 2,
    child: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 100,
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 35,
                height: 35,
                child: Icon(
                  Icons.home,
                  color: Colors.orange,
                  size: 40,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
              child: Text(
                'Dashboard',
                style: GoogleFonts.lato(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text(
                'Employee',
                style: GoogleFonts.lato(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Partner(),
                    ));
              },
              child: Text(
                'Partner',
                style: GoogleFonts.lato(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PayRoll()));
              },
              child: Text(
                'Payroll',
                style: GoogleFonts.lato(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text(
                'SignOut',
                style: GoogleFonts.lato(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
