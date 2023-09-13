import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../size_config.dart';

class RatingBarComment extends StatelessWidget {
  const RatingBarComment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: SizeConfig.screenWidth! * 0.8,
        height: 150,
        padding: EdgeInsets.all(getProportionateScreenWidth(15)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 5,
              color: Colors.grey,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // star
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              itemCount: 5,
              itemSize: 30.0,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),

            // star comment
            SizedBox(height: getProportionateScreenWidth(10)),
            Text(
              "Good",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
