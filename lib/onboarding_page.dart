import 'package:e_comerce_small_app/signin_Page.dart';
import 'package:e_comerce_small_app/signupPage.dart';
import 'package:e_comerce_small_app/widgets/costomButtomwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Image.asset("assets/images/E-monsit.png"),
            Text(
              textAlign: TextAlign.center,
              "Enterprise Team Managerment ",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              "an extensive menu prepared by talented chefs, fresh qualithy food.",
              style: TextStyle(
                color: Color(0xffAFAFAF),
                fontSize: 17,
              ),
            ),
             SizedBox(height: 40,),           
            CustomButtonWidget(textButton: "Sign Up", onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> SigninPage()));
            }),
            SizedBox(height: 15,),
            OutlinedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Signuppage()));
                },
                child: Text(
                  "already have an account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
