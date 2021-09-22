import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditExpense {
  Future<Null> normalDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.only(left: 500),
        child: AlertDialog(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fixcost',
                style: GoogleFonts.fredokaOne(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Salary Boss Joel :',
                    style: GoogleFonts.lateef(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 130,
                    height: 20,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Baht',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Salary Boss Eye :',
                    style: GoogleFonts.lateef(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 130,
                    height: 20,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Baht',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Variable cost',
                style: GoogleFonts.fredokaOne(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Firebase :',
                    style: GoogleFonts.lateef(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 130,
                    height: 20,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Baht',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Others :',
                    style: GoogleFonts.lateef(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 130,
                    height: 20,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Baht',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          content: Container(
            width: 100,
            height: 20,
            color: Colors.white,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'OK',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
