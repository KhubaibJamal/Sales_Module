import 'package:agha_steel_sales_module/const.dart';
import 'package:flutter/material.dart';

import '../../../component/page_header.dart';
import '../../../size_config.dart';
import 'available_stock_box.dart';
import 'balance_order_box.dart';
import 'brand_box.dart';
import 'branding_picture.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // app logo
              Center(child: Image.asset('assets/images/upper logo.png')),

              // header
              const PageHeader(
                title: 'Visit Details',
                textColor: Colors.black,
              ),

              // date and time text
              Text("2024-01-01 | 6:30PM", style: greyTextStyle),

              // detail text
              SizedBox(height: getProportionateScreenWidth(20)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Dealer Name", style: subHeading),
              ),

              // available stock box
              SizedBox(height: getProportionateScreenWidth(20)),
              const AvailableStockBox(),

              // ledger balance and new order details
              SizedBox(height: getProportionateScreenWidth(30)),
              const BottomContainer(),

              // branding
              SizedBox(height: getProportionateScreenWidth(30)),
              const BrandBox(),

              // branding pic
              SizedBox(height: getProportionateScreenWidth(30)),
              const BrandingPicture(),

              SizedBox(height: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ),
    );
  }
}
