import 'package:flutter/material.dart';
import 'package:platzitrips/src/place/ui/widgets/review_list.dart';

import 'package:platzitrips/src/place/ui/widgets/description_place.dart';
import 'header_appbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace('Andrés', 1, "Andrés lo lograste!!"),
            ReviewList(),
          ],
        ),
        HeaderAppbar()
      ],
    );
  }
}
