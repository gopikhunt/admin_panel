import 'package:flutter/material.dart';

Widget commonTextField(
    {void Function()? onTap,
      IconData? iconForSuffix,
      TextEditingController? controller,
      required bool status,
      required String Label,
      required bool obscureText ,
        String?  errorText}) {
  return TextFormField(
    onTap: onTap,
    controller: controller,
    cursorHeight: 20,
    cursorWidth: 1,
    obscureText: obscureText,
    cursorColor: Colors.amber.shade700,
    decoration: InputDecoration(
      errorText: errorText,
      labelText: Label,
      labelStyle: const TextStyle(color: Colors.orange, fontSize: 12),
      suffixIcon: IconButton(
        icon: Icon(
          iconForSuffix,
          size: 25,
          color: Colors.orange,
        ),
        onPressed: onTap,
        padding: const EdgeInsets.all(10),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      enabledBorder: const OutlineInputBorder(
        // gapPadding: Checkbox.width,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Colors.orange)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.orange)),
    ),
  );
}
