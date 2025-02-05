import 'package:flutter/material.dart';

class GetNameTextField extends StatelessWidget {
  const GetNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            cursorColor: Colors.black,
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
              filled: true,
              fillColor: const Color.fromARGB(45, 116, 115, 115),
              hintText: 'Your name',
              border: outlineInputBorder(),
            ),
            style: const TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          width: 50,
          child: Icon(Icons.close, color: Colors.red),
        )
      ],
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
    );
  }
}
