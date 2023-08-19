library tag_detail_screen_view;

import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'tag_detail_screen_view_model.dart';

part 'tag_detail_screen_mobile.dart';
part 'tag_detail_screen_tablet.dart';
part 'tag_detail_screen_desktop.dart';

class TagDetailScreenView extends StatelessWidget {
  static const routeName = '/tag_detail_screen';
  final int? id;

  const TagDetailScreenView(this.id, {super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TagDetailScreenViewModel>.reactive(
      viewModelBuilder: () => TagDetailScreenViewModel(id),
      onViewModelReady: (viewModel) {},
      builder: (context, viewModel, child) {
        return ScreenTypeLayout.builder(
          mobile: (_) => _TagDetailScreenMobile(viewModel),
          desktop: (_) => _TagDetailScreenMobile(viewModel),
          tablet: (_) => _TagDetailScreenMobile(viewModel),
        );
      },
    );
  }
}
