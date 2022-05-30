import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import '../home_viewmodel.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late final viewModel = context.read<HomeViewModel>();

  @override
  void initState() {
    super.initState();
    viewModel.getCats();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (viewModel.cats != null && viewModel.cats!.isEmpty) {
            return Container();
          }
          return StaggeredGrid.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: context.watch<HomeViewModel>().catsWidget,
          );
        },
      ),
    );
  }
}
