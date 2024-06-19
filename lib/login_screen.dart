import 'package:flutter/material.dart';
import 'package:flutter_responsive_login_ui/widgets/gradient_button.dart';
import 'package:flutter_responsive_login_ui/widgets/login_field.dart';
import 'package:flutter_responsive_login_ui/widgets/social_button.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const socialButton = SocialButton(iconPath: 'assets/svgs/g_logo.svg',
               label: 'Continue with Google',
               color: Colors.blue,
               horizontalPadding: 95,);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                'Sign up.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),

                SizedBox(height: 15),
               Text(
                'already have an account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),


                            SizedBox(height: 15),
               Text(
                'login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
           
              SizedBox(height: 15),
              LoginField(hintText: 'Name'),
              
              SizedBox(height: 15),
              LoginField(hintText: 'Email',),
              SizedBox(height: 15),
              LoginField(hintText: 'Password'),
              SizedBox(height: 20),
              GradientButton(),
SizedBox(height: 20),
 Text(
                'or',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),


               SizedBox(height: 20),
              socialButton,

              

              SizedBox(height: 20),
              SocialButton(
                iconPath: 'assets/svgs/f_logo.svg',
                label: 'Continue with Facebook',
                color: Colors.blue,
                horizontalPadding: 85,
              ),
               
              SizedBox(height: 20),
              SocialButton(iconPath: 'assets/svgs/g_logo.svg',
               label: 'Continue with Apple',
               color: Colors.blue,
               horizontalPadding: 95,),

           
           

             ],
          ),
        ),
      ),
    );
  }
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Icon Example'),
        ),
        body: const Center(
          child: Icon(
            IconData(0xe900, fontFamily: 'MyIcons'),
            size: 50.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}