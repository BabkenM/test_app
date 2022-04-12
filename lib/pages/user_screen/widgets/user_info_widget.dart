import 'package:flutter/material.dart';

import '../../../extensions/extensions.dart';
import '../../../models/user_model/user_model.dart';

class UserInfoWidget extends StatelessWidget {
  final UserModel user;

  const UserInfoWidget({
    required this.user,
    Key? key,
  }) : super(key: key);

  String get address =>
      '${user.address.city} ${user.address.street} ${user.address.suite} ${user.address.zipcode}';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                user.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ).paddingVertical(2),
        Row(
          children: [
            Expanded(
              child: Text(
                'email: ${user.email}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ).paddingVertical(2),
        Row(
          children: [
            Expanded(
              child: Text(
                'phone: ${user.phone}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ).paddingVertical(2),
        Row(
          children: [
            Expanded(
              child: Text(
                'website: ${user.website}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ).paddingVertical(2),
        Row(
          children: const [
            Expanded(
              child: Text(
                'Working',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ).paddingVertical(2),
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Company: ${user.company.name}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'BS: ${user.company.bs}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Catch phrase: ${user.company.catchPhrase}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ).paddingOnly(left: 16, top: 4, bottom: 4),
        Row(
          children: [
            Expanded(
              child: Text(
                'Address: $address',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ).paddingVertical(2)
      ],
    ).paddingHorizontal();
  }
}
