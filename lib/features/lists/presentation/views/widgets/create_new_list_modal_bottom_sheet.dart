import 'package:flutter/material.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class CreateNewListModalBottomSheet extends StatelessWidget {
  const CreateNewListModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      builder: (BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              StringsManager.createNewList,
              textAlign: TextAlign.center,
              style: StylesManager.styleLatoBold25(context),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              StringsManager.listTitle,
              style: StylesManager.styleLatoBold20(context),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                fillColor:
                    Color.lerp(ColorManager.primaryColor, Colors.black, 0.7),
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                hintText: StringsManager.listTitle,
                hintStyle: StylesManager.styleLatoLight20(context),
              ),
              cursorColor: ColorManager.primaryColor,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  StringsManager.create,
                  style: StylesManager.styleLatoBold20(context)
                      .copyWith(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
      onClosing: () {},
      backgroundColor: Color.lerp(ColorManager.primaryColor, Colors.black, 0.9),
    );
  }
}
