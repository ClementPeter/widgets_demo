import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets_demo/size_calculator.dart';

class CustomTextFormField extends StatelessWidget {
  final TextStyle? textFormFieldStyle;
  final TextStyle? hintTextStyle;
  final BorderStyle? borderStyle;
  final double? borderRadius;
  final double? borderWidth;
  final double? contentPaddingHorizontal;
  final double? contentPaddingVertical;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final String? prefixText;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? enabledBorderColor, labelColor;
  final Color? fillColor;
  final bool? filled;
  final bool? obscured;
  final bool hasPrefixIcon;
  final bool hasSuffixIcon;
  final TextInputType? textInputType;
  final ValueChanged<String>? onChanged;
  final int? maxLength;
  final bool? maxLengthEnforced;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final String? label;
  final bool? readOnly, enabled;

  CustomTextFormField(
      {this.prefixIcon,
      this.suffixIcon,
      this.textFormFieldStyle,
      this.hintTextStyle,
      this.borderStyle = BorderStyle.none,
      this.borderRadius = 13,
      this.borderWidth = 1,
      this.contentPaddingHorizontal = 12,
      this.contentPaddingVertical = 0,
      this.hintText,
      this.borderColor = Colors.black,
      this.focusedBorderColor = const Color(0xff9A0536),
      this.enabledBorderColor = Colors.black,
      this.fillColor = Colors.white,
      this.filled = true,
      this.hasPrefixIcon = false,
      this.hasSuffixIcon = false,
      this.obscured = false,
      this.textInputType,
      this.enabled,
      this.readOnly,
      this.onChanged,
      this.prefixText,
      this.maxLength,
      this.maxLengthEnforced = false,
      this.validator,
      this.inputFormatters,
      this.controller,
      this.label,
      this.labelColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: heightSizer(5, context)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null)
            Padding(
              padding: EdgeInsets.only(bottom: heightSizer(5, context)),
              child: Text(
                label!,
                style: TextStyle(
                  fontSize: widthSizer(17, context),
                  color: labelColor ?? Colors.grey,
                ),
              ),
            ),
          TextFormField(
            readOnly: readOnly ?? false,
            enabled: enabled,
            controller: controller,
            style: textFormFieldStyle,
            keyboardType: textInputType,
            onChanged: onChanged,
            maxLength: maxLength,
            // maxLengthEnforcement: MaxLengthEnforcement.none,
            validator: validator,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius!),
                borderSide: BorderSide(
                  color: borderColor!,
                  width: borderWidth!,
                  style: borderStyle!,
                ),
              ),
              prefixText: prefixText,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius!),
                borderSide: BorderSide(
                  color: enabledBorderColor!,
                  width: borderWidth!,
                  style: borderStyle!,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius!),
                borderSide: BorderSide(
                  color: focusedBorderColor!,
                  width: borderWidth!,
                  style: borderStyle!,
                ),
              ),
              prefixIcon: hasPrefixIcon ? prefixIcon : null,
              suffixIcon: hasSuffixIcon ? suffixIcon : null,
              contentPadding: EdgeInsets.symmetric(
                horizontal: widthSizer(contentPaddingHorizontal!, context),
                vertical: heightSizer(contentPaddingVertical!, context),
              ),
              hintText: hintText,
              hintStyle: hintTextStyle,
              filled: filled,
              fillColor: fillColor,
            ),
            obscureText: obscured!,
          ),
        ],
      ),
    );
  }
}
