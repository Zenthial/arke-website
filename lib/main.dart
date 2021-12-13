import 'package:flutter/material.dart';
import 'package:website/appcolors.dart';
import 'package:website/economy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "Poppins"),
        home: const Home());
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "ARKE",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: const Icon(Icons.eco),
              splashRadius: 15,
              splashColor: AppColors.two,
              hoverColor: AppColors.hover,
              color: AppColors.two,
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PasswordPage(),
                  ),
                ),
              },
            ),
          ),
        ],
      ),
      body: createBody(context),
    );
  }
}

Widget createBody(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Center(
    child: SingleChildScrollView(
      child: Column(
        children: [makeFirst(width, height), makeFirst(width, height), makeFirst(width, height)],
      ),
    ),
  );
}

Widget makeFirst(double width, double height) {
  Padding pad = Padding(
    padding: EdgeInsets.only(left: width / 30),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: SizedBox(
            width: width / 2.2,
            child: Text(
              "AN EXPERIENCE NEVER SEEN ON ROBLOX",
              style: TextStyle(
                color: AppColors.two,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: SizedBox(
            width: width / 2.2,
            child: Text(
              """  The goal of Arke is to provide an experience that pulls commonly loved experiences on the platform together into one, never before seen experience. \n\n  The world of Arke will combine clans, with roleplay, with politics, all surrounded by a MMO-like experience where users can encounter Player versus Environment and Player versus Player situations.""",
              style: TextStyle(
                  color: AppColors.two,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ],
    ),
  );
  return Padding(
    padding: const EdgeInsets.only(top: 30.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        pad,
        Image.asset(
          "assets/placeholder.jpg",
          width: width / 2.2,
          height: height / 3,
        ),
      ],
    ),
  );
}
