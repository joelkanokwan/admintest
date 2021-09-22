import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BangkokShowOrderCreated {
  Future<Null> normalDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.only(left: 700),
        child: AlertDialog(
          title: Container(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          content: Container(
            width: 1000,
            height: 100,
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
