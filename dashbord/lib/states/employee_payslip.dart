import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class EmployeePaySlip extends StatefulWidget {
  const EmployeePaySlip({Key? key}) : super(key: key);

  @override
  State<EmployeePaySlip> createState() => _EmployeePaySlipState();
}

class _EmployeePaySlipState extends State<EmployeePaySlip> {
  Future<Uint8List> showPaySlipPDF() async {
    var pdf = pw.Document();

    final tableHeaders = [
      'Earnings',
      'Amount',
      'Deductions',
      'Amount',
    ];
    final tableData = [
      [
        'Salary',
        '100000',
        'Withholding Tax',
        '10000',
      ],
    ];
    final tableData1 = [
      [
        'Bonus',
        '0',
        'Social Security',
        '750',
      ],
    ];
    final netPay = [
      [
        '',
        '',
        'Net Pay',
        '89250',
      ]
    ];

    final imageLogo = pw.MemoryImage(
        (await rootBundle.load('assets/images/logo.png')).buffer.asUint8List());
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) => pw.Column(
          children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Image(imageLogo),
                pw.Text(
                  'PAYSLIP',
                  style: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
            pw.SizedBox(height: 10),
            pw.Row(
              children: [
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      'Company name',
                      style: pw.TextStyle(
                        fontStyle: pw.FontStyle.italic,
                        fontWeight: pw.FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      '163/31 Myhipcondo2',
                      style: pw.TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'ChiangMai 50000',
                      style: pw.TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'Tel : 0931765180',
                      style: pw.TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    pw.SizedBox(height: 20),
                    pw.Text(
                      'Employee Name :',
                      style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'Kanokwan Yeo',
                      style: pw.TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    pw.Text(
                      'Position : Managing Director',
                      style: pw.TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    pw.SizedBox(height: 20),
                    pw.Text(
                      'Paid : 1 July 2022',
                      style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'Period day : 15-30 June 2022',
                      style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.SizedBox(height: 20),
                    pw.Table.fromTextArray(
                      headers: tableHeaders,
                      data: tableData,
                      columnWidths: {
                        0: pw.FixedColumnWidth(170),
                        1: pw.FixedColumnWidth(80),
                        2: pw.FixedColumnWidth(170),
                        3: pw.FixedColumnWidth(80),
                      },
                      headerStyle: pw.TextStyle(
                        fontSize: 15,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      headerDecoration:
                          const pw.BoxDecoration(color: PdfColors.grey300),
                      cellHeight: 40.0,
                      cellAlignments: {
                        0: pw.Alignment.center,
                        1: pw.Alignment.center,
                        2: pw.Alignment.center,
                        3: pw.Alignment.center,
                      },
                      cellStyle: pw.TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    pw.Table.fromTextArray(
                      data: tableData1,
                      columnWidths: {
                        0: pw.FixedColumnWidth(170),
                        1: pw.FixedColumnWidth(80),
                        2: pw.FixedColumnWidth(170),
                        3: pw.FixedColumnWidth(80),
                      },
                      headerStyle: pw.TextStyle(
                        fontSize: 15,
                      ),
                      cellHeight: 40.0,
                      cellAlignments: {
                        0: pw.Alignment.center,
                        1: pw.Alignment.center,
                        2: pw.Alignment.center,
                        3: pw.Alignment.center,
                      },
                      cellStyle: pw.TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Table.fromTextArray(
                      data: netPay,
                      border: null,
                      columnWidths: {
                        0: pw.FixedColumnWidth(170),
                        1: pw.FixedColumnWidth(80),
                        2: pw.FixedColumnWidth(170),
                        3: pw.FixedColumnWidth(80),
                      },
                      headerStyle: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      cellAlignments: {
                        2: pw.Alignment.centerRight,
                        3: pw.Alignment.center,
                      },
                    ),
                  ],
                ),
              ],
            ),
            pw.SizedBox(height: 50),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  '',
                  style: pw.TextStyle(
                    fontSize: 18,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.Text(
                  'Digital Signature here',
                  style: pw.TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  '',
                  style: pw.TextStyle(
                    fontSize: 15,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.Text(
                  'General Manager',
                  style: pw.TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

    return pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PdfPreview(
          build: (format) => showPaySlipPDF(),
        ),
      ),
    );
  }
}
