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
  Map<String, double> revenuepie = {
    'Profit / lose': 1000000,
    'Vat': 70000,
    'Withholding Tax': 500000,
    'Expense': 200000,
    'Allowance': 5000000,
  };

  Map<String, double> topprovincepie = {
    'Bangkok': 10000,
    'ChiangMai': 6500,
    'Chonburi': 12000,
    'Khonkan': 2000,
    'Phuket': 20000,
  };

  Map<String, double> topservicepie = {
    'Aircondition': 5000,
    'Cleaning': 9000,
    'Make up': 4000,
    'Steel': 1000,
    'Electricity': 5000,
  };

  List<String> kindofincomes = [
    'kind 1',
    'kind 2',
    'kind 3',
    'kind 4',
    'kind 5',
    'kind 6',
    'kind 7',
    'kind 8',
  ];
  int _value = 0;
  int _vat = 0;
  int _choose = 0;
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
                              // buildtransaction(),
                              buildreport(),
                              // SizedBox(height: 50),
                              // Container(
                                // height: 200,
                                // child: DashBoardBarChart(),
                              // ),
                              SizedBox(height: 50),
                              buildDetail(),
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
                          Divider(thickness: 1),
                          Text(
                            'Service Provider :',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(thickness: 1),
                          Text(
                            'Tax ID :',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(thickness: 1),
                          Text(
                            'Email Address :',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(thickness: 1),
                          Text(
                            'Amount :',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(thickness: 1),
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

                      Row(
                        children: [
                          DropdownButton<String>(
                            hint: Text('Please choose kind of incomes'),
                            items: kindofincomes
                                .map((e) => DropdownMenuItem(
                                      child: Text(e),
                                      value: e,
                                    ))
                                .toList(),
                            onChanged: (value) {},
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Radio(
                            activeColor: Colors.black,
                            value: 1,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = 1;
                              });
                            },
                          ),
                          Text(
                            'Personel',
                          ),
                          SizedBox(width: 10),
                          Radio(
                            activeColor: Colors.black,
                            value: 2,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = 2;
                              });
                            },
                          ),
                          Text(
                            'Corporation',
                          ),
                          SizedBox(width: 10),
                          Radio(
                            activeColor: Colors.black,
                            value: 3,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = 3;
                              });
                            },
                          ),
                          Text(
                            'Other',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            activeColor: Colors.black,
                            value: 1,
                            groupValue: _vat,
                            onChanged: (value) {
                              setState(() {
                                _vat = 1;
                              });
                            },
                          ),
                          Text(
                            'Vat 7 %',
                          ),
                          SizedBox(width: 10),
                          Radio(
                            activeColor: Colors.black,
                            value: 2,
                            groupValue: _vat,
                            onChanged: (value) {
                              setState(() {
                                _vat = 2;
                              });
                            },
                          ),
                          Text(
                            'No Vat',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            activeColor: Colors.black,
                            value: 1,
                            groupValue: _choose,
                            onChanged: (value) {
                              setState(() {
                                _choose = 1;
                              });
                            },
                          ),
                          Text(
                            'included Vat',
                          ),
                          SizedBox(width: 10),
                          Radio(
                            activeColor: Colors.black,
                            value: 2,
                            groupValue: _choose,
                            onChanged: (value) {
                              setState(() {
                                _choose = 2;
                              });
                            },
                          ),
                          Text(
                            'Not included Vat',
                          ),
                        ],
                      ),
                      Divider(thickness: 1),

                      Row(
                        children: [
                          Text(
                            'Price before Vat :',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 1),

                      Row(
                        children: [
                          Text(
                            'Vat 7 % :',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 1),

                      Row(
                        children: [
                          Text(
                            'Withholding Tax :',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 1),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Save'),
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Text(
                            'Expense list (1)',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 2),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Sofeware service',
                            style: GoogleFonts.lato(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            'Amount : 20000 Bath',
                            style: GoogleFonts.lato(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            'Service Provider : Dog company',
                            style: GoogleFonts.lato(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            '(Document upload)',
                            style: GoogleFonts.lato(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 1)
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

  Container buildDetail() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Revenue : 5000000 Baht',
                style: GoogleFonts.fredokaOne(
                  fontSize: 18,
                ),
              ),
              Text(
                'Total Successfully Order',
                style: GoogleFonts.fredokaOne(
                  fontSize: 18,
                ),
              ),
              Text(
                'Total Successfully Services',
                style: GoogleFonts.fredokaOne(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Profit : 1000000 Baht',
                style: GoogleFonts.fredokaOne(
                  fontSize: 18,
                  color: Colors.green,
                ),
              ),
              Text(
                'Bangkok :',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
              Text(
                'Aircondition : ',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Vat :',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
              Text(
                'ChiangMai :',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
              Text(
                'Cleaning :',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Withholding :',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
              Text(
                'Chonburi :',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
              Text(
                'Make up :',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Expenses :',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
              Text(
                'Khonkan :',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
              Text(
                'Steel :',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Allowance :',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
              Text(
                'Phuket :',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
              Text(
                'Electricity :',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildreport() {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Monthly Turnover Report : (January 2022)',
                style: GoogleFonts.fredokaOne(
                  fontSize: 25,
                ),
              ),
              // Text(
                // 'Yearly Turnover Report : (2022)',
                // style: GoogleFonts.fredokaOne(
                  // fontSize: 25,
                // ),
              // ),
              SizedBox(height: 100),
              Row(
                children: [
                  PieChart(
                    dataMap: revenuepie,
                    chartRadius: MediaQuery.of(context).size.width / 7,
                    legendOptions:
                        LegendOptions(legendPosition: LegendPosition.bottom),
                    chartValuesOptions: ChartValuesOptions(
                      showChartValues: true,
                      showChartValuesInPercentage: true,
                      showChartValuesOutside: true,
                    ),
                  ),
                  SizedBox(width: 100),
                  PieChart(
                    dataMap: topprovincepie,
                    chartRadius: MediaQuery.of(context).size.width / 7,
                    legendOptions:
                        LegendOptions(legendPosition: LegendPosition.bottom),
                    chartValuesOptions: ChartValuesOptions(
                      showChartValues: true,
                      showChartValuesInPercentage: true,
                      showChartValuesOutside: true,
                    ),
                  ),
                  SizedBox(width: 100),
                  PieChart(
                    dataMap: topservicepie,
                    chartRadius: MediaQuery.of(context).size.width / 7,
                    legendOptions:
                        LegendOptions(legendPosition: LegendPosition.bottom),
                    chartValuesOptions: ChartValuesOptions(
                      showChartValues: true,
                      showChartValuesInPercentage: true,
                      showChartValuesOutside: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
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
