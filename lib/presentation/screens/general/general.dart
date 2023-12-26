part of 'general_imports.dart';

const List<TabItem> tabTtems = [
  TabItem(
    icon: FeatherIcons.home,
    // title: 'Home',
  ),
  TabItem(
    icon: FeatherIcons.tag,
  ),
  TabItem(
    icon: FeatherIcons.plus,
  ),
  TabItem(
    icon: FeatherIcons.hash,
  ),
  TabItem(
    icon: FeatherIcons.user,
  ),
];

@RoutePage()
class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  var visit = 0;

  List<Widget> pages = [
    const Home(),
    const Categories(),
    const AddPost(),
    const Tags(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages.elementAt(visit),
        bottomNavigationBar: BottomBarCreative(
          items: tabTtems,
          backgroundColor: MyColors.white,
          color: MyColors.primaryColor.withOpacity(0.3),
          colorSelected: MyColors.primaryColor,
          indexSelected: visit,
          onTap: (int index) => setState(() {
            visit = index;
          }),
        ));
  }
}
