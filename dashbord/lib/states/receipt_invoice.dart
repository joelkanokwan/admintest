import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:printing/printing.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:typed_data';

class ReceiptAndInvoice extends StatefulWidget {
  const ReceiptAndInvoice({Key? key}) : super(key: key);

  @override
  State<ReceiptAndInvoice> createState() => _ReceiptAndInvoiceState();
}

class _ReceiptAndInvoiceState extends State<ReceiptAndInvoice> {

  Future<Uint8List> showReceiptAndInvoiceIDF() async {
    var pdf = pw.Document();

    final tableHeaders = [
      'DESCRIPTION',
      'QTY',
      'PRICE',
      'TOTAL',
    ];
    final tableData = [
      [
        'install Airconditioner',
        '1',
        '20000',
        '20000',
      ],
    ];

    final subtotal = [
      [
        '',
        '',
        'Subtotal',
        '18691.58',
      ],
    ];

    final salesTax = [
      [
        '',
        '',
        'Vat 7%',
        '1308.42',
      ],
    ];
    final toTal = [
      [
        '',
        '',
        'Total',
        '20000',
      ],
    ];

    final imageLogo = pw.MemoryImage(
        (await rootBundle.load('assets/images/logo.png')).buffer.asUint8List());
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a3,
        build: (context) => pw.Column(
          children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Image(imageLogo),
                pw.Text(
                  'Receipt / Invoice',
                  style: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
            pw.SizedBox(height: 10),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  'Company name',
                  style: pw.TextStyle(
                    fontStyle: pw.FontStyle.italic,
                    fontWeight: pw.FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                pw.Text(
                  'No : 1234567890',
                  style: pw.TextStyle(
                    fontSize: 28,
                  ),
                ),
              ],
            ),
            pw.SizedBox(height: 10),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  'Tax ID :  1234567898745',
                  style: pw.TextStyle(
                    fontSize: 28,
                  ),
                ),
                pw.SizedBox(height: 10),
                pw.Text(
                  'Date : 28 June 2022',
                  style: pw.TextStyle(
                    fontSize: 25,
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
                      '163/31 Myhipcondo 2',
                      style: pw.TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'Nongpakung Mung district',
                      style: pw.TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'ChiangMai 50000',
                      style: pw.TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'Tell : 0931765180',
                      style: pw.TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    pw.SizedBox(height: 20),
                    pw.Text(
                      'Customer details :',
                      style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'Joel Yeo',
                      style: pw.TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'Tax ID : 1234567893652',
                      style: pw.TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      '673 Woodlands',
                      style: pw.TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'Singapore 730673',
                      style: pw.TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'Tell : 0801111111',
                      style: pw.TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    pw.SizedBox(height: 20),
                    pw.Table.fromTextArray(
                      headers: tableHeaders,
                      data: tableData,
                      columnWidths: {
                        0: pw.FixedColumnWidth(300),
                        1: pw.FixedColumnWidth(141),
                        2: pw.FixedColumnWidth(141),
                        3: pw.FixedColumnWidth(141),
                      },
                      headerStyle: pw.TextStyle(
                        fontSize: 24,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      headerDecoration:
                          const pw.BoxDecoration(color: PdfColors.grey300),
                      cellHeight: 40.0,
                      cellAlignments: {
                        0: pw.Alignment.bottomLeft,
                        1: pw.Alignment.bottomRight,
                        2: pw.Alignment.bottomRight,
                        3: pw.Alignment.bottomRight,
                      },
                      cellStyle: pw.TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Table.fromTextArray(
                      data: subtotal,
                      border: null,
                      columnWidths: {
                        0: pw.FixedColumnWidth(300),
                        1: pw.FixedColumnWidth(141),
                        2: pw.FixedColumnWidth(141),
                        3: pw.FixedColumnWidth(141),
                      },
                      headerStyle: pw.TextStyle(
                        fontSize: 24,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      cellHeight: 40.0,
                      cellAlignments: {
                        2: pw.Alignment.bottomRight,
                        3: pw.Alignment.bottomRight,
                      },
                    ),
                    pw.Table.fromTextArray(
                      data: salesTax,
                      border: null,
                      columnWidths: {
                        0: pw.FixedColumnWidth(300),
                        1: pw.FixedColumnWidth(141),
                        2: pw.FixedColumnWidth(141),
                        3: pw.FixedColumnWidth(141),
                      },
                      headerStyle: pw.TextStyle(
                        fontSize: 24,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      cellHeight: 40.0,
                      cellAlignments: {
                        2: pw.Alignment.bottomRight,
                        3: pw.Alignment.bottomRight,
                      },
                    ),
                    pw.Table.fromTextArray(
                      data: toTal,
                      border: null,
                      columnWidths: {
                        0: pw.FixedColumnWidth(300),
                        1: pw.FixedColumnWidth(141),
                        2: pw.FixedColumnWidth(141),
                        3: pw.FixedColumnWidth(141),
                      },
                      headerStyle: pw.TextStyle(
                        fontSize: 24,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      cellHeight: 40.0,
                      cellAlignments: {
                        2: pw.Alignment.bottomRight,
                        3: pw.Alignment.bottomRight,
                      },
                    ),
                  ],
                ),
              ],
            ),
            pw.SizedBox(height: 70),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  'THANK YOU!',
                  style: pw.TextStyle(
                    fontSize: 35,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.Text(
                  'Digital Signature here',
                  style: pw.TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  'PLEASURE DOING BUSINESS WITH YOU',
                  style: pw.TextStyle(
                    fontSize: 20,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.Text(
                  'General Manager',
                  style: pw.TextStyle(
                    fontSize: 25,
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
      body: SafeArea(child: PdfPreview(build: (format) => showReceiptAndInvoiceIDF(),)),
    );
  }
}
