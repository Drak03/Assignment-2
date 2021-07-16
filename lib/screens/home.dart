import 'package:assignment_2/modal/usermodal.dart';
import 'package:assignment_2/screens/detail.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const route = "/";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> userNames = [
    "UserA",
    "UserB",
    "UserC",
    "UserD",
    "UserE",
    "UserF",
    "UserG",
    "UserH",
    "UserI",
    "UserJ",
    "UserK",
    "UserL",
    "UserM",
    "UserN",
    "UserO",
    "UserP",
  ];
  List<String> userSpecialties = [
    "UserPSpecialty",
    "UserOSpecialty",
    "UserNSpecialty",
    "UserMSpecialty",
    "UserLSpecialty",
    "UserKSpecialty",
    "UserJSpecialty",
    "UserISpecialty",
    "UserHSpecialty",
    "UserGSpecialty",
    "UserFSpecialty",
    "UserESpecialty",
    "UserDSpecialty",
    "UserCSpecialty",
    "UserBSpecialty",
    "UserASpecialty"
  ];
  final String avatar = "https://ssl.gstatic.com/images/branding/"
      "product/1x/avatar_square_blue_512dp.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User  List")),
      body: ListView.separated(
        padding: const EdgeInsets.all(15),
        itemCount: userNames.length,
        itemBuilder: (context, index) {
          final username = userNames[index];
          List<String> ruserSpecialties = userSpecialties.reversed.toList();
          final specialty = ruserSpecialties[index];
          return Card(
            shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10.0))),
            elevation: 3,
            child: InkWell(
              onTap: () {
                index % 2 == 0
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (bcontext) => DetailScreen(
                            name: username,
                            specialty: specialty,
                          ),
                        ),
                      )
                    : Navigator.pushNamed(
                        context,
                        DetailScreen.route,
                        arguments: User(
                          name: username,
                          specialty: specialty,
                        ),
                      );
              },
              child: UserListTail(
                avatar: avatar,
                username: username,
                specialty: specialty,
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

class UserListTail extends StatelessWidget {
  const UserListTail({
    this.avatar,
    this.username,
    this.specialty,
  });

  final String avatar;
  final String username;
  final String specialty;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 20,
      leading: CircleAvatar(radius: 30, backgroundImage: NetworkImage(avatar)),
      title: Text(username,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
      subtitle: Text(
        specialty,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.delete_outline,
          size: 35,
          color: Colors.blue,
        ),
      ),
    );
  }
}
