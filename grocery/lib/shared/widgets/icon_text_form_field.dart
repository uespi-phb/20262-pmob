import 'package:flutter/material.dart';

class IconTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final EdgeInsetsGeometry? margin;
  final bool obscuredText;

  const IconTextFormField({
    super.key,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.margin,
    this.obscuredText = false,
  });

  Icon? _suffixIcon() {
    if (!obscuredText) return Icon(suffixIcon);

    return obscuredText ? Icon(Icons.visibility) : Icon(Icons.visibility_off);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextFormField(
        obscureText: obscuredText,
        validator: (value) {
          debugPrint('validator "$labelText" called!');
          return "error validanting";
        },
        decoration: InputDecoration(
          isDense: true,
          labelText: labelText,
          hintText: hintText,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          suffixIcon: _suffixIcon(),
          suffix: suffixIcon != null ? Icon(suffixIcon) : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
        ),
      ),
    );
  }
}
