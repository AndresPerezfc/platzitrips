import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzitrips/src/place/bloc/bloc_place.dart';
import 'package:platzitrips/src/place/ui/widgets/description_place.dart';
import 'package:platzitrips/src/place/ui/screens/header_appbar.dart';
import 'package:platzitrips/platziPage.dart';
import 'package:platzitrips/src/place/ui/widgets/review_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: PlatziPage(),
      ),
      bloc: UserBloc(),
    );
  }
}
