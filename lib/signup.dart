import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';
import 'contraints.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(gradient: bg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.grey,
                      size: 30,
                    )),
                SizedBox(
                  height: 30,
                ),
                Center(child: SizedBox(width: 150, child: LogoImage)),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Sign up with email?",
                  style: TextStyle(
                      color: Color.fromARGB(192, 255, 255, 255),
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Phone number", style: light_text),
                TextFormField(
                    decoration: new InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                )),
                SizedBox(
                  height: 25,
                ),
                Text("Password", style: light_text),
                TextFormField(
                    decoration: new InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                )),
                SizedBox(
                  height: 25,
                ),
                Text("Re-enter password", style: light_text),
                TextFormField(
                    decoration: new InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                )),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(onclickFunction: () {}, text: "Sign up"),
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: Text(
                    "By clicking on sing up, you agree to our",
                    style: TextStyle(
                        color: Color.fromARGB(150, 255, 255, 255),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Terms of use",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
