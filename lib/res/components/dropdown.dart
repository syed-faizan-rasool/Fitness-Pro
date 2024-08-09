

import 'package:fitness_pro/res/constants/colors.dart';
import 'package:fitness_pro/res/constants/fonts.dart';
import 'package:flutter/material.dart';

class CustomDropdownMenu<T> extends StatelessWidget {
  final T? value;
  final List<T> items;
  final String labelText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final Function(T?)? onChanged;
  final Color? fillColor;
  final Color? prefixIconColor;
  final Color? borderColor;
  final Color? labelColor;

  const CustomDropdownMenu({
    super.key,
    this.value,
    required this.items,
    required this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.fillColor,
    this.prefixIconColor,
    this.borderColor,
    this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    T? dropdownValue = items.contains(value) ? value : items.first;

    return DropdownButtonFormField<T>(
      value: dropdownValue,
      items: items.map<DropdownMenuItem<T>>((T item) {
        return DropdownMenuItem<T>(
          value: item,
          child: SizedBox(
            width: 95,
            child: Text(
              item.toString(),
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: CustomFontSize.small(context),
                color: AppColor.black,
              ),
            ),
          ),
        );
      }).toList(),
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: CustomFontSize.large(context),
          color: labelColor ?? AppColor.lightBlue,
        ),
        prefixIcon:
            Icon(prefixIcon, color: prefixIconColor ?? AppColor.primaryTheme),
        suffixIcon: suffixIcon,
        suffixIconConstraints: const BoxConstraints(minWidth: 24, minHeight: 24),
        suffixIconColor: AppColor.primaryTheme,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: AppColor.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
              color: borderColor ?? AppColor.secondaryTheme, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: AppColor.darkGrey),
        ),
        filled: true, // Set filled to true
        fillColor:
            fillColor ?? Colors.white, // Use fillColor or default to white
      ),
    );
  }
}
