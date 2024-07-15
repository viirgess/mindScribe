import 'package:flutter/material.dart';
import 'package:mind_scribe/Authentication/components/input_field_app.dart';
import 'package:mind_scribe/Authentication/components/submit_button.dart';
import 'package:mind_scribe/Authentication/pages/login_page.dart';
import 'package:mind_scribe/utils/color_source.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/backgroud_image.png"),
              fit: BoxFit.cover,
              opacity: 0.95,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 85,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text("MindScribe",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: "Ralway")),
              ),
              SizedBox(
                height: 95,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorsSourceApp.lightPurpleWithOpacity,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Create Account',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: ColorsSourceApp.black,
                              fontFamily: "PtSans")),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Let\'s get started by filling out the form below.',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorsSourceApp.lightGrey,
                            fontFamily: "PtSans"),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 56,
                      ),
                      InputFieldApp(hintText: 'Name', isPassword: false),
                      SizedBox(
                        height: 16,
                      ),
                      InputFieldApp(hintText: 'Email', isPassword: false),
                      SizedBox(
                        height: 16,
                      ),
                      InputFieldApp(hintText: 'Password', isPassword: true),
                      SizedBox(
                        height: 35,
                      ),
                      SubmitButton(
                        text: 'Sumbit',
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account? ',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: ColorsSourceApp.lightGrey,
                                fontFamily: "PtSans"),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Login here',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: ColorsSourceApp.black,
                                  fontFamily: "PtSans"),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        )
      ],
    ));
  }
}
