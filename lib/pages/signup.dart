import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:process_order/widgets/app_widgets.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 200.0,
                  height: 200.0,
                  child: Lottie.asset(
                      'assets/images/signup.json'
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "User Name",
                style: appWidget.boldTextStyle(),
              ),
              SizedBox(
                height: 10,
              ),
              appWidget.customTextFormField(
                  labelText: "Name", hintText: "Enter your Name"),
              SizedBox(
                height: 20,
              ),
              Text(
                "User Email",
                style: appWidget.boldTextStyle(),
              ),
              SizedBox(
                height: 10,
              ),
              appWidget.customTextFormField(
                  labelText: "E-Mail", hintText: "Enter your Email"),
              SizedBox(
                height: 20,
              ),
              Text(
                "User Password",
                style: appWidget.boldTextStyle(),
              ),
              SizedBox(
                height: 10,
              ),
              appWidget.customTextFormField(
                  labelText: "Password", hintText: "Enter your Password"),
              SizedBox(
                height: 25,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Signup",
                      style: appWidget.boldHeadlineStyle(),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
