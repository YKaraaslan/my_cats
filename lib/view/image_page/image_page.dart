import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/base/view/base_view.dart';
import '../../core/constant/dimens.dart';
import '../../core/constant/paddings.dart';
import '../../core/widgets/image_viewer/network_image_viewer.dart';
import '../home_viewmodel.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.read<HomeViewModel>().setIndex(0);
        return Future.value(false);
      },
      child: BaseView(
        onPageBuilder: (context, value) {
          return LayoutBuilder(
            builder: (context, constraints) {
              if (context.watch<HomeViewModel>().catImageUrl.isEmpty) {
                return const CircularProgressIndicator();
              }
              return const _Body();
            },
          );
        },
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  late final HomeViewModel viewModel = context.read<HomeViewModel>();

  @override
  void initState() {
    super.initState();
    viewModel.controller = TextEditingController();
  }

  @override
  void dispose() {
    viewModel.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Dimen.photoHeight,
            child: NetworkImageViewer(heroAttribute: context.watch<HomeViewModel>().catImageUrl, imageURL: context.watch<HomeViewModel>().catImageUrl),
          ),
          const SizedBox(height: Dimen.titleSpacing),
          Padding(
            padding: Paddings.appPadding,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Information',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Padding(
            padding: Paddings.appPadding,
            child: Consumer<HomeViewModel>(
              builder: (context, viewModel, child) => TextField(
                readOnly: true,
                controller: viewModel.controller,
                decoration: const InputDecoration(
                  icon: Icon(Icons.favorite),
                  labelText: 'Name',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6200EE)),
                  ),
                  enabled: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
