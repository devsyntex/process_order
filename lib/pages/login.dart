import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:process_order/widgets/app_widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(),
      body: Container(
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
                  'assets/images/login_ui.json'
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
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
            Container(
              alignment: Alignment.topRight,
              child: Text(
                "forgot password?",
                style: appWidget.semiBoldHeadlineStyle(),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: appWidget.boldHeadlineStyle(),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
