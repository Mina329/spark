import 'package:flutter/material.dart';
import 'package:spark/features/home/presentation/views/media_view/widgets/media_view_body.dart';

class MediaView extends StatelessWidget {
  const MediaView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MediaViewBody(),
    );
  }
}
