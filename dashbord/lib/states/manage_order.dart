// import 'dart:html';

// import 'package:dashbord/states/dashbord.dart';
// import 'package:dashbord/states/setting_acc.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:table_calendar/table_calendar.dart';

// class ManageOrder extends StatefulWidget {
//   const ManageOrder({Key? key}) : super(key: key);

//   @override
//   _ManageOrderState createState() => _ManageOrderState();
// }

// class _ManageOrderState extends State<ManageOrder> {
//   late Map<DateTime, List<Event>> selectedEvents;
//   CalendarFormat format = CalendarFormat.month;
//   DateTime selectedDay = DateTime.now();
//   DateTime focusedDay = DateTime.now();

//   @override
//   void initState() {
//     selectedEvents = {};
//     super.initState();
//   }

//   List<Event> _getEventsfromDay(DateTime date) {
//     return selectedEvents[date] ?? [];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Row(
//           children: [
//             Expanded(
//               flex: 2,
//               child: Container(
//                 width: double.infinity,
//                 height: double.infinity,
//                 color: Colors.white,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Container(
//                         height: 100,
//                         alignment: Alignment.topCenter,
//                         padding: EdgeInsets.only(top: 20),
//                         child: SizedBox(
//                           width: 35,
//                           height: 35,
//                           child: Icon(
//                             Icons.home,
//                             color: Colors.orange,
//                             size: 40,
//                           ),
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => Dashboard()));
//                         },
//                         child: Text(
//                           'Dashboard',
//                           style: GoogleFonts.lato(
//                             fontSize: 15,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       TextButton(
//                         onPressed: () {},
//                         child: Text(
//                           'Manage Order',
//                           style: GoogleFonts.lato(
//                             fontSize: 15,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => SettingAccount()));
//                         },
//                         child: Text(
//                           'Setting Account',
//                           style: GoogleFonts.lato(
//                             fontSize: 15,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       TextButton(
//                         onPressed: () {},
//                         child: Text(
//                           'SignOut',
//                           style: GoogleFonts.lato(
//                             fontSize: 15,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 10,
//               child: Container(
//                 width: double.infinity,
//                 height: double.infinity,
//                 color: Colors.black12,
//                 child: SingleChildScrollView(
//                   padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Appointment Order',
//                             style: GoogleFonts.fredokaOne(
//                               fontSize: 40,
//                             ),
//                           ),
//                           SizedBox(height: 5),
//                           Container(
//                             margin: EdgeInsets.only(right: 400),
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                             child: Row(
//                               children: [
//                                 Container(
//                                   child: Icon(Icons.search),
//                                   margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
//                                 ),
//                                 const Expanded(
//                                   child: TextField(
//                                     decoration: InputDecoration(
//                                       border: InputBorder.none,
//                                       hintText: 'Order Number',
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 20),
//                           GridView.count(
//                             shrinkWrap: true,
//                             physics: NeverScrollableScrollPhysics(),
//                             crossAxisCount: 1,
//                             children: [
//                               TableCalendar(
//                                 focusedDay: selectedDay,
//                                 firstDay: DateTime(1990),
//                                 lastDay: DateTime(2050),
//                                 calendarFormat: format,
//                                 onFormatChanged: (CalendarFormat _format) {
//                                   setState(() {
//                                     format = _format;
//                                   });
//                                 },
//                                 startingDayOfWeek: StartingDayOfWeek.sunday,
//                                 daysOfWeekVisible: true,
//                                 //Day Changed
//                                 onDaySelected:
//                                     (DateTime selectDay, DateTime focusDay) {
//                                   setState(() {
//                                     selectedDay = selectDay;
//                                     focusedDay = focusDay;
//                                   });
//                                   print(focusedDay);
//                                 },
//                                 selectedDayPredicate: (DateTime date) {
//                                   return isSameDay(selectedDay, date);
//                                 },
//                                 eventLoader: _getEventsfromDay,
//                                 //To style the Calendar
//                                 calendarStyle: CalendarStyle(
//                                   isTodayHighlighted: true,
//                                   selectedDecoration: BoxDecoration(
//                                     color: Colors.blue,
//                                     shape: BoxShape.rectangle,
//                                     borderRadius: BorderRadius.circular(5.0),
//                                   ),
//                                   selectedTextStyle:
//                                       TextStyle(color: Colors.white),
//                                   todayDecoration: BoxDecoration(
//                                     color: Colors.purpleAccent,
//                                     shape: BoxShape.rectangle,
//                                     borderRadius: BorderRadius.circular(5.0),
//                                   ),
//                                   defaultDecoration: BoxDecoration(
//                                     shape: BoxShape.rectangle,
//                                     borderRadius: BorderRadius.circular(5.0),
//                                   ),
//                                   weekendDecoration: BoxDecoration(
//                                     shape: BoxShape.rectangle,
//                                     borderRadius: BorderRadius.circular(5.0),
//                                   ),
//                                 ),
//                                 headerStyle: HeaderStyle(
//                                   formatButtonVisible: true,
//                                   titleCentered: true,
//                                   formatButtonShowsNext: false,
//                                   formatButtonDecoration: BoxDecoration(
//                                     color: Colors.blue,
//                                     borderRadius: BorderRadius.circular(5.0),
//                                   ),
//                                   formatButtonTextStyle: TextStyle(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 6,
//               child: Container(
//                 width: double.infinity,
//                 height: double.infinity,
//                 color: Colors.white,
//                 child: SingleChildScrollView(
//                   padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Order Error',
//                             style: GoogleFonts.fredokaOne(
//                               fontSize: 40,
//                             ),
//                           ),
//                           SizedBox(height: 5),
//                           Container(
//                             margin: EdgeInsets.only(right: 200),
//                             decoration: BoxDecoration(
//                               color: Colors.black12,
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                             child: Row(
//                               children: [
//                                 Container(
//                                   child: Icon(Icons.search),
//                                   margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
//                                 ),
//                                 Expanded(
//                                   child: TextField(
//                                     decoration: InputDecoration(
//                                       border: InputBorder.none,
//                                       hintText: 'Order Number',
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 30),
//                           Text(
//                             'Chiangmai',
//                             style: GoogleFonts.fredokaOne(
//                               fontSize: 20,
//                               color: Colors.orange,
//                             ),
//                           ),
//                           SizedBox(height: 10),
//                           Container(
//                             child: Row(
//                               children: [
//                                 Text(
//                                   'Order Number :',
//                                 ),
//                                 SizedBox(width: 10),
//                                 TextButton(
//                                   onPressed: () {},
//                                   child: Text(
//                                     'xxxxx',
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 200),
//                           Text(
//                             'Bangkok',
//                             style: GoogleFonts.fredokaOne(
//                               fontSize: 20,
//                               color: Colors.purple,
//                             ),
//                           ),
//                           SizedBox(height: 10),
//                           Container(
//                             child: Row(
//                               children: [
//                                 Text(
//                                   'Order Number :',
//                                 ),
//                                 SizedBox(width: 10),
//                                 TextButton(
//                                   onPressed: () {},
//                                   child: Text(
//                                     'xxxxx',
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 200),
//                           Text(
//                             'Chonburi',
//                             style: GoogleFonts.fredokaOne(
//                               fontSize: 20,
//                               color: Colors.pink,
//                             ),
//                           ),
//                           SizedBox(height: 10),
//                           Container(
//                             child: Row(
//                               children: [
//                                 Text(
//                                   'Order Number :',
//                                 ),
//                                 SizedBox(width: 10),
//                                 TextButton(
//                                   onPressed: () {},
//                                   child: Text(
//                                     'xxxxx',
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
