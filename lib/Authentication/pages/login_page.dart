import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mind_scribe/Authentication/components/input_field_app.dart';
import 'package:mind_scribe/Authentication/components/submit_button.dart';
import 'package:mind_scribe/Authentication/pages/register_page.dart';
import 'package:mind_scribe/utils/color_source.dart';
import 'package:mind_scribe/utils/images.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: ImagesSource.backgroundImage,
              fit: BoxFit.cover,
              opacity: 0.95,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
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
              const SizedBox(
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
                      Text('Welcome Back',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: ColorsSourceApp.black,
                              fontFamily: "PtSans")),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Fill out the information below in order to access your account.',
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
                            'Don\'t have an account?',
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
                                  builder: (context) => const RegisterPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign Up',
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
