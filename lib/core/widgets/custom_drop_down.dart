import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({
    super.key,
    required this.label,
    required this.items,
    this.selectedItem,
    this.onChanged,
    this.width,
  });

  final String label;
  final List<String> items;
  final String? selectedItem;
  final ValueChanged<String>? onChanged;
  final double? width;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.selectedItem ?? widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: widget.width ?? MediaQuery.of(context).size.width * 0.9,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: ColorsManager.primaryColor.withAlpha(30),
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: Colors.transparent),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: _selectedItem,
            icon: Image.asset(
              IconsAssets.arrowDown,
              color: ColorsManager.primaryColor,
            ),
            style: TextStyle(
              color: ColorsManager.primaryColor,
              fontSize: 16.sp,
            ),
            onChanged: (String? newValue) {
              setState(() {
                _selectedItem = newValue;
              });
              if (widget.onChanged != null && newValue != null) {
                widget.onChanged!(newValue);
              }
            },
            items: widget.items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
          ),
        ),
      ),
    );
  }
}
