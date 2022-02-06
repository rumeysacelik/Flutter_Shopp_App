import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/category.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            demo_categories.length,
            (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: CategoryCard(
                    icon: demo_categories[index].icon,
                    title: demo_categories[index].title,
                    press: () {},
                  ),
                )),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 15,
            color: Colors.black.withOpacity(0.23),
          ),
        ],
      ),
      child: OutlinedButton(
          onPressed: press,
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(defaultBorderRadius)))),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding / 4, vertical: defaultPadding / 2),
            child: Column(
              children: [
                SvgPicture.asset(icon),
                const SizedBox(height: defaultPadding / 2),
                Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
          )),
    );
  }
}
