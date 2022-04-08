import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CampaignItem extends StatelessWidget {
  const CampaignItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Image.asset('assets/images/campaign.png'),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Lorem Ipsum',
          style: Theme.of(context).textTheme.caption,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet gravida quam aliquam aenean fermentum non accumsan.',
          style: Theme.of(context).textTheme.overline!.copyWith(
                color: GreyColors.dark.withAlpha(179),
              ),
        ),
      ],
    );
  }
}
