import 'package:flutter/material.dart';

import '../../../models/user_model/user_model.dart';
import '../../../providers/screen_service.dart';
import '../../../router.gr.dart';

class UsersList extends StatelessWidget {
  final List<UserModel> users;

  const UsersList({
    required this.users,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, i) {
          final user = users[i];

          return ListTile(
            onTap: () {
              router.push(
                UserRoute(
                  user: user,
                ),
              );
            },
            leading: Text(
              '${user.id}',
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    user.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            subtitle: Row(
              children: [
                Expanded(
                  child: Text(
                    user.username,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          );
        },
        childCount: users.length,
      ),
    );
  }
}
