import 'package:e_comerce_small_app/main_page.dart';
import 'package:e_comerce_small_app/widgets/costomButtomwidget.dart';
import 'package:e_comerce_small_app/widgets/custom_texfield_widget.dart';
import 'package:flutter/material.dart';

class Signuppage extends StatelessWidget {
  const Signuppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome Back...",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 10,),
            Text("Let's sign up",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),),
                SizedBox(height: 10,),
                CustomTexFieldWidget( hintText: "Full Name",
                  prefixIcon: Icons.person,
                ),
                SizedBox(height: 10,),
                CustomTexFieldWidget( hintText: "Email",
                  prefixIcon: Icons.email,
                ),
                SizedBox(height: 10,),
                CustomTexFieldWidget( hintText: "Password",
                  prefixIcon: Icons.lock,
                ),
                SizedBox(height: 10,),
                CustomTexFieldWidget( hintText: "Confirm password",
                  prefixIcon: Icons.lock,
                ),
              SizedBox(
              height: 30,
            ),
              CustomButtonWidget(textButton: "Sign Up", onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => MainPage()));
              }),
              SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Don't have account?"),
                   SizedBox(height: 10,),
                  Text("Sign in",style: TextStyle(
                    color: Colors.red,
                  ),),
                ],
              ),
          ],
        ),
      ),

    );

  }
}