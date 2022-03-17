import 'package:flutter/material.dart';
import 'package:guest_house_app/utils/validators.dart';

class EmailWidget extends StatelessWidget {
  const EmailWidget(this.getUsername);
  final Function getUsername;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //TODO check other options
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validateEmail,
      onSaved: (value) => getUsername(value),
      autofocus: false,
      style: const TextStyle(fontSize: 16, fontStyle: FontStyle.normal),

      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Enter Your Email",
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          prefixIcon: const Icon(Icons.mail),
          filled: true,
          fillColor: const Color(0xffeff0f6),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.circular(10.0),
          )),
    );
  }
}
