import 'dart:typed_data';

import 'package:dashbord/states/dashbord.dart';
import 'package:dashbord/states/my_dialog.dart';
import 'package:dashbord/states/payslip.dart';
import 'package:dashbord/states/receipt_invoice.dart';
import 'package:dashbord/states/setting_acc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PayRoll extends StatefulWidget {
  const PayRoll({Key? key}) : super(key: key);

  @override
  State<PayRoll> createState() => _PayRollState();
}

class _PayRollState extends State<PayRoll> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard()));
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
              flex: 22,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black12,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Payroll',
                          style: GoogleFonts.fredokaOne(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Waiting upload',
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Text(
                              'DD/MM/YY',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 2),
                            Text('(2)'),
                            SizedBox(width: 18),
                            ElevatedButton(
                              onPressed: () {
                                MyDialog().normalDialog(
                                    context,
                                    'Confirm Sent Pay Slip?',
                                    'หลังจากส่งเรียนบร้อยแล้วระบบจะทำการย้ายข้อมูลดังกล่าวไปยัง Payment History');
                              },
                              child: Text('Sent Pay Slip'),
                            ),
                            SizedBox(width: 18),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PaySip(),
                                    ));
                              },
                              child: Text('Show Paysip PDF'),
                            ),
                            SizedBox(width: 18),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ReceiptAndInvoice(),
                                    ));
                              },
                              child: Text('Show ReceiptAndInvoice PDF'),
                            ),
                          ],
                        ),
                      ),
                      DataTable(
                        columns: [
                          DataColumn(
                            label: Text(
                              'Acc. Number',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Recipient Name',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Amount',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Email Address',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Tax Id',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'withhokdingTax',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Vat',
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
                                Text('1010101010'),
                              ),
                              DataCell(
                                Text('Kanokwan Yeo'),
                              ),
                              DataCell(
                                Text('8000'),
                              ),
                              DataCell(
                                Text('jo@gmail.com'),
                              ),
                              DataCell(
                                Text('1234567890'),
                              ),
                              DataCell(
                                Text('247.42'),
                              ),
                              DataCell(
                                Text('0'),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(
                                Text('2020202020'),
                              ),
                              DataCell(
                                Text('Joel Yeo'),
                              ),
                              DataCell(
                                Text('8000'),
                              ),
                              DataCell(
                                Text('jo@gmail.com'),
                              ),
                              DataCell(
                                Text('123456789'),
                              ),
                              DataCell(
                                Text('274.42'),
                              ),
                              DataCell(
                                Text('560'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 100),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Payment History',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      buildCalendar(),
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
