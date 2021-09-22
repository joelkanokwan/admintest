import 'package:dashbord/chart/bangkok_barchart.dart';
import 'package:dashbord/dialog/bkk_showalertpayment.dart';
import 'package:dashbord/dialog/bkk_showordercreated.dart';
import 'package:dashbord/pie/bangkok_pie.dart';
import 'package:dashbord/states/acc_problem.dart';
import 'package:dashbord/states/chiangmai.dart';
import 'package:dashbord/states/chonburi.dart';
import 'package:dashbord/states/dashbord.dart';
import 'package:dashbord/states/manage_order.dart';
import 'package:dashbord/states/setting_acc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bangkok extends StatefulWidget {
  const Bangkok({Key? key}) : super(key: key);

  @override
  _BangkokState createState() => _BangkokState();
}

class _BangkokState extends State<Bangkok> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 3,
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
                                  builder: (context) => ChiangMai()));
                        },
                        child: Text(
                          'ChiangMai',
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
                          'Bangkok',
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
                                  builder: (context) => Chonburi()));
                        },
                        child: Text(
                          'Chonburi',
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
                                  builder: (context) => ManageOrder()));
                        },
                        child: Text(
                          'Manage Order',
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
                                  builder: (context) => AccountProblem()));
                        },
                        child: Text(
                          'Account Problem',
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
              flex: 14,
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
                            'Bangkok',
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
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 5,
                              children: [
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
                                        Text(
                                          'Gross Profit 15%',
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
                                          'Service tax 3%',
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
                                          'Vat 7%',
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
                            child: BangkokBarChart(),
                          ),
                          SizedBox(height: 30),
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
                                          builder: (context) => BangkokPie()));
                                },
                                child: Text(
                                  '2021',
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
                            'Ordering',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.only(right: 600),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Container(
                                    child: Icon(Icons.search),
                                    margin: EdgeInsets.fromLTRB(3, 0, 7, 0)),
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
                        ],
                      ),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Recent Today',
                          style: GoogleFonts.fredokaOne(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 400),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Customer Name',
                                        ),
                                        Text(
                                          '#OrderID#',
                                        ),
                                        Text(
                                          'Technician name',
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 25),
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.orange,
                                      size: 23,
                                    ),
                                    Icon(
                                      Icons.fiber_manual_record,
                                      size: 10,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.fiber_manual_record,
                                      size: 10,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.fiber_manual_record,
                                      size: 10,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.fiber_manual_record,
                                      size: 10,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.fiber_manual_record,
                                      size: 10,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.fiber_manual_record,
                                      size: 10,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.orange,
                                      size: 23,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
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
                            'Order Created',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 30,
                            ),
                          ),
                          Divider(thickness: 2),
                          Container(
                            margin: EdgeInsets.only(right: 200),
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
                          SizedBox(height: 50),
                          Text(
                            'Appointment date',
                            style: GoogleFonts.lato(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Divider(thickness: 2),
                          Container(
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Order ID',
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          BangkokShowOrderCreated()
                                              .normalDialog(context);
                                        },
                                        child: Text(
                                          'xxxxxx',
                                        ),
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(thickness: 1),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Amount',
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'xxxxxx',
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(thickness: 1),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '3%',
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'xxxxxx',
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(thickness: 1),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '7%',
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'xxxxxx',
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(thickness: 1),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '15%',
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'xxxxxx',
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(thickness: 1),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Allowance',
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'xxxxxx',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(thickness: 2),
                          SizedBox(height: 300),
                          Text(
                            'Alert Payments !',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 30,
                              color: Colors.red,
                            ),
                          ),
                          Divider(thickness: 2),
                          Container(
                            margin: EdgeInsets.only(right: 200),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.search,
                                  ),
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
                          SizedBox(height: 10),
                          Divider(thickness: 2),
                          Container(
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Order ID',
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          BangkokShowAlertPayments()
                                              .normalDialog(context);
                                        },
                                        child: Text(
                                          'xxxxxx',
                                        ),
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(thickness: 1),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Amount',
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'xxxxxx',
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(thickness: 1),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '3%',
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'xxxxxx',
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(thickness: 1),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '7%',
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'xxxxxx',
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(thickness: 1),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '15%',
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'xxxxxx',
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(thickness: 1),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Allowance',
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'xxxxxx',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
