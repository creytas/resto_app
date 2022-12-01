import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                  cursorColor: Color(0xFFFA4A0C),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                    labelText: 'Phone number',
                    hintText: 'Enter valid phone number as +243 822 561 854',
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
                      return 'Phone number is required';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: TextFormField(
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
                child: TextFormField(
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: TextFormField(
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
                    labelText: 'Confirm password',
                    hintText: 'Confirm your secure password',
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: TextFormField(
                  // controller: dateController(),
                  cursorColor: Color(0xFFFA4A0C),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                    labelText: 'First name',
                    hintText: 'Enter your first name',
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
                      return 'First name is required';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: TextFormField(
                  // controller: dateController(),
                  cursorColor: Color(0xFFFA4A0C),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                    labelText: 'Last name',
                    hintText: 'Enter your last name',
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
                      return 'Last name is required';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: TextFormField(
                  // controller: dateController(),
                  cursorColor: Color(0xFFFA4A0C),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                    labelText: 'Birth date',
                    hintText: 'Enter valid date as MM/DD/AAAA',
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: TextFormField(
                  // controller: dateController(),
                  cursorColor: Color(0xFFFA4A0C),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                    labelText: 'Gender',
                    hintText: 'Male or Female',
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: TextFormField(
                  // controller: dateController(),
                  cursorColor: Color(0xFFFA4A0C),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                    labelText: 'Location adress',
                    hintText: 'Enter your adress',
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
                ),
              ),
              SizedBox(
                height: 50,
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
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: Text(
                    'Sign up',
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
                    'Sign up with Google',
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
