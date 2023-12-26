part of 'home_imports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Image.asset(MyAssets.assetsImagesNetflix).cornerRadius(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "latest Post".text.size(15).make(),
                "See All".text.size(15).make()
              ],
            ),
            20.h.heightBox,
            ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                      height: 20.h,
                    ),
                itemCount: 6,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      GestureDetector(
                        onTap: () => AutoRouter.of(context)
                            .push(const HomeDetialsRoute()),
                        child: Image.asset(
                          MyAssets.assetsImagesNetflix,
                          height: 140,
                          fit: BoxFit.cover,
                          width: 180,
                        ).cornerRadius(20),
                      ),
                      10.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Netfilx Will Charge Your Money for Password Sharing"
                              .text
                              .size(16)
                              .maxLines(2)
                              .bold
                              .make(),
                          Row(
                            children: [
                              const Icon(FeatherIcons.clock),
                              "6 Months ago".text.size(15).make(),
                            ],
                          ),
                          6.h.heightBox,
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                "55 views".text.size(15).make(),
                                const Icon(FeatherIcons.bookmark),
                              ]),
                        ],
                      ).expand(),
                    ],
                  );
                })
          ],
        ),
      ),
    ));
  }
}
