import 'package:flutter/material.dart';
import 'package:spark/features/home/presentation/views/season_details_view/widgets/season_details_view_body.dart';

class SeasonDetailsView extends StatelessWidget {
  const SeasonDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SeasonDetailsViewBody(),
    );
  }
}
