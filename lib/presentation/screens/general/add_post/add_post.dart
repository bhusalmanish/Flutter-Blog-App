part of 'add_post_imports.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  // QuillController _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.primaryColor,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FeatherIcons.check,
                  color: MyColors.white,
                ))
          ],
          automaticallyImplyLeading: false,
          title: "Add Post".text.color(MyColors.white).make(),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            20.h.heightBox,
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset(
                  MyAssets.assetsImagesImagPlaceholder,

                  height: 300.h,
                  fit: BoxFit.cover,
                  // width: MediaQuery.of(context).size.width,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FeatherIcons.camera,
                      color: MyColors.primaryColor,
                    ))
              ],
            ),
            20.heightBox,
            const VxTextField(
              borderColor: MyColors.primaryColor,
              fillColor: Colors.transparent,
              hint: "Title",
              borderType: VxTextFieldBorderType.roundLine,
              borderRadius: 10,
            ),
            20.heightBox,
            const VxTextField(
              borderColor: MyColors.primaryColor,
              fillColor: Colors.transparent,
              hint: "Slug",
              borderType: VxTextFieldBorderType.roundLine,
              borderRadius: 10,
            ),
            20.h.heightBox,
            Container(
              height: 60.h,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Tags".text.make(),
                    const Icon(FeatherIcons.chevronRight)
                  ]),
            ),
            Container(
              height: 60.h,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Categories".text.make(),
                    const Icon(FeatherIcons.chevronRight)
                  ]),
            ),
            // const QuillToolbar(),
            // Expanded(
            //   child: QuillEditor.basic(
            //     configurations: const QuillEditorConfigurations(
            //       readOnly: false,
            //     ),
            //   ),
            // )
          ],
        ));
  }
}
