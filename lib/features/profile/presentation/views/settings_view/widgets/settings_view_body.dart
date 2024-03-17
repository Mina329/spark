import 'package:flutter/material.dart';
import 'package:spark/core/widgets/back_button.dart';
import 'package:spark/features/profile/presentation/views/settings_view/widgets/change_account_name_widget.dart';
import 'package:spark/features/profile/presentation/views/settings_view/widgets/change_app_theme_widget.dart';
import 'package:spark/features/profile/presentation/views/settings_view/widgets/sign_out_button.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 50),
          ),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Back(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverToBoxAdapter(
            child: ChangeAccountNameWidget(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverToBoxAdapter(
            child: ChangeAppThemeWidget(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverToBoxAdapter(
            child: SignOutButton(),
          )
        ],
      ),
    );
  }
}
