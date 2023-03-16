import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Hokk areat
  String email = "";
  String password = "";
  bool hidenpassword = false;
  bool isChecked = false;

  final _formKey = GlobalKey<FormState>();

  _goToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      await Future.delayed(Duration(milliseconds: 200));
      Navigator.pushNamed(context, "/home");

      _formKey.currentState!.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "MyCart",
              style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.purple,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      email = value;
                      setState(() {});
                    },
                    validator: (value) {
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch('$value');
                      if (value!.isEmpty) {
                        return "email can't be empty";
                      } else if (!emailValid) {
                        return "enter email can't be valid";
                      }
                      return null;
                    },
                    style:
                        TextStyle(fontFamily: "Monster", color: Colors.green),
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      password = value;
                      setState(() {});
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "password can't be empty";
                      } else if (value.length < 10) {
                        return "password length  must be gretter than 10";
                      } else if (value.length > 20) {
                        return "password length  must not be gretter than 20";
                      }
                      return null;
                    },
                    obscureText: hidenpassword ? true : false,
                    decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              debugPrint(" $hidenpassword");
                              hidenpassword = !hidenpassword;
                              setState(() {});
                            },
                            icon: Icon(hidenpassword
                                ? Icons.remove_red_eye
                                : Icons.hide_image))),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    checkColor: Colors.purple,
                    onChanged: (bool? v) {
                      v = !isChecked;
                      setState(() {});
                    }),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "We dont have accounts ?? ",
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: "signup",
                      style: TextStyle(
                          fontStyle: FontStyle.normal, color: Colors.purple))
                ])),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 52,
              width: 310,
              child: ElevatedButton(
                onPressed: () {
                  _goToHome(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "LoGin",
                  style: TextStyle(
                      color: Color.fromARGB(255, 245, 242, 242),
                      fontFamily: "Monster"),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
