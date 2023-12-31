import 'package:airbnb_app/home/home_header_appbar.dart';
import 'package:airbnb_app/home/home_header_form.dart';
import 'package:airbnb_app/size.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: header_height,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(gap_m),
          child: Column(
            children: [
              HomeHeaderAppBar(),
              HomeHeaderForm(),
            ],
          ),
        ),
      ),
    );
  }
}
