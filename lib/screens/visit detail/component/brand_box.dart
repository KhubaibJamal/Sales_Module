import 'package:flutter/material.dart';

import '../../../component/feedback_box.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class BrandBox extends StatefulWidget {
  const BrandBox({
    super.key,
  });

  @override
  State<BrandBox> createState() => _BrandBoxState();
}

List<String> dropDownItem = [
  "Branding",
  "Price",
  "Events",
  "Offering",
];

class _BrandBoxState extends State<BrandBox> {
  String dropdownValue = dropDownItem.first;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth!,
      // height: SizeConfig.screenWidth! * 0.4,
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            blurRadius: 15,
            color: Colors.grey.withOpacity(0.2),
          ),
        ],
      ),
      child: Column(
        children: [
          // drop down
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: kGreyColor),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kGreyColor),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kGreyColor),
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

          // text box
          SizedBox(height: getProportionateScreenWidth(10)),
          const FeedbackBox(text: 'Enter Your Description'),
        ],
      ),
    );
  }
}
