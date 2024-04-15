import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/functions/show_access_denied_dialog.dart';
import 'package:spark/features/lists/presentation/views/widgets/create_new_list_modal_bottom_sheet.dart';

class CreateNewListButton extends StatelessWidget {
  const CreateNewListButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: () => buildCreateNewListModalBottomSheet(context),
        child: Text(
          StringsManager.createNewList,
          style: StylesManager.styleLatoBold20(context)
              .copyWith(color: Colors.black),
        ),
      ),
    );
  }

  Future buildCreateNewListModalBottomSheet(BuildContext context) async {
    final firebaseAuth = Get.find<FirebaseAuth>();
    if (firebaseAuth.currentUser!.isAnonymous) {
      showAccessDeniedDialog(context);
      return;
    }
    return Get.bottomSheet(
      const CreateNewListModalBottomSheet(),
    );
  }
}
