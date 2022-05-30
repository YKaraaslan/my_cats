import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/base/view/base_view.dart';
import '../core/constant/assets.dart';
import 'home_viewmodel.dart';
import 'image_page/image_page.dart';
import 'main_page/main_page.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 1,
      child: BaseView(
        appBar: AppBar(
          title: const Text('Cats'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Image.asset(Assets.cat)),
            ],
          ),
        ),
        onPageBuilder: (context, value) {
          return IndexedStack(
            index: context.watch<HomeViewModel>().pageIndex,
            children: const [
              MainPage(),
              ImagePage(),
            ],
          );
        },
      ),
    );
  }
}
