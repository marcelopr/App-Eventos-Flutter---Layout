import 'package:flutter/material.dart';
import 'package:local_events_app/models/event.dart';
import 'package:local_events_app/models/guest.dart';
import 'package:local_events_app/styleguide.dart';
import 'package:provider/provider.dart';

class EventDetailsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = Provider.of<Event>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 80.0),
          Container(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.20, right: screenWidth * 0.1),
              child: Text(event.title,
                  textAlign: TextAlign.end, style: eventWhiteTitleTextStyle),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.20, right: screenWidth * 0.1),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                SizedBox(width: 5.0),
                Text(
                  event.location,
                  textAlign: TextAlign.end,
                  style: eventLocationTextStyle.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.20, right: screenWidth * 0.1),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(
                  Icons.timer,
                  color: Colors.white,
                ),
                SizedBox(width: 5.0),
                Text(event.duration,
                    textAlign: TextAlign.end,
                    style: eventLocationTextStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          SizedBox(height: 80.0),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text('CONVIDADOS', style: guestTextStyle),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for (final guest in guests)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipOval(
                      child: Image.asset(
                        guest.imagePath,
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: event.punchLine1 + ' ', style: punchLine1TextStyle),
                TextSpan(text: event.punchLine2, style: punchLine2TextStyle),
              ]),
            ),
          ),
          if (event.description.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                event.description,
                style: eventDescriptionTextStyle,
              ),
            ),
          if (event.galleryImages.length > 0)
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, top: 24.0, bottom: 16.0),
              child: Text('GALERIA', style: guestTextStyle),
            ),
          if (event.galleryImages.isNotEmpty)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  for (final image in event.galleryImages)
                    Container(
                      margin: const EdgeInsets.only(
                          left: 16.0, right: 8.0, bottom: 32.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        child: Image.asset(
                          image,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
