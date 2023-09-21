import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../const.dart';
import '../../../../size_config.dart';
import 'bg_box.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({
    super.key,
  });

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return BackgroundBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Select Date", style: greyTextStyle),
          SizedBox(height: getProportionateScreenWidth(10)),
          Center(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: kPrimaryColor, width: 1.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${selectedDate.month}/${selectedDate.day}/${selectedDate.year}",
                    style: greyTextStyle,
                  ),
                  GestureDetector(
                    onTap: () async {
                      final DateTime? dateTime = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        builder: (context, child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: const ColorScheme.light(
                                primary: kPrimaryColor,
                                onPrimary: kGreyColor,
                                onSurface: Colors.black,
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );
                      if (dateTime != null) {
                        setState(() {
                          selectedDate = dateTime;
                        });
                      }
                    },
                    child: SvgPicture.asset(
                      'assets/icons/calendar.svg',
                      colorFilter: const ColorFilter.mode(
                        kGreyColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
