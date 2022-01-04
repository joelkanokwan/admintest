import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dashbord/model/typetechnic_rray.dart';
import 'package:dashbord/model/user_model.dart';
import 'package:dashbord/states/dashbord.dart';
import 'package:dashbord/states/manage_order.dart';
import 'package:dashbord/utility/show_progress.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingAccount extends StatefulWidget {
  const SettingAccount({Key? key}) : super(key: key);

  @override
  _SettingAccountState createState() => _SettingAccountState();
}

class _SettingAccountState extends State<SettingAccount> {
  List<UserModel> chiangMaiModels = [];
  List<UserModel> bangKokModels = [];
  List<UserModel> chonBuriModels = [];
  List<bool> acceptChiangMais = [];
  List<bool> acceptBangKoks = [];
  List<bool> acceptChonburis = [];
  List<String> docIdChiangMais = [];
  List<String> docIdBangKoks = [];
  List<String> docIdChonburis = [];
  final debouncer = Debouncer(millisecond: 500);
  List<TypeTechnicArrayModel> typeTechnicArrayModels = [];

  @override
  void initState() {
    super.initState();
    readData();
  }

  Future<void> readData() async {
    if (chiangMaiModels.isNotEmpty) {
      chiangMaiModels.clear();
      bangKokModels.clear();
      chonBuriModels.clear();
      acceptChiangMais.clear();
      acceptBangKoks.clear();
      acceptChonburis.clear();
      docIdChiangMais.clear();
      docIdBangKoks.clear();
      docIdChonburis.clear();
      typeTechnicArrayModels.clear();
    }
    await FirebaseFirestore.instance
        .collection('user')
        .orderBy('accept')
        .get()
        .then((value) {
      for (var item in value.docs) {
        UserModel userModel = UserModel.fromMap(item.data());

            TypeTechnicArrayModel typeTechnicArrayModel =
        TypeTechnicArrayModel.fromMap(item.data());
        String docId = item.id;
        switch (userModel.province) {
          case 'เชียงใหม่':
            setState(() {
              chiangMaiModels.add(userModel);
              acceptChiangMais.add(userModel.accept);
              docIdChiangMais.add(docId);
               typeTechnicArrayModels.add(typeTechnicArrayModel);
              
            });

            break;
          case 'กรุงเทพ':
            setState(() {
              bangKokModels.add(userModel);
              acceptBangKoks.add(userModel.accept);
              docIdBangKoks.add(docId);
            });
            break;
          case 'ชลบุรี':
            setState(() {
              chonBuriModels.add(userModel);
              acceptChonburis.add(userModel.accept);
              docIdChonburis.add(docId);
            });
            break;

          default:
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            buildMenu(context),
            buildChiangMai(),
            buildBangkok(),
            buildChonburi(),
          ],
        ),
      ),
    );
  }

  Expanded buildChonburi() {
    return Expanded(
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
              Text(
                'Chonburi',
                style: GoogleFonts.fredokaOne(
                  fontSize: 30,
                  color: Colors.pink,
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
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search..',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              chonBuriModels.isEmpty
                  ? const ShowProgress()
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: chonBuriModels.length,
                      itemBuilder: (context, index) => Column(
                        children: [
                          CheckboxListTile(
                            value: acceptChonburis[index],
                            onChanged: (value) {
                              confirmCheck(chonBuriModels[index], value,
                                  docIdChonburis[index]);
                              // setState(() {
                              // acceptChiangMais[index] = value!;
                              // });
                            },
                            title: Text(chonBuriModels[index].name),
                            //  subtitle: Text(
                            //  'Scope : ${chonBuriModels[index].jobScope}'),
                          ),
                          const Divider(thickness: 2)
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildBangkok() {
    return Expanded(
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
              Text(
                'Bangkok',
                style: GoogleFonts.fredokaOne(
                  fontSize: 30,
                  color: Colors.purple,
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
                          hintText: 'Search..',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              bangKokModels.isEmpty
                  ? const ShowProgress()
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: bangKokModels.length,
                      itemBuilder: (context, index) => Column(
                        children: [
                          CheckboxListTile(
                            value: acceptBangKoks[index],
                            onChanged: (value) {
                              confirmCheck(bangKokModels[index], value,
                                  docIdBangKoks[index]);
                              // setState(() {
                              // acceptChiangMais[index] = value!;
                              // });
                            },
                            title: Text(bangKokModels[index].name),
                            //  subtitle: Text(
                            //  'Scope : ${bangKokModels[index].jobScope}'),
                          ),
                          const Divider(thickness: 2)
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildChiangMai() {
    return Expanded(
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
              Text(
                'Chiang Mai',
                style: GoogleFonts.fredokaOne(
                  fontSize: 30,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                margin: const EdgeInsets.only(right: 100),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      chiangMaiModels = chiangMaiModels
                          .where((element) => (element.name
                              .toLowerCase()
                              .contains(value.toLowerCase())))
                          .toList();
                    });
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              chiangMaiModels.isEmpty
                  ? const ShowProgress()
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: chiangMaiModels.length,
                      itemBuilder: (context, index) => Column(
                        children: [
                          CheckboxListTile(
                            value: acceptChiangMais[index],
                            onChanged: (value) {
                              confirmCheck(chiangMaiModels[index], value,
                                  docIdChiangMais[index]);
                              // setState(() {
                              // acceptChiangMais[index] = value!;
                              // });
                            },
                            title: Text(chiangMaiModels[index].name),
                            // subtitle: Text(
                            // 'Scope : ${chiangMaiModels[index].jobScope}'),
                          ),
                          const Divider(thickness: 2)
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildMenu(BuildContext context) {
    return Expanded(
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard()));
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
              // SizedBox(height: 20),
              // TextButton(
                // onPressed: () {
                  // Navigator.push(context,
                      // MaterialPageRoute(builder: (context) => ManageOrder()));
                // },
                // child: Text(
                  // 'Manage Order',
                  // style: GoogleFonts.lato(
                    // fontSize: 15,
                    // color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  // ),
                // ),
              // ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
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
    );
  }

  Future<void> confirmCheck(UserModel model, bool? value, String docId) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: ListTile(
          leading: const Icon(Icons.check_box),
          title: const Text('คุณต้องการแก้ไข Accept ?'),
          subtitle: Text(model.name),
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('JobType : ${model.typeTechnics}'),
            Text('Email : ${model.email}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              Map<String, bool> data = {};
              data['accept'] = value!;
              await FirebaseFirestore.instance
                  .collection('user')
                  .doc(docId)
                  .update(data)
                  .then((value) => readData());
            },
            child: const Text('Accept'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }
}

class Debouncer {
  final int millisecond;
  Timer? timer;
  VoidCallback? callback;

  Debouncer({required this.millisecond});

  run(VoidCallback voidCallback) {
    if (timer != null) {
      timer!.cancel();
    }
    timer = Timer(Duration(milliseconds: millisecond), voidCallback);
  }
}
