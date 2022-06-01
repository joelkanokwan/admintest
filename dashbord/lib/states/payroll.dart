import 'package:dashbord/states/dashbord.dart';
import 'package:dashbord/states/my_dialog.dart';
import 'package:dashbord/states/setting_acc.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:universal_html/html.dart';
import 'package:url_launcher/url_launcher.dart';

import 'web.dart';

class PayRoll extends StatefulWidget {
  const PayRoll({Key? key}) : super(key: key);

  @override
  State<PayRoll> createState() => _PayRollState();
}

class _PayRollState extends State<PayRoll> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  TableCalendar<dynamic> buildCalendar() {
    return TableCalendar(
      focusedDay: selectedDay,
      firstDay: DateTime(2022),
      lastDay: DateTime(2032),
      onFormatChanged: (CalendarFormat _format) {
        setState(() {
          format = _format;
        });
      },
      calendarFormat: format,
      startingDayOfWeek: StartingDayOfWeek.monday,
      daysOfWeekVisible: true,
      onDaySelected: (DateTime selectDay, DateTime focusDay) {
        setState(() {
          selectedDay = selectDay;
          focusedDay = focusDay;
        });
        print(focusedDay);
      },
      selectedDayPredicate: (DateTime date) {
        return isSameDay(selectedDay, date);
      },
      headerStyle: HeaderStyle(
        leftChevronIcon: const Icon(
          Icons.chevron_left,
          size: 24,
          color: Colors.black54,
        ),
        rightChevronIcon: const Icon(
          Icons.chevron_right,
          size: 24,
          color: Colors.black54,
        ),
        formatButtonVisible: true,
        formatButtonShowsNext: false,
        formatButtonDecoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5),
        ),
        formatButtonTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 87, 80, 80),
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
        // titleCentered: true,
      ),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: true,
        selectedDecoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5.0),
        ),
        selectedTextStyle: TextStyle(color: Colors.white),
        todayDecoration: BoxDecoration(
          color: Colors.purpleAccent,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5.0),
        ),
        defaultDecoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }

  Future<void> generagePDF() async {
    PdfDocument document = PdfDocument();

    document.pageSettings.orientation = PdfPageOrientation.landscape;
    document.pageSettings.margins.all = 50;

    PdfPage page = document.pages.add();
    PdfGraphics graphics = page.graphics;

    PdfImage image = PdfBitmap.fromBase64String(
        '/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMA///////////////////////////////////////////////////////////////////////////////////////bAEMB///////////////////////////////////////////////////////////////////////////////////////AABEIASkDmQMBIgACEQEDEQH/xAAYAAEBAQEBAAAAAAAAAAAAAAAAAgEDBP/EACoQAQEAAgEEAwACAwACAwEAAAABAhExEiFBUWFxkTKBE6GxIuFCwdHw/8QAFgEBAQEAAAAAAAAAAAAAAAAAAAEC/8QAGhEBAQEBAQEBAAAAAAAAAAAAABEBQTEhUf/aAAwDAQACEQMRAD8A6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA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');

    page.graphics.drawImage(image, Rect.fromLTWH(176, 0, 390, 130));

    PdfBrush solidBrush =
        PdfSolidBrush(PdfColor(126, 151, 255)); //ปรับแต่งสีแท็ปหัว Pay Slip
    Rect bounds = Rect.fromLTWH(0, 160, graphics.clientSize.width, 30);
    graphics.drawRectangle(brush: solidBrush, bounds: bounds);

    PdfFont subHeadingFont = PdfStandardFont(PdfFontFamily.timesRoman, 14);
    PdfTextElement element =
        PdfTextElement(text: 'Pay Slip', font: subHeadingFont);
    element.brush = PdfBrushes.black;

    PdfLayoutResult result = element.draw(
        page: page, bounds: Rect.fromLTWH(10, bounds.top + 8, 0, 0))!;

    Size textSize =
        subHeadingFont.measureString('Pay Day'); //วันเวลาที่จ่ายเงิน
    Offset textPosition = Offset(
        graphics.clientSize.width - textSize.width - 10, result.bounds.top);

    graphics.drawString('16 May', subHeadingFont,
        brush: element.brush,
        bounds: Offset(graphics.clientSize.width - textSize.width - 10,
                result.bounds.top) &
            Size(textSize.width + 2, 20));

    element = PdfTextElement(
        text: 'Due Date 1-15 May (Midday) ',
        font: PdfStandardFont(PdfFontFamily.timesRoman, 10,
            style: PdfFontStyle.bold));
    element.brush = PdfSolidBrush(PdfColor(126, 155, 203));
    result = element.draw(
        page: page,
        bounds: Rect.fromLTWH(10, result.bounds.bottom + 25, 0, 0))!;
    PdfFont timesRoman = PdfStandardFont(PdfFontFamily.timesRoman, 10);

    element = PdfTextElement(
        text:
            'Joel Yeo \r\n\r\n673 WoodlandS Drive 71 \r\n\r\nSingapore 730673 ',
        font: timesRoman);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page,
        bounds: Rect.fromLTWH(10, result.bounds.bottom + 10, 0, 0))!;

    PdfGrid grid = PdfGrid();
    grid.columns.add(count: 4);

    grid.headers.add(1);

    PdfGridRow header = grid.headers[0];
    header.cells[0].value = 'Earnings';
    header.cells[1].value = 'Amount';
    header.cells[2].value = 'Deductions';
    header.cells[3].value = 'Amount';

    PdfGridCellStyle headerStyle = PdfGridCellStyle();
    headerStyle.borders.all = PdfPen(PdfColor(126, 151, 173));
    headerStyle.backgroundBrush = PdfSolidBrush(PdfColor(126, 151, 255));
    headerStyle.textBrush = PdfBrushes.white;
    headerStyle.font = PdfStandardFont(PdfFontFamily.timesRoman, 14,
        style: PdfFontStyle.regular);

    for (int i = 0; i < header.cells.count; i++) {
      if (i == 0 || i == 1) {
        header.cells[i].stringFormat = PdfStringFormat(
            alignment: PdfTextAlignment.left,
            lineAlignment: PdfVerticalAlignment.middle);
      } else {
        header.cells[i].stringFormat = PdfStringFormat(
            alignment: PdfTextAlignment.left,
            lineAlignment: PdfVerticalAlignment.middle);
      }
      header.cells[i].style = headerStyle;
    }

    PdfGridRow row = grid.rows.add();
    row.cells[0].value = 'Wages';
    row.cells[1].value = '8000';
    row.cells[2].value = 'Withholding Tax (3%)';
    row.cells[3].value = '240';

    row = grid.rows.add();
    row.cells[0].value = 'Others';
    row.cells[1].value = '0';
    row.cells[2].value = 'Others';
    row.cells[3].value = '0';

    grid.style.cellPadding = PdfPaddings(left: 2, right: 2, top: 2, bottom: 2);

    PdfGridCellStyle cellStyle = PdfGridCellStyle();
    cellStyle.borders.all = PdfPens.white;
    cellStyle.borders.bottom = PdfPen(PdfColor(217, 217, 217), width: 0.70);
    cellStyle.font = PdfStandardFont(PdfFontFamily.timesRoman, 12);
    cellStyle.textBrush = PdfSolidBrush(PdfColor(131, 130, 136));

    for (int i = 0; i < grid.rows.count; i++) {
      PdfGridRow row = grid.rows[i];
      for (int j = 0; j < row.cells.count; j++) {
        row.cells[j].style = cellStyle;
        if (j == 0 || j == 1) {
          row.cells[j].stringFormat = PdfStringFormat(
              alignment: PdfTextAlignment.left,
              lineAlignment: PdfVerticalAlignment.middle);
        } else {
          row.cells[j].stringFormat = PdfStringFormat(
              alignment: PdfTextAlignment.left,
              lineAlignment: PdfVerticalAlignment.middle);
        }
      }
    }
    PdfLayoutFormat layoutFormat =
        PdfLayoutFormat(layoutType: PdfLayoutType.paginate);

    PdfLayoutResult gridResult = grid.draw(
        page: page,
        bounds: Rect.fromLTWH(0, result.bounds.bottom + 20,
            graphics.clientSize.width, graphics.clientSize.height - 100),
        format: layoutFormat)!;

    gridResult.page.graphics.drawString(
        'Total Earnings:                             \8000', subHeadingFont,
        brush: PdfSolidBrush(PdfColor(126, 155, 203)),
        bounds: Rect.fromLTWH(520, gridResult.bounds.bottom + 30, 0, 0));

    List<int> bytes = document.save();
    document.dispose();

    saveAndLaunchFile(bytes, 'Output.pdf');
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PayRoll()));
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
            ),
            Expanded(
              flex: 22,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black12,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Payroll',
                          style: GoogleFonts.fredokaOne(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Waiting upload',
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Text(
                              'DD/MM/YY',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 2),
                            Text('(2)'),
                            SizedBox(width: 18),
                            ElevatedButton(
                              onPressed: () {
                                MyDialog().normalDialog(
                                    context,
                                    'Confirm Sent Pay Slip?',
                                    'หลังจากส่งเรียนบร้อยแล้วระบบจะทำการย้ายข้อมูลดังกล่าวไปยัง Payment History');
                              },
                              child: Text('Sent Pay Slip'),
                            ),
                          ],
                        ),
                      ),
                      DataTable(
                        columns: [
                          DataColumn(
                            label: Text(
                              'Acc. Number',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Recipient Name',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Amount',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Email Address',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Tax Id',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'withhokdingTax',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Vat',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                        rows: [
                          DataRow(
                            cells: [
                              DataCell(
                                Text('1010101010'),
                              ),
                              DataCell(
                                Text('Kanokwan Yeo'),
                              ),
                              DataCell(
                                Text('8000'),
                              ),
                              DataCell(
                                Text('jo@gmail.com'),
                              ),
                              DataCell(
                                Text('1234567890'),
                              ),
                              DataCell(
                                Text('247.42'),
                              ),
                              DataCell(
                                Text('0'),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(
                                Text('2020202020'),
                              ),
                              DataCell(
                                Text('Joel Yeo'),
                              ),
                              DataCell(
                                Text('8000'),
                              ),
                              DataCell(
                                Text('jo@gmail.com'),
                              ),
                              DataCell(
                                Text('123456789'),
                              ),
                              DataCell(
                                Text('274.42'),
                              ),
                              DataCell(
                                Text('560'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 100),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Payment History',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      buildCalendar(),
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
