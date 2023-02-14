
import 'package:enabler/domain/core/color_config.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: backgroudColor,
      elevation: 0,
      title: Column(
        children: [
          ListTile(
            textColor: kWhite,
            iconColor: kWhite,
            leading: Stack(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/user/profile.png'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    backgroundColor: kGreen,
                    radius: 5,
                  ),
                )
              ],
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Wrap(
                children: const [
                  Text(
                    'Samuel John',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundColor: kYellow,
                    radius: 12,
                    child: Icon(
                      Icons.expand_more,
                      size: 25,
                      color: kBlack,
                    ),
                  )
                ],
              ),
            ),
            subtitle: Wrap(
              children: const [
                Icon(
                  Icons.location_on,
                  color: kYellow,
                  size: 17,
                ),
                Text(
                  'Trivandrum,palayam',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            trailing: const Icon(Icons.notification_add),
          ),
        ],
      ),
      // expandedHeight: 300,
      // flexibleSpace: const FlexibleSpaceBar(title: Divider()),
    );
  }
}
