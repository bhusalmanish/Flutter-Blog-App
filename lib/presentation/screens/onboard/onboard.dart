part of 'onboard_import.dart';

@RoutePage()
class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  OnBoardViewModel onBoardViewModel = OnBoardViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              10.h.heightBox,
              Image.asset(
                MyAssets.assetsImagesMainLogo,
                height: 42.h,
                width: 139.w,
                color: MyColors.primaryColor,
              ),
              63.h.heightBox,
              PageView(
                controller: OnBoardViewModel.pageController,
                children: const [
                  OnboardFirst(),
                  OnboardSecond(),
                  OnboardThird(),
                ],
              ).expand(),
              ElevatedButton(
                  onPressed: () =>
                      // Utils.manipulateLogin(),
                      // TagRepo().getAllTags(),
                      // ApiClient().getRequests(path: ApiEndpoint.tags),
                      AutoRouter.of(context).push(const AuthRoute()),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.r)),
                    backgroundColor: MyColors.primaryColor,
                    minimumSize: Size(MediaQuery.of(context).size.width, 44),
                  ),
                  child: "Get Started"
                      .text
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .color(Colors.white)
                      .make()),

              // token Test

              61.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Skip"
                      .text
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .color(MyColors.primaryColor)
                      .make(),
                  SmoothPageIndicator(
                    controller: OnBoardViewModel.pageController,
                    count: 3,
                    // axisDirection: Axis.vertical,
                    effect: const WormEffect(
                        spacing: 8.0,
                        // radius: 4.0,
                        dotWidth: 12.0,
                        dotHeight: 12.0,
                        // paintStyle: PaintingStyle.stroke,
                        strokeWidth: 1.5,
                        dotColor: Colors.grey,
                        activeDotColor: MyColors.primaryColor),
                  ),
                  "Next"
                      .text
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .color(MyColors.primaryColor)
                      .make(),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
