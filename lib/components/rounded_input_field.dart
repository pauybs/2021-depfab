import 'package:flutter/material.dart';
import 'package:login/components/text_field_container.dart';
import 'package:login/constants.dart';

class RoundedInputField extends StatelessWidget {
  final Widget child;
  final hint;
  final bool obsecure;
  final FormFieldValidator<String> validator;
  final FormFieldSetter<String> onSaved;
  final String hintText;
  final IconData icon;

  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.child,
    this.hint,
    this.obsecure,
    this.validator,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onSaved: onSaved,
        validator: validator,
        autofocus: true,
        //obscureText: obsecure,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
