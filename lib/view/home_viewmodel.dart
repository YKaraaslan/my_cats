import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../core/init/network/network_manager.dart';
import '../core/init/network/network_model.dart';

class HomeViewModel extends ChangeNotifier {
  late final NetworkManager _networkManager = NetworkManager();
  late TextEditingController controller = TextEditingController();

  List<CatsModel>? cats;
  List<Widget> catsWidget = [];
  int pageIndex = 0;
  late String catImageUrl = '';
  late String catName = '';

  Future<void> getCats() async {
    cats = await _networkManager.getCats();
    if (cats != null) {
      for (var i = 0; i < cats!.length; i++) {
        catsWidget.add(
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1 + Random().nextInt(2),
            child: GestureDetector(
              onTap: () {
                setCat(cats![i]);
                setName();
                setIndex(1);
              },
              child: Image.network(cats![i].url!, fit: BoxFit.cover),
            ),
          ),
        );
      }
    }
    notifyListeners();
  }

  void setIndex(int index) {
    pageIndex = index;
    notifyListeners();
  }

  void setCat(CatsModel cat) {
    catImageUrl = cat.url!;
    if (cat.categories == null) {
      catName = 'This cat does not have a name';
    } else {
      catName = cat.categories!.first.name;
    }
    notifyListeners();
  }

  void setName() {
    controller.text = catName;
    notifyListeners();
  }
}
