import 'package:flutter/material.dart';

Positioned buildCoverOverlay(BuildContext context) {
  return Positioned.fill(
    bottom: 40,
    child: DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).scaffoldBackgroundColor.withOpacity(1),
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0),
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0),
            Theme.of(context).scaffoldBackgroundColor.withOpacity(1),
          ],
          stops: const [0.0, 0.2, 0.8, 1.0],
        ),
      ),
      child: Container(),
    ),
  );
}
