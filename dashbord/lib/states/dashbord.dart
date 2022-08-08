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
                          // SizedBox(height: 30),
                          // Row(
                          // children: [
                          // Container(
                          // child: PieChart(
                          // dataMap: dashboardpie,
                          // chartRadius:
                          // MediaQuery.of(context).size.width / 6.4,
                          // legendOptions: LegendOptions(
                          // legendPosition: LegendPosition.right,
                          // ),
                          // chartValuesOptions: ChartValuesOptions(
                          // showChartValues: true,
                          // ),
                          // ),
                          // ),
                          // ],
                          // ),
                          SizedBox(height: 20),
                          Text(
                            'History',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DashboardPie()));
                                },
                                child: Text(
                                  '2021',
                                  style: GoogleFonts.lato(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DashboardPie()));
                                },
                                child: Text(
                                  '2022',
                                  style: GoogleFonts.lato(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 100),
                          Text(
                            'Order Created',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 30,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 50),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(Icons.search),
                                  margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Search here',
                                    ),
                                  ),
                                ),
                              ],
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
                      SizedBox(height: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order Details',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 50,
                            ),
                          ),
                          Divider(thickness: 2),
                          SizedBox(height: 20),
                          Text(
                            'Shop name :',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Customer name : ',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Email address : ',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'เลขประจำตัวผู้เสียภาษี : ',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'หมายเลขโทรศัพท์: ',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Order number : ',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Appointment Date : ',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(thickness: 3),
                          SizedBox(height: 8),
                          Text(
                            'Address : ',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(thickness: 3),
                          SizedBox(height: 8),
                          Text(
                            'Detail of work : ',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(thickness: 3),
                          Text(
                            'Wanranty :  ',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(thickness: 3),
                          Text(
                            'Total Price : ',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(thickness: 3),
                          Text(
                            'Payment method : ',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(thickness: 3),
                        ],
                      ),
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
        height: 50,
        child: GridView.count(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          crossAxisCount: 5,
          children: [
            Card(
              color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text('Order number : xxxxxxx'),
              ),
            ),
          ],

          // child: ListView(
          // shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          // children: [
          // Card(
          // color: Colors.redAccent,
          // child: Padding(
          // padding: const EdgeInsets.all(23),
          // child: Text('Order number : xxxxxxx'),
          // ),
          // ),
          // ],
          // ),
        ));
  }
}
