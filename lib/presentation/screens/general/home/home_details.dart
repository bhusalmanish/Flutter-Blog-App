// import 'package:flutter/material.dart';

part of 'home_imports.dart';

@RoutePage()
class HomeDetials extends StatefulWidget {
  const HomeDetials({super.key});

  @override
  State<HomeDetials> createState() => _HomeDetialsState();
}

class _HomeDetialsState extends State<HomeDetials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: " Netflix wil change Money for password Sharing"
            .text
            .color(MyColors.white)
            .ellipsis
            .make(),
      ),
      body: ListView(
        children: [
          Image.asset(
            MyAssets.assetsImagesNetflix,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                10.h.heightBox,
                " Netflix wil change Money for password Sharing"
                    .text
                    .bold
                    .size(18)
                    .make(),
                10.h.heightBox,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(FeatherIcons.eye),
                    "147 Views".text.make(),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.thumbsUp,
                          color: MyColors.green,
                        )),
                    "10".text.make(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.thumbsDown,
                          color: MyColors.red,
                        )),
                    "0".text.make(),
                  ],
                ),
                '''N﻿etflix has scrapped its cheapest ad-free subscription option for a range of countries, including Australia.
The Basic plan was the second cheapest subscription on Netflix, which Australians could purchase for  per month.
In a letter to shareholders, Netflix said ﻿the plan would be "phased out" for new and rejoining members, meaning if you had already purchased a basic plan you would not be forced onto a different one.   N﻿etflix has scrapped its cheapest ad-free subscription option for a range of countries, including Australia.
The Basic plan was the second cheapest subscription on Netflix, which Australians could purchase for 0.99 per month.
In a letter to shareholders, Netflix said ﻿the plan would be
N﻿etflix has scrapped its cheapest ad-free subscription option for a range of countries, including Australia.
The Basic plan was the second cheapest subscription on Netflix, which Australians could purchase for 0.99 per month.
In a letter to shareholders, Netflix said ﻿the plan would be "phased out" for new and rejoining members, meaning if you had already purchased a basic plan you would not be forced onto a different one. "phased out" for new and rejoining members, meaning if you had already purchased a basic plan you would not be forced onto a different one.N﻿etflix has scrapped its cheapest ad-free subscription option for a range of countries, including Australia.
The Basic plan was the second cheapest subscription on Netflix, which Australians could purchase for 0.99 per month.
In a letter to shareholders, Netflix said ﻿the plan would be "phased out" for new and rejoining members, meaning if you had already purchased a basic plan you would not be forced onto a different one.'''
                    .text
                    .make(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
