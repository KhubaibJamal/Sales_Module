import 'package:agha_steel_sales_module/screens/dealer%20location/dealer_location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../component/dealer_details.dart';
import '../../../component/dealer_time_box.dart';
import '../../../component/icon_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';
import 'check_in_pop_up.dart';

class DealerBottomSheet extends StatelessWidget {
  const DealerBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.7,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // name
            const DealerName(),

            // button
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10),
                vertical: getProportionateScreenWidth(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // button
                  const DealerButton(),

                  // DealerTimeBox
                  SizedBox(height: getProportionateScreenWidth(18)),
                  const DealerTimeBox(),

                  // details
                  SizedBox(height: getProportionateScreenWidth(18)),
                  Text("Details", style: subHeading),
                  SizedBox(height: getProportionateScreenWidth(12)),
                  const DealerDetails(),

                  // add another location
                  SizedBox(height: getProportionateScreenWidth(18)),
                  IconTextContainer(
                    text: "Add another location",
                    icon: 'assets/icons/current location.svg',
                    press: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(
                          context, DealerLocationScreen.routeName);
                    },
                  ),

                  //check in to diff location
                  SizedBox(height: getProportionateScreenWidth(18)),
                  const CheckInText(),

                  // check in and out
                  SizedBox(height: getProportionateScreenWidth(18)),
                  IconTextContainer(
                    text: "Check-In",
                    icon: 'assets/icons/check in icon.svg',
                    press: () {},
                  ),
                  IconTextContainer(
                    text: "Check-Out",
                    icon: 'assets/icons/check out icon.svg',
                    press: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckInText extends StatelessWidget {
  const CheckInText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // show dialog box
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const CheckInPopUp();
          },
        );
      },
      child: Container(
        width: SizeConfig.screenWidth!,
        padding: EdgeInsets.all(getProportionateScreenWidth(10)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          "Check-in to different location",
          style: subHeading.copyWith(
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}

class IconTextContainer extends StatelessWidget {
  final String text, icon;
  final VoidCallback press;
  const IconTextContainer({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(10)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            SvgPicture.asset(icon),
            Text(
              text,
              style: subHeading.copyWith(
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DealerButton extends StatelessWidget {
  const DealerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: SizeConfig.screenWidth! * 0.7,
          child: DefaultButtonWithIcon(
            text: "7 minutes",
            icon: 'assets/icons/car icon.svg',
            press: () {},
          ),
        ),
        const Spacer(),
        SvgPicture.asset('assets/icons/more icon.svg'),
        const Spacer(),
      ],
    );
  }
}

class DealerName extends StatelessWidget {
  const DealerName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // name
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Jameel Ahmed", style: subHeading),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),

          // dealers details
          const Text("Dealer Details"),
        ],
      ),
    );
  }
}
