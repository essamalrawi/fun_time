import 'package:flutter/material.dart';

class GetNameTextField extends StatelessWidget {
  const GetNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color(0xfff6e58d),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(0xffffbe76),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                  hintStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  border: outlineInputBorder(),
                ),
              ),
            ),
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
