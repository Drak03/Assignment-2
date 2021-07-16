import 'package:assignment_2/modal/usermodal.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class DetailScreen extends StatelessWidget {
  static const route = "/detailScreen";

  final String name;
  final String specialty;
  DetailScreen({this.name, this.specialty});
  @override
  Widget build(BuildContext context) {
    User user = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                  Colors.blue[700],
                  Colors.blue[500],
                  Colors.greenAccent[100]
                ])),
          ),
          title: Text("User  Details")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              (user == null) ? "Name: $name" : "Name: ${user.name}",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
            Text(
              (user == null)
                  ? "Specialty: $specialty"
                  : "Specialty: ${user.specialty}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
          // leading: IconButton(
          //     onPressed: () {
          //       Navigator.pushNamedAndRemoveUntil(
          //           context, Home.route, (route) => false);
          //     },
          //     icon: Icon(Icons.arrow_back)),