part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late ProfileViewModel profileViewModel;

  @override
  void initState() {
    profileViewModel = ProfileViewModel(repository: context.read<Repository>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.primaryColor,
        // title: "Profile".text.color(MyColors.white).make(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              profileViewModel.logout(context);
            },
            icon: const Icon(FeatherIcons.logOut)
                .iconColor(MyColors.white)
                .pOnly(right: 10),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 450.h,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: MyColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(MyAssets.assetsImagesNetflix),
                  ),
                  10.h.heightBox,
                  "Journo".text.color(MyColors.white).bold.xl.make(),
                  10.h.heightBox,
                  "Journo@app.com".text.color(MyColors.white).xl.make(),
                  10.h.heightBox,
                  "John Abraham (born 17 December 1972) is an Indian actor, model, writer, and film producer who works in Hindi films. Known for his stoic action hero persona"
                      .text
                      .color(MyColors.white)
                      .xl
                      .center
                      .make(),
                  20.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          "6".text.white.bold.xl.make(),
                          "Post".text.white.xl.make(),
                        ],
                      ),
                      Column(
                        children: [
                          "34".text.white.xl.bold.make(),
                          "Following".text.white.xl.make(),
                        ],
                      ),
                      Column(
                        children: [
                          "610".text.white.bold.xl.make(),
                          "Follows".text.white.xl.make(),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          20.h.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "My posts".text.xl2.bold.make(),
                GridView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 13,
                            childAspectRatio: 0.9,
                            crossAxisSpacing: 10,
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.asset(MyAssets.assetsImagesNetflix)
                              .cornerRadius(10),
                          Row(
                            children: [
                              "Netflix  Will Charge You for Password Sharing"
                                  .text
                                  .medium
                                  .make()
                                  .expand(),
                              6.h.heightBox,
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(FeatherIcons.moreVertical)),
                            ],
                          )
                        ],
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
