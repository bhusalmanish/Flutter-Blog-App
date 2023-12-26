part of 'common_widgets_import.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.r)),
          backgroundColor: MyColors.primaryColor,
          minimumSize: Size(MediaQuery.of(context).size.width, 44),
        ),
        child: title.text
            .size(16.sp)
            .fontWeight(FontWeight.w700)
            .color(Colors.white)
            .make());
  }
}
