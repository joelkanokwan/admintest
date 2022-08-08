import 'package:dashbord/states/customer_service.dart';
import 'package:dashbord/states/dashbord.dart';
import 'package:dashbord/states/employee.dart';
import 'package:dashbord/states/payroll.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await Firebase.initializeApp().then((value) {
    print('Firebase initial Success');
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomerService(),
    );
  }
}
