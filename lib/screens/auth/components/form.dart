import 'package:flutter/material.dart';
import 'package:legalaid/screens/auth/auth.dart';

import '../../home/home.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  String? errorMessage = '';
  bool _isAuth = true;
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();
  final _confirmationPasswordTextController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  String _buttonText() {
    return _isAuth ? 'LOGIN' : 'SIGNUP';
  }

  String _accountText() {
    return _isAuth ? 'Sign Up' : 'Log In';
  }

  void _clearFields() {
    _controllerEmail.clear();
    _controllerPassword.clear();
    _confirmationPasswordTextController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
          child: TextFormField(
            controller: _controllerEmail,
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.blueAccent,
                ),
              ),
              prefixIcon: Icon(Icons.person),
              border: UnderlineInputBorder(),
              labelText: 'Email',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Email cannot be empty";
              }
              if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                  .hasMatch(value)) {
                return ("Please enter a valid email");
              } else {
                return null;
              }
            },
            onChanged: (value) {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
          child: TextFormField(
            controller: _controllerPassword,
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.blueAccent),
              ),
              labelText: 'Password',
            ),
            validator: (value) {
              RegExp regex = RegExp(r'^.{6,}$');
              if (value!.isEmpty) {
                return "Password cannot be empty";
              }
              if (!regex.hasMatch(value)) {
                return ("please enter valid password min. 6 character");
              } else {
                return null;
              }
            },
            onChanged: (value) {},
          ),
        ),
        _isAuth
            ? Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forget password?',
                    style: TextStyle(color: Colors.black54),
                    textAlign: TextAlign.end,
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                child: TextFormField(
                  controller: _confirmationPasswordTextController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Colors.blueAccent),
                    ),
                    labelText: 'Password Confirmation',
                  ),
                  validator: (value) {
                    if (_confirmationPasswordTextController.text !=
                        _controllerPassword.text) {
                      return "Password did not match";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {},
                ),
              ),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ));
            });

            // signUp(
            //   _controllerEmail.text,
            //   _controllerPassword.text,
            // );
          },
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(2),
            overlayColor: MaterialStateProperty.all(Colors.black12),
            shadowColor: MaterialStateProperty.all(Colors.pink.shade50),
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            fixedSize: MaterialStateProperty.all(const Size(150, 40)),
          ),
          child: Text(
            _buttonText(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _isAuth
                ? const Text('Don\'t have an account?')
                : const Text('You have an account?'),
           const Text('Don\'t have an account?')
          ],
        ),
      ],
    );
  }
}
