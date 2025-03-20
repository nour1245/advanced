import 'package:advanced/core/themeing/styles.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  const ListTitle({super.key,required this.title,required this.onTap});
final String title;
final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: Styles.mainText(
                context,
              ).copyWith(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Spacer(),
            GestureDetector(
              onTap: onTap,
              child: Text(
                S.of(context).seeAll,
                style: Styles.blue14_500w(context),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
