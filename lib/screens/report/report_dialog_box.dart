import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../component/default_button.dart';
import '../../const.dart';
import '../../size_config.dart';

class ReportDialogBox extends StatefulWidget {
  const ReportDialogBox({super.key});

  @override
  State<ReportDialogBox> createState() => _ReportDialogBoxState();
}

class _ReportDialogBoxState extends State<ReportDialogBox> {
  bool isSubmitted = false;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          color: kPrimaryColor,
          width: 1.5,
        ),
      ),
      title: const ReportPopUpTitle(),
      content: isSubmitted
          ? SizedBox(
              height: SizeConfig.screenHeight! / 3.5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/submit icon.svg'),
                  SizedBox(height: getProportionateScreenWidth(12)),
                  Text("Submitted", style: subHeading),
                  SizedBox(height: getProportionateScreenWidth(12)),
                ],
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                  height: SizeConfig.screenHeight! / 3.5,
                  width: SizeConfig.screenWidth! * 0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    border: Border.all(width: 1.5, color: kGreyColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    maxLines: 3,
                    style: subHeading.copyWith(
                        fontSize: getProportionateScreenWidth(17)),
                    decoration: const InputDecoration(
                      hintText: "Add your concerns",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: SizeConfig.screenWidth! * 0.5,
                  height: 50,
                  child: DefaultButton(
                    text: "Submit",
                    textColor: Colors.white,
                    backgroundColor: kPrimaryColor,
                    borderRadius: 10,
                    press: () {
                      setState(() {
                        isSubmitted = !isSubmitted;
                      });

                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   SnackBar(
                      //     content: Text("Data"),
                      //     dismissDirection: DismissDirection.up,
                      //     behavior: SnackBarBehavior.floating,
                      //     margin: EdgeInsets.only(
                      //       left: getProportionateScreenWidth(10),
                      //       right: getProportionateScreenWidth(10),
                      //       bottom: SizeConfig.screenHeight! - 150,
                      //     ),
                      //   ),
                      // );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}

class ReportPopUpTitle extends StatelessWidget {
  const ReportPopUpTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/report2  icon.svg'),
        const SizedBox(width: 10),
        Text("Report", style: subHeading),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
      ],
    );
  }
}
