part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        automaticallyImplyLeading: false,
        title: "Categories".text.center.color(MyColors.white).make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FeatherIcons.plus, color: MyColors.white),
          ),
        ],
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: "${index + 1}".text.make(),
                title: "Enter".text.make(),
                trailing: SizedBox(
                  width: 100.w,
                  child: Row(children: [
                    const IconButton(
                      onPressed: null,
                      icon: Icon(FeatherIcons.edit2),
                      color: Colors.green,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(FeatherIcons.trash),
                      color: Colors.red,
                    ),
                  ]),
                ),
              ),
            );
          }),
    );
  }
}
