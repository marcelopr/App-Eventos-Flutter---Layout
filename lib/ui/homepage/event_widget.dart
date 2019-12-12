import 'package:flutter/material.dart';
import 'package:local_events_app/models/event.dart';
import 'package:local_events_app/styleguide.dart';

class EventWidget extends StatelessWidget {
  final Event event;
  const EventWidget({Key key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0)),
              child: Image.asset(event.imagePath,
                  height: 150, fit: BoxFit.fitWidth),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(event.title, style: eventTitleTextStyle),
                  SizedBox(height: 10.0),
                  FittedBox(
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.location_on),
                            SizedBox(width: 5.0),
                            Text(event.location, style: eventLocationTextStyle)
                          ],
                        ),
                        SizedBox(width: 12.0),
                        Row(
                          children: <Widget>[
                            Icon(Icons.timer),
                            SizedBox(width: 5.0),
                            Text(event.duration, style: eventLocationTextStyle)
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
