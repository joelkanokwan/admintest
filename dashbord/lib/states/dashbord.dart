import 'package:dashbord/pie/dashborad_pie.dart';
import 'package:dashbord/dialog/edit_expense.dart';
import 'package:dashbord/chart/dashbord_barchart.dart';
import 'package:dashbord/pie/expense_pie.dart';
import 'package:dashbord/states/acc_problem.dart';
import 'package:dashbord/states/bangkok.dart';
import 'package:dashbord/states/chiangmai.dart';
import 'package:dashbord/states/chonburi.dart';
import 'package:dashbord/states/manage_order.dart';
import 'package:dashbord/states/setting_acc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  DateTime? date;

  String getDate() {
    if (date == null) {
      return 'Appointment Date';
    } else {
      return '${date!.day}/${date!.month}/${date!.year}';
    }
  }

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2022),
    );
    if (newDate == null) return;

    setState(() => date = newDate);
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Bangkok()));
                        },
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            pickDate(context);
                          },
                          icon: Icon(
                            Icons.calendar_today_outlined,
                          ),
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          onPressed: () {
                            EditExpense().normalDialog(context);
                          },
                          icon: Icon(
                            Icons.edit,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expense',
                          style: GoogleFonts.fredokaOne(
                            fontSize: 50,
                          ),
                        ),
                        Divider(thickness: 2),
                        Text(
                          'Current month and year',
                          style: GoogleFonts.lateef(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Fixcost',
                          style: GoogleFonts.fredokaOne(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Salary Boss Joel :',
                          style: GoogleFonts.lateef(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Salary Boss Eye :',
                          style: GoogleFonts.lateef(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Variable cost',
                          style: GoogleFonts.fredokaOne(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Firebase :',
                          style: GoogleFonts.lateef(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Others :',
                          style: GoogleFonts.lateef(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Total Expense :',
                          style: GoogleFonts.fredokaOne(
                            fontSize: 20,
                          ),
                        ),
                        Divider(thickness: 2),
                        SizedBox(height: 5),
                        Text(
                          'History',
                          style: GoogleFonts.fredokaOne(
                            fontSize: 20,
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
                                        builder: (context) => ExpensePie()));
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
