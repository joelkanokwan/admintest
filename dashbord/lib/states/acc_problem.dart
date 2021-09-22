import 'package:dashbord/states/bangkok.dart';
import 'package:dashbord/states/chiangmai.dart';
import 'package:dashbord/states/chonburi.dart';
import 'package:dashbord/states/dashbord.dart';
import 'package:dashbord/states/manage_order.dart';
import 'package:dashbord/states/setting_acc.dart';
import 'package:dashbord/states/success_order.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountProblem extends StatefulWidget {
  const AccountProblem({Key? key}) : super(key: key);

  @override
  _AccountProblemState createState() => _AccountProblemState();
}

class _AccountProblemState extends State<AccountProblem> {
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
                        onPressed: () {},
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tempolary lock account',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            margin: EdgeInsets.only(right: 100),
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
                                      hintText: 'Shop Name',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Chiangmai',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 20,
                              color: Colors.orange,
                            ),
                          ),
                          SizedBox(height: 300),
                          Text(
                            'Bangkok',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          SizedBox(height: 300),
                          Text(
                            'Chiangmai',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 20,
                              color: Colors.pink,
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
              flex: 5,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Black list account',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            margin: EdgeInsets.only(right: 100),
                            decoration: BoxDecoration(
                              color: Colors.black12,
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
                                      hintText: 'Shop Name',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Chiangmai',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 20,
                              color: Colors.orange,
                            ),
                          ),
                          SizedBox(height: 300),
                          Text(
                            'Bangkok',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          SizedBox(height: 300),
                          Text(
                            'Chiangmai',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 20,
                              color: Colors.pink,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Miss appointment order',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            margin: EdgeInsets.only(right: 100),
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
                                      hintText: 'Order number',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Chiangmai',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 20,
                              color: Colors.orange,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Order Number :',
                                ),
                                SizedBox(width: 10),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'xxxxx',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 300),
                          Text(
                            'Bangkok',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Order Number :',
                                ),
                                SizedBox(width: 10),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'xxxxx',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 300),
                          Text(
                            'Chiangmai',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 20,
                              color: Colors.pink,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Order Number :',
                                ),
                                SizedBox(width: 10),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'xxxxx',
                                  ),
                                ),
                              ],
                            ),
                          ),
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
