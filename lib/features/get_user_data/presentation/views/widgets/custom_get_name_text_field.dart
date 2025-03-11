import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomGetNameTextField extends StatefulWidget {
  const CustomGetNameTextField({super.key});

  @override
  State<CustomGetNameTextField> createState() => _CustomGetNameTextFieldState();
}

class _CustomGetNameTextFieldState extends State<CustomGetNameTextField>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    Future.delayed(Duration(milliseconds: 100), () {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      cursorColor: Colors.white,
      validator: (value) {
        if (value == null ||
            value.length < 3 ||
            !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
          return "Enter at least 3 letters";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        hintText: 'Your name',
        hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        border: outlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
    );
  }
}
