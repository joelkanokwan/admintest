import 'dart:js';

import 'package:dashbord/states/dashbord.dart';
import 'package:dashbord/states/employee.dart';
import 'package:dashbord/states/my_dialog.dart';
import 'package:dashbord/states/partner.dart';
import 'package:dashbord/states/payroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomerService extends StatefulWidget {
  const CustomerService({Key? key}) : super(key: key);

  @override
  State<CustomerService> createState() => _CustomerServiceState();
}

class _CustomerServiceState extends State<CustomerService> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            buildMenu(context),
            buildReportProblem(),
            // buildHistory(context),
            buildCheck(),
            
          ],
        ),
      ),
    );
  }

  Expanded buildCheck() {
    return Expanded(
      flex: 12,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello!',
                style: GoogleFonts.fredokaOne(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Kanokwan Yeo',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 50),
                  Text(
                    'ตำแหน่ง : CEO',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                'จำนวนงานที่จัดการไปแล้ว : (update realtime)',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Divider(thickness: 2),
              SizedBox(height: 20),
              Text(
                'Employees',
                style: GoogleFonts.fredokaOne(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Joel Yeo',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 50),
                  Text(
                    'ตำแหน่ง : แอดมินบริการลูกค้า',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 50),
                  Text(
                    'ช่วงเวลาทำงาน : XXX - XXX',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'เวลาเข้างาน : (เวลาที่ล๊อคอิน)',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 50),
                  Text(
                    'พักเบรค : XXX -XXX', // ถ้ากำลังอยู่ระหว่างพักเบรคให้โชว์คำว่า'อยู่ในช่วงพักเบรค'
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 50),
                  Text(
                    'เวลาเลิกงาน : XXX -XXX',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                'จำนวนงานที่จัดการไปแล้ว : (update realtime)',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'หมายเหตุ : (Time) Failure Logout / (Time) Login',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Divider(thickness: 2),
              SizedBox(height: 20),
              Text(
                'History',
                style: GoogleFonts.fredokaOne(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              buildCalendar(),
            ],
          ),
        ),
      ),
    );
  }

  TableCalendar<dynamic> buildCalendar() {
    return TableCalendar(
      focusedDay: selectedDay,
      firstDay: DateTime(2022),
      lastDay: DateTime(2032),
      onFormatChanged: (CalendarFormat _format) {
        setState(() {
          format = _format;
        });
      },
      calendarFormat: format,
      startingDayOfWeek: StartingDayOfWeek.monday,
      daysOfWeekVisible: true,
      onDaySelected: (DateTime selectDay, DateTime focusDay) {
        setState(() {
          selectedDay = selectDay;
          focusedDay = focusDay;
        });
        print(focusedDay);
      },
      selectedDayPredicate: (DateTime date) {
        return isSameDay(selectedDay, date);
      },
      headerStyle: HeaderStyle(
        leftChevronIcon: const Icon(
          Icons.chevron_left,
          size: 24,
          color: Colors.black54,
        ),
        rightChevronIcon: const Icon(
          Icons.chevron_right,
          size: 24,
          color: Colors.black54,
        ),
        formatButtonVisible: true,
        formatButtonShowsNext: false,
        formatButtonDecoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5),
        ),
        formatButtonTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 87, 80, 80),
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
        // titleCentered: true,
      ),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: true,
        selectedDecoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5.0),
        ),
        selectedTextStyle: TextStyle(color: Colors.white),
        todayDecoration: BoxDecoration(
          color: Colors.purpleAccent,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5.0),
        ),
        defaultDecoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}

Expanded buildHistory(BuildContext context) {
  return Expanded(
    flex: 12,
    child: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello!',
              style: GoogleFonts.fredokaOne(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Joel Yeo',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 50),
                Text(
                  'ตำแหน่ง : แอดมินบริการลูกค้า',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 50),
                Text(
                  'ช่วงเวลาทำงาน : XXX - XXX',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  'เวลาเข้างาน : (เวลาที่ล๊อคอิน)',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 50),
                Text(
                  'พักเบรค : XXX -XXX',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // TextButton(
                // onPressed: () {
                // MyDialog().normalDialog(
                // context, 'LogOut', 'ยืนยันที่จะออกจากระบบ ?');
                // },
                // child: Text(
                // 'พักเบรค :',
                // style: GoogleFonts.lato(
                // fontSize: 18,
                // fontWeight: FontWeight.bold,
                // ),
                // ),
                // ),
                SizedBox(width: 50),
                Text(
                  'เวลาเลิกงาน : XXX -XXX',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // TextButton(
                // onPressed: () {
                // MyDialog().normalDialog(
                // context, 'LogOut', 'ยืนยันที่จะออกจากระบบ ?');
                // },
                // child: Text(
                // 'ออกจากระบบ',
                // style: GoogleFonts.lato(
                // fontSize: 18,
                // fontWeight: FontWeight.bold,
                // ),
                // ),
                // ),
              ],
            ),
            SizedBox(height: 5),
            Row(children: [
              Text(
                'จำนวนงานทั้งหมด : (XXX)',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 50),
              Text(
                'จำนวนงานที่จัดการได้ : (XXX)',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
            SizedBox(width: 5),
            Text(
              'หมายเหตุ : (Time) Failure Logout / (Time) Login',
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Divider(thickness: 2)
          ],
        ),
      ),
    ),
  );
}

Expanded buildReportProblem() {
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
              'Customer report problem',
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Employee(),
                    ));
              },
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
