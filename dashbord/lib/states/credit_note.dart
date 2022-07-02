import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:typed_data';

class CreditNote extends StatefulWidget {
  const CreditNote({Key? key}) : super(key: key);

  @override
  State<CreditNote> createState() => _CreditNoteState();
}

class _CreditNoteState extends State<CreditNote> {
  Future<Uint8List> showCreditNotePDF() async {
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
    final oldInvoice = [
      [
        'Total value according to the original tax invoice',
        '20000',
      ],
    ];
    final correctValue = [
      [
        'Correct value',
        '20000',
      ],
    ];
    final different = [
      [
        'Different',
        '0',
      ],
    ];
    final vat = [
      [
        'Vat 7%',
        '0',
      ],
    ];
    final toTal = [
      [
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
                  'Credit Note / Invoice',
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
                  'Date : 2 July 2022',
                  style: pw.TextStyle(
                    fontSize: 28,
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
                      'Tax ID :  1234567898745',
                      style: pw.TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    pw.SizedBox(height: 10),
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
                      data: oldInvoice,
                      border: null,
                      columnWidths: {
                        0: pw.FixedColumnWidth(582),
                        1: pw.FixedColumnWidth(141),
                      },
                      headerStyle: pw.TextStyle(
                        fontSize: 24,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      cellHeight: 30,
                      cellAlignments: {
                        0: pw.Alignment.bottomRight,
                        1: pw.Alignment.bottomRight,
                      },
                    ),
                    pw.Table.fromTextArray(
                      data: correctValue,
                      border: null,
                      columnWidths: {
                        0: pw.FixedColumnWidth(582),
                        1: pw.FixedColumnWidth(141),
                      },
                      headerStyle: pw.TextStyle(
                        fontSize: 24,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      cellHeight: 30,
                      cellAlignments: {
                        0: pw.Alignment.bottomRight,
                        1: pw.Alignment.bottomRight,
                      },
                    ),
                    pw.Table.fromTextArray(
                      data: different,
                      border: null,
                      columnWidths: {
                        0: pw.FixedColumnWidth(582),
                        1: pw.FixedColumnWidth(141),
                      },
                      headerStyle: pw.TextStyle(
                        fontSize: 24,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      cellHeight: 30,
                      cellAlignments: {
                        0: pw.Alignment.bottomRight,
                        1: pw.Alignment.bottomRight,
                      },
                    ),
                    pw.Table.fromTextArray(
                      data: vat,
                      border: null,
                      columnWidths: {
                        0: pw.FixedColumnWidth(582),
                        1: pw.FixedColumnWidth(141),
                      },
                      headerStyle: pw.TextStyle(
                        fontSize: 24,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      cellHeight: 30,
                      cellAlignments: {
                        0: pw.Alignment.bottomRight,
                        1: pw.Alignment.bottomRight,
                      },
                    ),
                    pw.Table.fromTextArray(
                      data: toTal,
                      border: null,
                      columnWidths: {
                        0: pw.FixedColumnWidth(582),
                        1: pw.FixedColumnWidth(141),
                      },
                      headerStyle: pw.TextStyle(
                        fontSize: 24,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      cellHeight: 30,
                      cellAlignments: {
                        0: pw.Alignment.bottomRight,
                        1: pw.Alignment.bottomRight,
                      },
                    ),
                  ],
                ),
              ],
            ),
            pw.SizedBox(height: 60),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  'Ref No : 123456789',
                  style: pw.TextStyle(
                    fontSize: 25,
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
                  'Remark : breach of service contact',
                  style: pw.TextStyle(
                    fontSize: 25,
                  ),
                ),
                pw.Text(
                  'Genernal Manager',
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
      body: SafeArea(
          child: PdfPreview(
        build: (format) => showCreditNotePDF(),
      )),
    );
  }
}
