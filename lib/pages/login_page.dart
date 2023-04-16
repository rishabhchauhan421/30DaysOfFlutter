import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
          SizedBox(
            height: 20.0,
          ),
          Text("Welcome $name",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (value) => {name = value, setState(() {})}),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    )),
                SizedBox(
                  height: 20.0,
                ),
                // ElevatedButton(
                //   child: Text("Login"),
                //   style: TextButton.styleFrom(),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.HOMEROUTE);
                //   },
                // )
                InkWell(
                  onTap: () => {
                    setState(() {
                      changeButton = !changeButton;
                    })
                  },
                  child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 100,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.deepPurple,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
