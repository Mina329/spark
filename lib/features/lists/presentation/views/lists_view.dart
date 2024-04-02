import 'package:flutter/material.dart';
import 'package:spark/features/lists/presentation/views/widgets/lists_view_body.dart';

class ListsView extends StatelessWidget {
  const ListsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListsViewBody(),
    );
  }
}
