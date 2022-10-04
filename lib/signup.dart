import 'package:flutter/material.dart';
import 'package:login_app/login.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  /*Future<void> _alertDialogBuilder(String error) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: const Text("Error"),
            content: Text(error),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Close Dialog"))
            ],
          );
        });
  }

  Future<String?> loginAccount() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: loginEmail, password: loginPassword);

      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak password') {
        return 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exist for that email';
      }
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }

  void _submitForm() async {
    String? createAccountFeedBack = await loginAccount();
    if (createAccountFeedBack != null) {
      _alertDialogBuilder(createAccountFeedBack);
    } else {
      _alertDialogBuilder("Logged In");
    }
  }*/

  String email = "";
  String passwrd = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    hintText: "FullName",
                    prefixIcon: const Icon(Icons.abc),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.mail),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                onChanged: (value) {
                  email = value;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                onChanged: (value) {
                  passwrd = value;
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
                //_submitForm();
              },
              child: const Text(
                "SignUp",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account ?"),
                  TextButton(
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      }),
                      child: const Text("Login"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
