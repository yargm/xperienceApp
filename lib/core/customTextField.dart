import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xperiences/core/colors.dart';
import 'package:xperiences/core/responsive.dart';

class CustomTextField extends StatefulWidget {
  final String? labelText;
  final Color? labelTextColor;
  final double? labelTextSize;
  final FontWeight? labelTextFont;
  final String? hintText;
  final Color? hintTextColor;
  final bool? showErrorState;
  final String? errorMessage;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final TextAlign? textAlign;
  final bool? isPasswordField;
  final FocusNode? currentFocus;
  final FocusNode? nextFocus;
  final Color? color;
  final Color? errorColor;
  final FormFieldValidator? validator;
  final bool? enabled;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? maxLines;
  final TextCapitalization? textCapitalization;
  final Color? underlineColor;
  final int? maxLenght;
  final bool? readOnly;
  final bool? lengthEnforcement;

  // ignore: use_key_in_widget_constructors
  const CustomTextField({
    this.lengthEnforcement,
    this.maxLines = 1,
    this.labelTextFont,
    this.labelTextSize,
    this.labelTextColor,
    this.suffixIcon,
    this.enabled,
    this.labelText,
    this.showErrorState,
    this.prefixIcon,
    this.errorMessage,
    this.hintText,
    this.hintTextColor = Colors.grey,
    this.isPasswordField = false,
    this.textInputAction,
    this.currentFocus,
    this.nextFocus,
    this.validator,
    this.color = Colors.grey,
    this.errorColor = Colors.red,
    this.keyboardType = TextInputType.text,
    this.textAlign = TextAlign.start,
    this.textCapitalization,
    this.underlineColor = Colors.grey,
    this.maxLenght,
    this.readOnly = false,
    this.controller,
  });

  @override
  State<StatefulWidget> createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  bool _hasErrors = false;
  bool _isPasswordRevealed = false;

  Color? get currentColor => _hasErrors ? widget.errorColor : widget.color;
  Color? get colorHint => _hasErrors ? widget.errorColor : widget.hintTextColor;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return TextFormField(
        maxLengthEnforcement: widget.lengthEnforcement != null
            ? MaxLengthEnforcement.enforced
            : null,
        style: TextStyle(
            // fontFamily: CustomFonts.myriadPro,
            color: Colors.grey,
            fontSize: responsive.width * .05),
        enabled: widget.enabled,
        readOnly: widget.readOnly ?? false,
        textAlign: widget.textAlign ?? TextAlign.start,
        // style: Theme.of(context).textTheme.caption,
        controller: widget.controller,
        textInputAction: widget.textInputAction,
        keyboardType: widget.keyboardType,
        obscureText: (widget.isPasswordField != null &&
            widget.isPasswordField! &&
            !_isPasswordRevealed),
        focusNode: widget.currentFocus,
        textCapitalization: TextCapitalization.sentences,
        onFieldSubmitted: (term) {
          if (widget.nextFocus != null) {
            FocusScope.of(context).requestFocus(widget.nextFocus);
          }
        },
        validator: (value) {
          final validatorMessage =
              widget.validator == null ? null : widget.validator!(value);
          setHasErrors(validatorMessage != null);
          if (validatorMessage != null) return validatorMessage;
        },
        cursorColor: CustomColor.azul_dos,
        maxLength: widget.maxLenght,
        decoration: InputDecoration(
          focusColor: Colors.grey,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          suffixIcon: getSuffixIcon(),
          prefixIcon: widget.prefixIcon,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          hintText: widget.hintText,
          hintStyle: TextStyle(
              // fontFamily: CustomFonts.myriadPro,
              color: colorHint,
              fontSize: responsive.width * .05),
          labelText: widget.labelText,
          labelStyle: TextStyle(
              // fontFamily: CustomFonts.myriadPro,
              color: currentColor,
              fontSize: responsive.width * .05),
        ));
  }

  setHasErrors(bool errors) => setState(() {
        _hasErrors = errors;
      });

  Widget? getSuffixIcon() {
    if (widget.isPasswordField != null && widget.isPasswordField!) {
      return GestureDetector(
          onTap: () {
            setState(() {
              _isPasswordRevealed = !_isPasswordRevealed;
            });
          },
          child: _isPasswordRevealed
              ? widget.suffixIcon != null
                  ? ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 28.0, minWidth: 28.0),
                      child: IconTheme.merge(
                        data: const IconThemeData(color: Colors.black45),
                        child: Container(
                            width: 45,
                            height: 45,
                            alignment: const Alignment(-0.2, 0.0),
                            child: Icon(
                              Icons.visibility_off,
                              color: _hasErrors ? Colors.red : Colors.black45,
                            )),
                      ),
                    )
                  : null
              : widget.suffixIcon);
    } else if (_hasErrors) {
      return ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 28.0, minWidth: 28.0),
        child: IconTheme.merge(
          data: const IconThemeData(color: Colors.grey, size: 15),
          child: Container(
              width: 45,
              height: 45,
              alignment: const Alignment(-0.2, 0.0),
              child: Icon(
                Icons.close,
                size: 15,
                color: _hasErrors ? Colors.red[900] : Colors.grey,
              )),
        ),
      );
    } else {
      return widget.suffixIcon;
    }
  }
}
