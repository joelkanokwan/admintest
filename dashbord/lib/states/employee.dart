import 'package:dashbord/states/customer_service.dart';
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
            buildPersonalData(),
          ],
        ),
      ),
    );
  }
}

Expanded buildPersonalData() {
  return Expanded(
    flex: 17,
    child: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black12,
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
                              'โบนัส (บาท) :',
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'เงินปันผล (บาท) :',
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
            Container(
              child: GridView.count(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                crossAxisCount: 3,
                children: [
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.all(20),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'ประมาณรายได้ทั้งปี',
                          ),
                          SizedBox(height: 20),
                          Text(
                            'xxx',
                          ),
                          SizedBox(height: 20),
                          Text(
                            '(xxxx * xxxx) + xxxx',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.all(20),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'ค่าใช้จ่าย',
                          ),
                          SizedBox(height: 20),
                          Text(
                            'xxx',
                          ),
                          SizedBox(height: 20),
                          Text(
                            '50% ของรายได้',
                          ),
                          Text(
                            'แต่ไม่เกิน 100000 บาท',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.all(20),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 90),
                                child: Text(
                                  'ค่าลดหย่อน',
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add_sharp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            'xxx',
                          ),
                          SizedBox(height: 20),
                          Text(
                            'ค่าลดหย่อนส่วนตัว : xxx',
                          ),
                          Text(
                            'ประกันสังคม : xxx',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Table(
              border: TableBorder.all(),
              children: [
                buildRow([
                  'ช่วงรายได้',
                  'อัตราภาษี',
                  'เงินได้สุทธิ',
                  'จำนวนภาษีที่ต้องจ่าย'
                ], isHeader: true),
                buildRow([
                  '0 - 150000',
                  'ได้รับการยกเว้น',
                  '',
                  '',
                ]),
                buildRow([
                  '150001 - 300000',
                  '5%',
                  '',
                  '',
                ]),
                buildRow([
                  '300001 - 500000',
                  '10%',
                  '',
                  '',
                ]),
                buildRow([
                  '500001 - 750000',
                  '15%',
                  '',
                  '',
                ]),
                buildRow([
                  '750001 - 1000000',
                  '20%',
                  '',
                  '',
                ]),
                buildRow([
                  '10000001 - 2000000',
                  '25%',
                  '',
                  '',
                ]),
                buildRow([
                  '2000001 - 5000000',
                  '30%',
                  '',
                  '',
                ]),
                buildRow([
                  '5000001 เป็นต้นไป',
                  '35%',
                  '',
                  '',
                ]),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Text(
                                'ประวัติการแก้ไข',
                                style: GoogleFonts.comicNeue(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
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

TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
      children: cells.map((cell) {
        final style = TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        );
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Center(child: Text(cell, style: style)),
        );
      }).toList(),
    );

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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerService(),
                    ));
              },
              child: Text(
                'Customer Service',
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
