import 'package:flutter/material.dart';

bool secure = true;

class ShowHide extends StatefulWidget {
  const ShowHide({super.key});

  @override
  State<ShowHide> createState() => _ShowHideState();
}

class _ShowHideState extends State<ShowHide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            obscureText: secure,
            decoration: InputDecoration(
              hintText: 'Enter your Password',
              prefixIcon: const Icon(Icons.lock_outline),
              suffix: InkWell(
                child: Icon(
                  secure ? Icons.visibility_off : Icons.visibility,
                ),
                onTap: () {
                  setState(() {
                    secure = !secure;
                  });
                },
              ),
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            ),
          ),
        ),
      )),
    );
  }
}
