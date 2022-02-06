import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/category.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/screens/home/components/categories.dart';
import 'package:flutter_application_1/screens/home/components/form_search.dart';
import 'package:flutter_application_1/screens/home/components/new_arrival.dart';
import 'package:flutter_application_1/screens/home/components/popular.dart';
import 'package:flutter_application_1/screens/home/components/product_card.dart';
import 'package:flutter_application_1/screens/home/components/section_title.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"),
            onPressed: () {},
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/Location.svg"),
              const SizedBox(width: defaultPadding / 2),
              Text(
                "İstanbul",
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/Notification.svg")),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w500, color: Colors.black),
                ),
                const Text(
                  "best places to stay",
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: FormSearch(),
                ),
                const Categories(),
                const SizedBox(height: defaultPadding),
                NewArrival(),
                const SizedBox(height: defaultPadding),
                Popular()
              ],
            ),
          ),
        ));
  }
}
