import 'package:flutter/material.dart';

class appWidget {
  // Static TextStyles
  static TextStyle boldHeadlineStyle() {
    return const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  static TextStyle semiBoldHeadlineStyle() {
    return const TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      color: Colors.black38,
    );
  }

  static TextStyle boldTextStyle() {
    return const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }

  // Custom TextFormField as a Static Widget
  static Widget customTextFormField({
    required String labelText,
    required String hintText,
    TextEditingController? controller,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $labelText';
        }
        return null;
      },
    );
  }
}
