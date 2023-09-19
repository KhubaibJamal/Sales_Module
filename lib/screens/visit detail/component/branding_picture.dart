import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class BrandingPicture extends StatelessWidget {
  const BrandingPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Branding pics", style: subHeading),
              Text(
                "See All",
                style: subHeading.copyWith(color: kPrimaryColor),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenWidth(10)),
          GridView.builder(
            itemCount: 6,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) {
              return Container(
                color: kPrimaryColor,
                child: Center(
                  child: Text("$index"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
