import 'package:dashbord/states/dashbord.dart';
import 'package:dashbord/states/employee.dart';
import 'package:dashbord/states/partner.dart';
import 'package:dashbord/states/payroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerService extends StatefulWidget {
  const CustomerService({Key? key}) : super(key: key);

  @override
  State<CustomerService> createState() => _CustomerServiceState();
}

class _CustomerServiceState extends State<CustomerService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            buildMenu(context),
            buildReportProblem(),
            buildDetail(),
            buildSolved(),
          ],
        ),
      ),
    );
  }
}

Expanded buildSolved() {
  return Expanded(
    flex: 5,
    child: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black12,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Solved',
              style: GoogleFonts.fredokaOne(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.only(right: 100),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}


Expanded buildDetail() {
  return Expanded(
    flex: 5,
    child: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: SingleChildScrollView(),
    ),
  );
}

Expanded buildReportProblem() {
  return Expanded(
    flex: 5,
    child: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black12,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer report problem',
              style: GoogleFonts.fredokaOne(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.only(right: 100),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Expanded buildMenu(BuildContext context) {
  return Expanded(
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
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
              onPressed: () {},
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
                      builder: (context) => Employee(),
                    ));
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
                      builder: (context) => Partner(),
                    ));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PayRoll()));
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
  );
}
