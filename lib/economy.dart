library economy;

import 'package:flutter/material.dart';

import 'appcolors.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 3;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: true,
          elevation: 0,
          title: Text(
            "Economy",
            style: TextStyle(
              color: AppColors.two,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: AppColors.two,
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/eco.png"),
              fit: BoxFit.cover,
              opacity: 0.2,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "ARKE",
                      style: TextStyle(
                          color: AppColors.three,
                          fontSize: 35,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(width, 0, width, 50),
                    child: TextField(
                      obscureText: true,
                      cursorColor: AppColors.three,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.three,
                          ),
                        ),
                        fillColor: AppColors.two,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.three,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.two,
                          ),
                        ),
                        labelText: 'Password',
                        hoverColor: AppColors.three,
                        focusColor: AppColors.three,
                        hintStyle: TextStyle(
                          color: AppColors.three,
                        ),
                        helperStyle: TextStyle(
                          color: AppColors.three,
                        ),
                        floatingLabelStyle: TextStyle(
                          color: AppColors.three,
                        ),
                        labelStyle: TextStyle(
                          color: AppColors.two,
                        ),
                      ),
                      onSubmitted: handleInput,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void handleInput(String value) {
  print(value);
}
