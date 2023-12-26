part of 'auth_imports.dart';

@RoutePage()
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height.h,
        width: MediaQuery.of(context).size.width.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  MyAssets.assetsImagesAuthBg,
                ))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              40.heightBox,
              Image.asset(
                MyAssets.assetsImagesMainLogo,
                height: 42.h,
                width: 139.w,
              ).centered(),
              const Spacer(),
              "Explore the world, \n  Billions of Thoughts."
                  .text
                  .align(TextAlign.center)
                  .size(28.sp)
                  .white
                  .fontWeight(FontWeight.w700)
                  .make(),
              20.heightBox,
              PrimaryButton(
                title: "Login",
                onPressed: () {
                  AutoRouter.of(context).push(const LoginRoute());
                },
              ),
              12.heightBox,
              OutLineButton(
                title: "Register",
                onPressed: () {
                  AutoRouter.of(context).push(const RegisterRoute());
                },
              ),
              40.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
