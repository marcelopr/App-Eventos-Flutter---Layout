import 'package:flutter/material.dart';
import 'package:local_events_app/app_state.dart';
import 'package:local_events_app/models/category.dart';
import 'package:local_events_app/styleguide.dart';
import 'package:local_events_app/ui/event_details/event_details_page.dart';
import 'package:local_events_app/ui/homepage/category_widget.dart';
import 'package:local_events_app/ui/homepage/home_page_bacground.dart';
import 'package:provider/provider.dart';
import 'package:local_events_app/models/event.dart';

import 'event_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: Stack(
          children: <Widget>[
            HomePageBackground(
                screenHeight: MediaQuery.of(context).size.height),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 12.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Row(
                        children: <Widget>[
                          Text('EVENTOS LOCAIS', style: fadedTextStyle),
                          Spacer(),
                          Icon(
                            Icons.person_outline,
                            color: Color(0x99FFFFFF),
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child:
                          Text('O que vai ser?', style: whiteHeadingTextStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: Consumer<AppState>(
                        builder: (context, appState, _) =>
                            SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              for (final category in categories)
                                CategoryWidget(category: category)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Consumer<AppState>(
                        builder: (context, appState, _) => Column(
                          children: <Widget>[
                            for (final event in events.where((e) => e
                                .categoryIds
                                .contains(appState.selectedCategoryId)))
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          EventDetailsPage(event: event)));
                                },
                                child: EventWidget(event: event),
                              )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
