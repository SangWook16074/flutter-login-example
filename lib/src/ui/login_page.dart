import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _account;
  late final TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _account = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _account.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _logo(),
              _loginTextFileds(),
              _lginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _logo() => const Icon(
        Icons.lock,
        size: 100,
      );

  Widget _loginTextFileds() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _account,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: "Account",
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(width: 2.0, color: Colors.grey)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: Colors.black))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _password,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "password",
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(width: 2.0, color: Colors.grey)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: Colors.black))),
              ),
            ),
          ],
        ),
      );

  Widget _lginButton() => ElevatedButton(
        style: ElevatedButton.styleFrom(fixedSize: const Size(300, 60)),
        onPressed: () {
          Navigator.of(context).pushNamed("/main");
        },
        child: const Text("Login"),
      );
}
