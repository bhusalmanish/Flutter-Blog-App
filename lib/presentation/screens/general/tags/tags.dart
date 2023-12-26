part of 'tags_imports.dart';

class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  late TagsViewModel tagsViewModel;

  @override
  void initState() {
    tagsViewModel = TagsViewModel(repository: context.read<Repository>());
    tagsViewModel.fetchAllTags();
    // TagRepo().getAllTags();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        automaticallyImplyLeading: false,
        title: "Tags".text.color(MyColors.white).center.make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FeatherIcons.plus, color: MyColors.white),
          ),
        ],
      ),
      body: BlocBuilder<VelocityBloc<TagsModel>, VelocityState<TagsModel>>(
        bloc: tagsViewModel.tagsModelBloc,
        builder: (context, state) {
          if (state is VelocityInitialState) {
            // debugPrint(state.velocity_bloc.statusCode);
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is VelocityUpdateState) {
            return ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: state.data.tags!.length,
                itemBuilder: (context, index) {
                  var tagsData = state.data.tags![index];

                  return Card(
                    child: ListTile(
                      leading: "${index + 1}".text.make(),
                      title: tagsData.title?.text.make(),
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
                });
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
