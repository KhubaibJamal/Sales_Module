import 'package:flutter/material.dart';

import '../../../../const.dart';
import '../../../../size_config.dart';
import 'bg_box.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Select Time", style: greyTextStyle),
          SizedBox(height: getProportionateScreenWidth(10)),
          // TimeDropDown(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisSize: MainAxisSize.min,
            children: [
              const Expanded(child: TimeDropDown()),
              SizedBox(width: getProportionateScreenWidth(10)),
              Text(":", style: subHeading),
              SizedBox(width: getProportionateScreenWidth(10)),
              const Expanded(child: TimeDropDown()),
              SizedBox(width: getProportionateScreenWidth(10)),
              Text(":", style: subHeading),
              SizedBox(width: getProportionateScreenWidth(10)),
              const Expanded(child: TimeDropDown()),
            ],
          ),
        ],
      ),
    );
  }
}

class TimeDropDown extends StatefulWidget {
  const TimeDropDown({super.key});

  @override
  State<TimeDropDown> createState() => TimeDropDownState();
}

List<String> dropDownItem = [
  "10",
  "11",
  "12",
  "01",
  "02",
  "03",
];

class TimeDropDownState extends State<TimeDropDown> {
  String dropdownValue = dropDownItem.first;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFE5E7F0),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: kGreyColor),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kGreyColor),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kGreyColor),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
        iconSize: 28.0,
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
        items: dropDownItem.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(
                color: Color(0xFF2D3748),
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
