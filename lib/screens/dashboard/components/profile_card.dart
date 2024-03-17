import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding * 0.75,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              "assets/images/profile_pic.png",
              height: 32,
            ),
          ),
          if (!Responsive.isMobile(context))
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding / 2,
              ),
              child: Text('Rodrigo Thenopholo'),
            ),
          Icon(Ionicons.chevron_down_outline),
        ],
      ),
    );
  }
}
