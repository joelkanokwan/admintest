import 'package:dashbord/states/dashbord.dart';

import 'package:dashbord/states/setting_acc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class DashboardPie extends StatefulWidget {
  const DashboardPie({Key? key}) : super(key: key);

  @override
  _DashboardPieState createState() => _DashboardPieState();
}

class _DashboardPieState extends State<DashboardPie> {
  Map<String, double> dashboardpie = {
    'Total Revenue': 100000,
    'Net Profit': 50000,
  };
  // Map<String, double> revenuepie = {
    // 'ChiangMai': 100000,
    // 'Bangkok': 200000,
    // 'Chonburi': 105000,
  // };
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
                        'Total Revenue History',
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
                      Row(
                        children: [
                          Container(
                            child: PieChart(
                              dataMap: dashboardpie,
                              chartRadius:
                                  MediaQuery.of(context).size.width / 4.4,
                              legendOptions: LegendOptions(
                                legendPosition: LegendPosition.bottom,
                              ),
                              chartValuesOptions: ChartValuesOptions(
                                showChartValues: true,
                              ),
                            ),
                          ),
                          // Container(
                            // child: PieChart(
                              // dataMap: revenuepie,
                              // chartRadius:
                                  // MediaQuery.of(context).size.width / 4.4,
                              // legendOptions: LegendOptions(
                                // legendPosition: LegendPosition.bottom,
                              // ),
                              // chartValuesOptions: ChartValuesOptions(
                                // showChartValuesInPercentage: true,
                              // ),
                            // ),
                          // ),
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
