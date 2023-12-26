part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late LoginViewModel loginViewModel;

  @override
  // @mustCallSuper
  void initState() {
    super.initState();
    loginViewModel = LoginViewModel(repository: context.read<Repository>());
  }

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
                Form(
                  key: loginViewModel.fromKey,
                  child: Container(
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
                            "Login"
                                .text
                                .size(18)
                                .fontWeight(FontWeight.w700)
                                .color(MyColors.primaryColor)
                                .makeCentered(),
                            48.h.heightBox,
                            "Email".text.make(),
                            8.heightBox,
                            VxTextField(
                              validator: (email) {
                                if (email!.isEmpty) {
                                  return "Email is Empty";
                                } else if (!email.isValidEmail) {
                                  return "InValid Email";
                                }
                                return null;
                              },
                              controller: loginViewModel.emailController,
                              borderColor: MyColors.primaryColor,
                              fillColor: Colors.transparent,
                              borderType: VxTextFieldBorderType.roundLine,
                              borderRadius: 10,
                              prefixIcon: const Icon(Icons.mail),
                            ),
                            20.heightBox,
                            "Password".text.make(),
                            8.heightBox,
                            VxTextField(
                              validator: (password) {
                                if (password!.isEmpty) {
                                  return "Password is Empty";
                                } else if (password.length < 8) {
                                  return "  add Atleast 8 character";
                                }
                                // } else if (!password.isValidPassword) {
                                //   return "InValid Password: add atleast one: [@!A-Z0-9]";
                                // }
                                return null;
                              },
                              controller: loginViewModel.passwordController,
                              isPassword: true,
                              obscureText: true,
                              fillColor: Colors.transparent,
                              borderColor: MyColors.primaryColor,
                              borderType: VxTextFieldBorderType.roundLine,
                              borderRadius: 10,
                              prefixIcon: const Icon(Icons.lock),
                            ),
                            20.h.heightBox,
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
                            PrimaryButton(
                                title: "Login",
                                onPressed: () {
                                  if (loginViewModel.fromKey.currentState!
                                      .validate()) {
                                    loginViewModel.login(context);
                                  }
                                  // loginViewModel.login(context);
                                  // AutoRouter.of(context)
                                  //     .push(const GeneralRoute());
                                }),
                            40.h.heightBox,
                            "Don't have an account"
                                .richText
                                .color(MyColors.primaryColor)
                                .size(17)
                                .semiBold
                                .withTextSpanChildren([
                              TextSpan(
                                text: " Sign Up",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => AutoRouter.of(context)
                                      .push(const RegisterRoute()),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700),
                              ),
                            ]).makeCentered(),
                            40.heightBox,

                            // TextButton.icon(
                            //     onPressed: () async {
                            //       final prefs =
                            //           await SharedPreferences.getInstance();

                            //       prefs.setString("name", "manish");
                            //     },
                            //     icon: Icon(Icons.abc_outlined),
                            //     label: " Save Data".text.make()),
                            // TextButton.icon(
                            //     onPressed: () async {
                            //       final prefs =
                            //           await SharedPreferences.getInstance();

                            //       debugPrint(
                            //           prefs.getString("name").toString());
                            //     },

                            //     icon: Icon(Icons.abc_outlined),
                            //     label: " Save Data".text.make()),
                          ]),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
