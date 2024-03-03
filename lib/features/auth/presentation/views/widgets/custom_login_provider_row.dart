import 'package:flutter/material.dart';
import 'package:spark/features/auth/data/data_sources/static.dart';
import 'package:spark/features/auth/presentation/views/widgets/custom_login_provider_button.dart';

class CustomLoginProviderRow extends StatelessWidget {
  const CustomLoginProviderRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        customLoginProviderImages.length,
        (index) => CustomLoginProviderButton(
          image: customLoginProviderImages[index],
          onTap: () {},
        ),
      ),
    );
  }
}
