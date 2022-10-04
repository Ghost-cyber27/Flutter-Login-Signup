import 'package:flutter/material.dart';

class Forgotten extends StatefulWidget {
  const Forgotten({Key? key}) : super(key: key);

  @override
  State<Forgotten> createState() => _ForgottenState();
}

class _ForgottenState extends State<Forgotten> {
  // ignore: non_constant_identifier_names
  String Email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 250,
              width: double.infinity,
              color: Colors.blue,
              child: const Icon(
                Icons.message_sharp,
                color: Colors.white,
                size: 150.0,
              )),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter Email",
                  prefixIcon: const Icon(Icons.mail),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              onChanged: (value) {
                Email = value;
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          RawMaterialButton(
            constraints: BoxConstraints.tight(const Size(350, 66)),
            fillColor: Colors.blue,
            elevation: 0.0,
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            onPressed: () {
              /*
              FirebaseAuth.instance
                        .sendPasswordResetEmail(email: Email)
                        .then((value) => Navigator.of(context).pop());FirebaseAuth.instance
                        .sendPasswordResetEmail(email: Email)
                        .then((value) => Navigator.of(context).pop());*/
            },
            child: const Text(
              "Reset",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
