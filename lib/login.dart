import 'package:flutter/material.dart';
import 'package:login_app/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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

  String loginEmail = "";
  String loginPassword = "";

  bool checkboxVal = false;
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
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.mail),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
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
              ),
            ),
            Row(
              children: [
                Checkbox(
                    value: checkboxVal,
                    onChanged: ((bool? value) {
                      if (value != null) {
                        setState(() {
                          checkboxVal = value;
                        });
                      }
                    })),
                const Text(
                  "Remember Me",
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
                const SizedBox(
                  width: 80,
                ),
                TextButton(onPressed: (() {}), child: Text("Forgot password"))
              ],
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
                "Login",
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
                  const Text("Don't have an account ?"),
                  TextButton(
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      }),
                      child: const Text("SignUp"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
