part of 'login_imports.dart';

class LoginViewModel {
  final Repository repository;
  LoginViewModel({required this.repository});

  final fromKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  login(context) async {
    var loginData = await repository.authRepo
        .userLogin(emailController.text, passwordController.text, context);

    if (loginData.accessToken != null) {
      debugPrint(" button  save token click");
      Utils.saveToken(loginData.accessToken.toString());
      debugPrint(" Welcome to Login");
      AutoRouter.of(context).push(const GeneralRoute());
    }
  }
}
