import 'package:dashbord/states/acc_problem.dart';
import 'package:dashbord/states/chiangmai.dart';
import 'package:dashbord/states/dashbord.dart';
import 'package:dashbord/states/home.dart';
import 'package:dashbord/states/manage_order.dart';
import 'package:dashbord/states/setting_acc.dart';
import 'package:dashbord/states/success_order.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SuccessOrder(),
    );
  }
}
