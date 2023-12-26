part of 'register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.primaryColor,
        body: SafeArea(
          child: FadedScaleAnimation(
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 20.h,
                ),
                Image.asset(
                  MyAssets.assetsImagesMainLogo,
                  height: 42.h,
                  width: 139.w,
                ),
                100.h.heightBox,
                Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          50.h.heightBox,
                          "Sign Up"
                              .text
                              .size(18)
                              .fontWeight(FontWeight.w700)
                              .color(MyColors.primaryColor)
                              .makeCentered(),
                          48.h.heightBox,
                          "Email".text.make(),
                          8.heightBox,
                          const VxTextField(
                            hint: "journo@mail.com",
                            borderColor: MyColors.primaryColor,
                            fillColor: Colors.transparent,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10,
                            prefixIcon: Icon(Icons.mail),
                          ),
                          20.heightBox,
                          "Password".text.make(),
                          8.heightBox,
                          const VxTextField(
                            isPassword: true,
                            obscureText: true,
                            fillColor: Colors.transparent,
                            borderColor: MyColors.primaryColor,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10,
                            prefixIcon: Icon(Icons.lock),
                          ),
                          20.heightBox,
                          "Confirm Password".text.make(),
                          8.heightBox,
                          const VxTextField(
                            isPassword: true,
                            obscureText: true,
                            fillColor: Colors.transparent,
                            borderColor: MyColors.primaryColor,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10,
                            prefixIcon: Icon(Icons.lock),
                          ),
                          40.h.heightBox,
                          PrimaryButton(title: " Sign Up", onPressed: () {}),
                          40.h.heightBox,
                          Row(
                            children: [
                              SizedBox(
                                width: 200,
                                child: CheckboxListTile(
                                  contentPadding: EdgeInsets.zero,
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  value: false,
                                  onChanged: (value) {},
                                  title: "Remeber Me".text.make(),
                                ),
                              ),
                              "Forgot Password".text.size(13).make(),
                            ],
                          ),
                          20.h.heightBox,
                          "ALready have a Account"
                              .richText
                              .color(MyColors.primaryColor)
                              .size(17)
                              .semiBold
                              .withTextSpanChildren([
                            TextSpan(
                              text: " Login",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => AutoRouter.of(context)
                                    .push(const LoginRoute()),
                              style:
                                  const TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ]).makeCentered(),
                          40.heightBox
                        ]),
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
