import 'package:agha_steel_sales_module/const.dart';
import 'package:agha_steel_sales_module/size_config.dart';
import 'package:flutter/material.dart';

import '../../../component/text_box.dart';

class DealerDropDown extends StatefulWidget {
  const DealerDropDown({super.key});

  @override
  State<DealerDropDown> createState() => _DealerDropDownState();
}

List<String> dropDownItem = [
  "Jameel Ahmed",
  "Dealer Name 2",
  "Dealer Name 3",
  "Dealer Name 4",
  "Dealer Name 5",
];

class _DealerDropDownState extends State<DealerDropDown> {
  String dropdownValue = dropDownItem.first;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth! * 0.8,
      child: Column(
        children: [
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              label: const Text(
                "Dealer Name",
                style: TextStyle(
                  color: Color(0xFF718096),
                ),
              ),
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
            iconSize: 30.0,
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
          SizedBox(height: getProportionateScreenWidth(15)),
          const TextBox(text: "Phone Number", color: Colors.white),
          SizedBox(height: getProportionateScreenWidth(15)),
          const TextBox(text: "Gulistan-e-Johar", color: Colors.white),
        ],
      ),
    );
  }
}
