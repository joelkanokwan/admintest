import 'dart:html';

import 'package:dashbord/pie/dashborad_pie.dart';

import 'package:dashbord/chart/dashbord_barchart.dart';

import 'package:dashbord/states/setting_acc.dart';
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

  late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  // TextEditingController _eventController = TextEditingController();

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  // @override
  // void dispose() {
  // _eventController.dispose();
  // super.dispose();
  // }

  // DateTime? date;

  // String getDate() {
  // if (date == null) {
  // return 'Appointment Date';
  // } else {
  // return '${date!.day}/${date!.month}/${date!.year}';
  // }
  // }

  // Future pickDate(BuildContext context) async {
  // final initialDate = DateTime.now();
  // final newDate = await showDatePicker(
  // context: context,
  // initialDate: initialDate,
  // firstDate: DateTime.now(),
  // lastDate: DateTime(2022),
  // );
  // if (newDate == null) return;

  // setState(() => date = newDate);
  // }

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
                      // SizedBox(height: 20),
                      // TextButton(
                      // onPressed: () {
                      // Navigator.push(
                      // context,
                      // MaterialPageRoute(
                      // builder: (context) => ManageOrder()));
                      // },
                      // child: Text(
                      // 'Manage Order',
                      // style: GoogleFonts.lato(
                      // fontSize: 15,
                      // color: Colors.black,
                      // fontWeight: FontWeight.bold,
                      // ),
                      // ),
                      // ),
                      SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingAccount()));
                        },
                        child: Text(
                          'Setting Account',
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
                              crossAxisCount: 5,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 50),
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
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
                                      horizontal: 10, vertical: 50),
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          'Vat 7%',
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
                                      horizontal: 10, vertical: 50),
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          'Service Tax 3%',
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
                                      horizontal: 10, vertical: 50),
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Allowance',
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
                                      horizontal: 10, vertical: 50),
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
                                      hintText: 'Order Number',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          GridView.count(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            crossAxisCount: 1,
                            children: [
                              TableCalendar(
                                focusedDay: selectedDay,
                                firstDay: DateTime(1990),
                                lastDay: DateTime(2050),
                                calendarFormat: format,
                                onFormatChanged: (CalendarFormat _format) {
                                  setState(() {
                                    format = _format;
                                  });
                                },
                                startingDayOfWeek: StartingDayOfWeek.sunday,
                                daysOfWeekVisible: true,
                                //Day Changed
                                onDaySelected:
                                    (DateTime selectDay, DateTime focusDay) {
                                  setState(() {
                                    selectedDay = selectDay;
                                    focusedDay = focusDay;
                                  });
                                  print(focusedDay);
                                },
                                selectedDayPredicate: (DateTime date) {
                                  return isSameDay(selectedDay, date);
                                },
                                eventLoader: _getEventsfromDay,
                                //To style the Calendar
                                calendarStyle: CalendarStyle(
                                  isTodayHighlighted: true,
                                  selectedDecoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  selectedTextStyle:
                                      TextStyle(color: Colors.white),
                                  todayDecoration: BoxDecoration(
                                    color: Colors.purpleAccent,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  defaultDecoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  weekendDecoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                headerStyle: HeaderStyle(
                                  formatButtonVisible: true,
                                  titleCentered: true,
                                  formatButtonShowsNext: false,
                                  formatButtonDecoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  formatButtonTextStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
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
}
