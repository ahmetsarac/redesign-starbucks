import 'package:flutter/material.dart';

import '../theme/colors.dart';
import 'campaign_item.dart';

class Campaigns extends StatelessWidget {
  const Campaigns({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: DraggableScrollableSheet(
          initialChildSize: constraints.maxHeight * 0.00068,
          minChildSize: constraints.maxHeight * 0.00068,
          expand: true,
          builder: (context, scrollController) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white,
              ),
              child: SafeArea(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 18.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            height: 6,
                            width: 80,
                            decoration: BoxDecoration(
                              color: GreyColors.buttonGrey,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Text(
                          'Kampanyalar',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: GreyColors.dark),
                        ),
                        const CampaignItem(),
                        const CampaignItem(),
                        const CampaignItem(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
