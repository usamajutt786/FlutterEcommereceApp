import 'package:flutter/material.dart';
import 'package:usama/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool buttonAmination = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(
        () {
          buttonAmination = true;
        },
      );
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homepage);
      setState(() {
        buttonAmination = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      //single child scroll view iss liy lagaya ha k jab screen choti ho jay gi to phir
      // side over flow erro na aye balky wo scroll ho jay
      child: SingleChildScrollView(
        child: Container(
            child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "WelCome $name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "UseerName is Empty";
                        } else
                          return null;
                      },
                      //onchange value return kary ga jo ham ny input field me likhi ha
                      onChanged: ((value) {
                        name = value;
                        setState(() {});
                      }),
                    ),
                    TextFormField(
                      //ye iss liy ha k text nazar na aye
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password is Empty";
                        } else
                          return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // ye button ham use ni kar rahy iski jaha ham container use kar rahy han ta k ham
                    // us container me annimation add kar sakin

                    InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: buttonAmination ? 40 : 45,
                        width: buttonAmination ? 40 : 150,
                        alignment: Alignment.center,
                        child: buttonAmination
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                        decoration: BoxDecoration(
                          borderRadius: buttonAmination
                              ? BorderRadius.circular(20)
                              : BorderRadius.circular(8),
                          color: Colors.blue,
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: (() {
                    //     Navigator.pushNamed(context, MyRoutes.homepage);
                    //   }),
                    //   child: Text("LOGIN"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    // )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
