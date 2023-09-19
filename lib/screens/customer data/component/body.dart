import 'package:flutter/material.dart';

import '../../../component/page_header.dart';
import '../../../size_config.dart';
import 'customer_graph.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // app logo
              Center(child: Image.asset('assets/images/upper logo.png')),

              // header
              const PageHeader(
                title: 'Ejaz Ahmed',
                textColor: Colors.black,
              ),

              // graph
              SizedBox(height: getProportionateScreenWidth(20)),
              const CustomerGraph(),
            ],
          ),
        ),
      ),
    );
  }
}
