import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../component/icon_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';

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

                  // hours
                  SizedBox(height: getProportionateScreenWidth(18)),
                  const Hours(),

                  // details
                  SizedBox(height: getProportionateScreenWidth(18)),
                  Text("Details", style: subHeading),
                  SizedBox(height: getProportionateScreenWidth(12)),
                  const DealerDetails(),

                  // add another location
                  SizedBox(height: getProportionateScreenWidth(18)),
                  const IconTextContainer(
                    text: "Add another location",
                    icon: 'assets/icons/current location.svg',
                  ),

                  //check in to diff location
                  SizedBox(height: getProportionateScreenWidth(18)),
                  const CheckInText(),

                  // check in and out
                  SizedBox(height: getProportionateScreenWidth(18)),
                  const IconTextContainer(
                    text: "Check-In",
                    icon: 'assets/icons/check in icon.svg',
                  ),
                  const IconTextContainer(
                    text: "Check-Out",
                    icon: 'assets/icons/check out icon.svg',
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
    return Container(
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
    );
  }
}

class IconTextContainer extends StatelessWidget {
  final String text, icon;
  const IconTextContainer({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class DealerDetails extends StatelessWidget {
  const DealerDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Phone", style: greyTextStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "+92 (300) 327-10-45",
                style: subHeading.copyWith(color: kPrimaryColor),
              ),
              GestureDetector(
                onTap: () {
                  // navigate to dealer location
                },
                child: Container(
                  width: 50,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: kPrimaryColor,
                  ),
                  child: Center(
                    child: Text(
                      "Edit",
                      style: subHeading.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(thickness: 1.0, color: kGreyColor),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Address", style: greyTextStyle),
              SvgPicture.asset('assets/icons/dealer address.svg'),
            ],
          ),
          Text(
            "Gulshan-e-Iqbal\nblock-5\nKarachi\n74000",
            style: subHeading,
          ),
        ],
      ),
    );
  }
}

class Hours extends StatelessWidget {
  const Hours({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hours", style: greyTextStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("09:00 - 18:00", style: subHeading),
              const Icon(Icons.arrow_drop_down_sharp, color: kGreyColor),
            ],
          ),
          Text(
            "Closed",
            style: greyTextStyle.copyWith(
              color: const Color(0xFFDF563F),
            ),
          ),
        ],
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
