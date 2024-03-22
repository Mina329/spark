import 'package:flutter/material.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/section_view_body.dart';

class SectionView extends StatelessWidget {
  const SectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SectionViewBody(),
    );
  }
}
