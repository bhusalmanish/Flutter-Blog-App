// part of 'common_widgets_import.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journo_blog/core/constansts/my_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class OutLineButton extends StatelessWidget {
  const OutLineButton({
    required this.title,
    required this.onPressed,
    super.key,
  });
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: MyColors.white),
              borderRadius: BorderRadius.circular(11.r)),
          backgroundColor: Colors.transparent,
          minimumSize: Size(MediaQuery.of(context).size.width, 44),
        ),
        child: title.text
            .size(16.sp)
            .fontWeight(FontWeight.w700)
            .color(MyColors.white)
            .make());
  }
}
