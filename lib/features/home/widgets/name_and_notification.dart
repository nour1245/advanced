import 'package:advanced/core/themeing/styles.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/material.dart';

class NameAndNotification extends StatelessWidget {
  const NameAndNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${S.of(context).hi}, tester!",
              style: Styles.mainText(
                context,
              ).copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(S.of(context).howRU, style: Styles.mainText(context)),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_none_outlined),
        ),
      ],
    );
  }
}
