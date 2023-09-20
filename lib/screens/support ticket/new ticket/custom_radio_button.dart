import 'package:flutter/material.dart';
import '../../../component/default_button.dart';
import '../../../component/feedback_box.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({super.key});

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  String? currentOption;
  bool isRadioOneSelected = false;
  bool isRadioTwoSelected = false;
  bool isRadioThreeSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // two radio buttons
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Row(
            children: [
              Radio(
                activeColor: kPrimaryColor,
                value: "Data Record",
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                    isRadioOneSelected = !isRadioOneSelected;
                    isRadioTwoSelected = false;
                    isRadioThreeSelected = false;
                  });
                },
              ),
              Text("Data Record", style: subHeading),
              Radio(
                activeColor: kPrimaryColor,
                value: "General",
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                    isRadioTwoSelected = !isRadioTwoSelected;
                    isRadioOneSelected = false;
                    isRadioThreeSelected = false;
                  });
                },
              ),
              Text("General", style: subHeading),
            ],
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Row(
            children: [
              Radio(
                activeColor: kPrimaryColor,
                value: "Product Related",
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                    isRadioThreeSelected = !isRadioThreeSelected;
                    isRadioOneSelected = false;
                    isRadioTwoSelected = false;
                  });
                },
              ),
              Text("Product Related", style: subHeading),
            ],
          ),
        ),

        // if complaints it selected
        if (isRadioOneSelected || isRadioTwoSelected || isRadioThreeSelected)
          Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FeedbackContainer(text: "Late Delivery"),
                  FeedbackContainer(text: "Wrong Product"),
                ],
              ),
              SizedBox(height: getProportionateScreenWidth(15)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FeedbackContainer(text: "Staff behavior"),
                  FeedbackContainer(text: "Others"),
                ],
              ),
            ],
          ),

        //  feedback text
        SizedBox(height: getProportionateScreenWidth(20)),
        const FeedbackBox(text: "Message"),

        // submit button
        SizedBox(height: getProportionateScreenWidth(18)),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.9,
          height: 50,
          child: DefaultButton(
            text: "Submit",
            textColor: const Color(0xFFC6C6C6),
            backgroundColor: kPrimaryColor,
            // backgroundColor:
            //     isRadioOneSelected || isRadioTwoSelected || isRadioThreeSelected
            //         ? kPrimaryColor
            //         : const Color(0xFFDFDFDF),
            press: () {},
            borderRadius: 10,
          ),
        ),
      ],
    );
  }
}

class FeedbackContainer extends StatefulWidget {
  final String text;
  const FeedbackContainer({
    super.key,
    required this.text,
  });

  @override
  State<FeedbackContainer> createState() => _FeedbackContainerState();
}

class _FeedbackContainerState extends State<FeedbackContainer> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isTapped = !isTapped;
          });
        },
        child: Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(5)),
          decoration: BoxDecoration(
            color: isTapped ? kPrimaryColor : Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            widget.text,
            style: subHeading.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
