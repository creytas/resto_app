import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _user_controller = TextEditingController(),
      _password_controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    _user_controller.text = "";
    _password_controller.text = "";
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _user_controller.dispose();
    _password_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: TextFormField(
                  controller: _user_controller,
                  cursorColor: Color(0xFFFA4A0C),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                    labelText: 'Email adress',
                    hintText: 'Enter valid mail id as abc@email.com',
                    hintStyle: TextStyle(color: Colors.black38),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade800,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFA4A0C),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _password_controller,
                      cursorColor: Color(0xFFFA4A0C),
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: Colors.grey.shade800,
                        ),
                        labelText: 'Password',
                        hintText: 'Enter your secure password',
                        hintStyle: TextStyle(color: Colors.black38),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade800,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFA4A0C),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required.';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          //TODO FORGOT PASSWORD SCREEN GOES HERE
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Color(0xFFFA4A0C),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xFFFA4A0C),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print("{ user: " +
                          _user_controller.text +
                          ", password: " +
                          _password_controller.text +
                          " }");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 50,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  Expanded(
                    child: Divider(
                      height: 50,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                ],
              ),
              Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFFA4A0C),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: Text(
                    'Sign in with Google',
                    style: TextStyle(
                      color: Color(0xFFFA4A0C),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
