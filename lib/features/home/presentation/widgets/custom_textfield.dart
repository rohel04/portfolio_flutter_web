import 'package:flutter/material.dart';

import '../../../../utils/color_util.dart';

class CustomTextField extends StatefulWidget {

  final String hintText;
  final int? maxLine;

  CustomTextField({Key? key, required this.hintText, this.maxLine=1}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        key: const ValueKey('field'),
        validator: (value) {
          if(value!.isEmpty){
            return 'Field is empty';
          }
        },
        maxLines: widget.maxLine,
        decoration:  InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: ColorUtils.kHomeTextWhite),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey
                )
            )
        ),
        style: const TextStyle(
          color: ColorUtils.kHomeTextWhite,
        ),
      ),
    );
  }
}
