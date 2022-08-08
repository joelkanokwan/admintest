import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardBarChart extends StatelessWidget {
  const DashBoardBarChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        alignment: BarChartAlignment.spaceBetween,
        axisTitleData: FlAxisTitleData(
          leftTitle: AxisTitle(reservedSize: 20),
        ),
        titlesData: FlTitlesData(
          topTitles: SideTitles(
            showTitles: false,
          ),
          bottomTitles: SideTitles(
            showTitles: true,
            getTitles: (value) {
              if (value == 1) {
                return 'JAN';
              } else if (value == 2) {
                return 'FEB';
              } else if (value == 3) {
                return 'MAR';
              } else if (value == 4) {
                return 'APR';
              } else if (value == 5) {
                return 'MAY';
              } else if (value == 6) {
                return 'JUN';
              } else if (value == 7) {
                return 'JUL';
              } else if (value == 8) {
                return 'AUG';
              } else if (value == 9) {
                return 'SEP';
              } else if (value == 10) {
                return 'OCT';
              } else if (value == 11) {
                return 'NOV';
              } else if (value == 12) {
                return 'DEC';
              } else {
                return '';
              }
            },
          ),
        ),
        barGroups: [
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                y: 100000,
                colors: [Colors.orange],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
              BarChartRodData(
                y: 50000,
                colors: [Colors.redAccent],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                y: 70000,
                colors: [Colors.orange],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
              BarChartRodData(
                y: 30000,
                colors: [Colors.redAccent],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
            ],
          ),
          BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(
                y: 50000,
                colors: [Colors.orange],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
              BarChartRodData(
                y: 20000,
                colors: [Colors.redAccent],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
            ],
          ),
          BarChartGroupData(
            x: 4,
            barRods: [
              BarChartRodData(
                y: 70000,
                colors: [Colors.orange],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
              BarChartRodData(
                y: 20000,
                colors: [Colors.redAccent],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
            ],
          ),
          BarChartGroupData(
            x: 5,
            barRods: [
              BarChartRodData(
                y: 130000,
                colors: [Colors.orange],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
              BarChartRodData(
                y: 50000,
                colors: [Colors.redAccent],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
            ],
          ),
          BarChartGroupData(
            x: 6,
            barRods: [
              BarChartRodData(
                y: 80000,
                colors: [Colors.orange],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
              BarChartRodData(
                y: 40000,
                colors: [Colors.redAccent],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
            ],
          ),
          BarChartGroupData(
            x: 7,
            barRods: [
              BarChartRodData(
                y: 30000,
                colors: [Colors.orange],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
              BarChartRodData(
                y: 60000,
                colors: [Colors.redAccent],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
            ],
          ),
          BarChartGroupData(
            x: 8,
            barRods: [
              BarChartRodData(
                y: 50000,
                colors: [Colors.orange],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
              BarChartRodData(
                y: 1000,
                colors: [Colors.redAccent],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
            ],
          ),
          BarChartGroupData(
            x: 9,
            barRods: [
              BarChartRodData(
                y: 200000,
                colors: [Colors.orange],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
              BarChartRodData(
                y: 90000,
                colors: [Colors.redAccent],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
            ],
          ),
          BarChartGroupData(
            x: 10,
            barRods: [
              BarChartRodData(
                y: 50000,
                colors: [Colors.orange],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
              BarChartRodData(
                y: 15000,
                colors: [Colors.redAccent],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
            ],
          ),
          BarChartGroupData(
            x: 11,
            barRods: [
              BarChartRodData(
                y: 75000,
                colors: [Colors.orange],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
              BarChartRodData(
                y: 7000,
                colors: [Colors.redAccent],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
            ],
          ),
          BarChartGroupData(
            x: 12,
            barRods: [
              BarChartRodData(
                y: 140000,
                colors: [Colors.orange],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
              BarChartRodData(
                y: 30000,
                colors: [Colors.redAccent],
                width: 25,
                borderRadius: BorderRadius.circular(0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}