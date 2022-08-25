import 'dart:html';

import 'package:dashbord/pie/dashborad_pie.dart';

import 'package:dashbord/chart/dashbord_barchart.dart';
import 'package:dashbord/states/customer_service.dart';
import 'package:dashbord/states/employee.dart';
import 'package:dashbord/states/partner.dart';
import 'package:dashbord/states/payroll.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:table_calendar/table_calendar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Map<String, double> dashboardpie = {
    'ChiangMai': 100000,
    'Chonburi': 50000,
    'Bangkok': 3000,
  };

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
            Expanded(
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
                        onPressed: () {},
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Employee()));
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
                                  builder: (context) => Partner()));
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PayRoll()));
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
            ),
            Expanded(
              flex: 15,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black12,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dashboard',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 40,
                            ),
                          ),
                          Text(
                            'Payment Updated',
                            style: GoogleFonts.lato(
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            child: GridView.count(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 4,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 80),
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          'Input Tax / ภาษีซื้อ',
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          'xxx',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 80),
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          'Output Tax / ภาษีขาย',
                                        ),
                                        const SizedBox(height: 20),
                                        const Text(
                                          'xxx',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 80),
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'ภาษีเงินได้หัก ณ ที่จ่าย',
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          'xxx',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 80),
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'ภาษีเงินได้ที่ถูกหัก ณ ที่จ่าย',
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          'xxx',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: GridView.count(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 3,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 120),
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Total Revenue',
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          'xxx',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 120),
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Total Cost',
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          'xxx',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 120),
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Net Profit',
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          'xxx',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Net Profit',
                                    style: GoogleFonts.fredokaOne(
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text(
                                    'Current year',
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Container(
                            height: 200,
                            child: DashBoardBarChart(),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'History',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 20),
                          Column(
                            children: [
                              buildCalendar(),
                              SizedBox(height: 30),
                              buildtransaction(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black26,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 250),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search_rounded),
                        ),
                      ),

                      // Padding(
                      // padding: const EdgeInsets.only(left: 250),
                      // child: IconButton(
                      // onPressed: () {},
                      // icon: Icon(Icons.close),
                      // ),
                      // ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Adding Expense',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 40,
                            ),
                          ),
                          Divider(thickness: 2),
                          SizedBox(height: 10),
                          Text(
                            'Topic :',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Service provider :',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Tax ID :',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Email Address :',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      // Container(
                      // margin: const EdgeInsets.only(right: 100),
                      // child: TextFormField(
                      // onChanged: (value) {},
                      // decoration: InputDecoration(
                      // prefixIcon: Icon(Icons.search),
                      // border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(30),
                      // ),
                      // ),
                      // ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
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

  Container buildtransaction() {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Order Details :',
                style: GoogleFonts.fredokaOne(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Text(
                  'Shop name :',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Text(
                  'Customer name :',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Row(
                  children: [
                    Text(
                      'Email Address:',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 400),
                    Text(
                      'Tax ID:',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Row(
                  children: [
                    Text(
                      'Phone number :',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 300),
                    Text(
                      'Order number :',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Text(
                  'Appointment date :',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Text(
                  'Address :',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Text(
                  'Detail of work:',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Text(
                  'Warranty :',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Row(
                  children: [
                    Text(
                      'Total Price :',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 300),
                    Text(
                      'Payment method :',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Text(
                  'Appointment history :',
                  style: GoogleFonts.fredokaOne(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        'Request name',
                        style: GoogleFonts.fredokaOne(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Old Appointment ',
                        style: GoogleFonts.fredokaOne(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'New Appointment',
                        style: GoogleFonts.fredokaOne(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Status',
                        style: GoogleFonts.fredokaOne(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            'A dog',
                          ),
                        ),
                        DataCell(
                          Text(
                            'xxx',
                          ),
                        ),
                        DataCell(
                          Text(
                            'xxx',
                          ),
                        ),
                        DataCell(
                          Text(
                            'Waiting / Approve',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Text(
                  'Processing :',
                  style: GoogleFonts.fredokaOne(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        'Working hours',
                        style: GoogleFonts.fredokaOne(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Detail of work',
                        style: GoogleFonts.fredokaOne(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'percentage of work (%)',
                        style: GoogleFonts.fredokaOne(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Status',
                        style: GoogleFonts.fredokaOne(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            'xx - xx',
                          ),
                        ),
                        DataCell(
                          Text(
                            'xxxxx',
                          ),
                        ),
                        DataCell(
                          Text(
                            'xx %',
                          ),
                        ),
                        DataCell(
                          Text(
                            'Waiting / Approve',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Text(
                  'Ref. file :',
                  style: GoogleFonts.fredokaOne(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
