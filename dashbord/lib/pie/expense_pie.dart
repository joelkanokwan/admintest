import 'package:dashbord/states/acc_problem.dart';
import 'package:dashbord/states/bangkok.dart';
import 'package:dashbord/states/chiangmai.dart';
import 'package:dashbord/states/chonburi.dart';
import 'package:dashbord/states/dashbord.dart';
import 'package:dashbord/states/manage_order.dart';
import 'package:dashbord/states/setting_acc.dart';
import 'package:dashbord/states/success_order.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class ExpensePie extends StatefulWidget {
  const ExpensePie({Key? key}) : super(key: key);

  @override
  _ExpensePieState createState() => _ExpensePieState();
}

class _ExpensePieState extends State<ExpensePie> {
  Map<String, double> expensepie = {
    'Salary Boss Joel': 35000,
    'Salary Boss Eye': 35000,
    'Firebase': 3000,
    'Other': 7000,
  };
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SuccessOrder()));
                        },
                        child: Text(
                          'Success Order',
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
              flex: 20,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black12,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expense History',
                        style: GoogleFonts.fredokaOne(
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Current Year',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        child: PieChart(
                          dataMap: expensepie,
                          chartRadius: MediaQuery.of(context).size.width / 4.4,
                          legendOptions: LegendOptions(
                            legendPosition: LegendPosition.bottom,
                          ),
                          chartValuesOptions: ChartValuesOptions(
                            showChartValues: true,
                          ),
                        ),
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
