import 'package:e_comerce_small_app/main_page.dart';
import 'package:e_comerce_small_app/widgets/costomButtomwidget.dart';
import 'package:e_comerce_small_app/widgets/custom_outline_buttom_widget.dart';
import 'package:e_comerce_small_app/widgets/custom_texfield_widget.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcom back,",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Let's sign in",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomTexFieldWidget(
              hintText: 'Email',
              prefixIcon: Icons.email,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTexFieldWidget(
              hintText: 'Password',
              prefixIcon: Icons.lock,
              suffixIcon: Icons.visibility,
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "forgot password",
                style: TextStyle(
                  color: Color(0xffE96E6E),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomButtonWidget(textButton: "Sign in", onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => MainPage()));
            }),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Color(0xffD9D9D9)),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8), // Add padding
                  child: Text("Or connect with"),
                ),
                Expanded(child:
                 Divider(
                  thickness: 2,
                  color: Color(0xffD9D9D9))),
              ],
            ),
            SizedBox(height: 15,),
            CustomOutlineButtomWidget(textButton: "coutinuse with google", IconsPath: 'Google.icon.png'),
            SizedBox(height: 15,),
            CustomOutlineButtomWidget(textButton: "coutinuse with google", IconsPath: 'facebook.icon.png'),
            SizedBox(height:25 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("don't have account!"),
                SizedBox(height: 15,),
                Text("sign Up",style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
