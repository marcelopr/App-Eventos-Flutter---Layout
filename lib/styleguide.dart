import 'package:flutter/material.dart';

final TextStyle fadedTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Color(0x99FFFFFF),
);

final TextStyle whiteHeadingTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFFFFFFFF),
);

final TextStyle categoryTextStyle = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFFFFFFFF),
);

final TextStyle selectedCategoryTextStyle = categoryTextStyle.copyWith(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF0C7BB3),
);

final TextStyle eventTitleTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF000000),
);

final TextStyle eventWhiteTitleTextStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFFFFFFFF),
);

final TextStyle eventLocationTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Color(0xFF000000),
);

final TextStyle eventDescriptionTextStyle =
    TextStyle(color: Color(0xFF000000), fontSize: 14.0);

final TextStyle guestTextStyle = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w800,
  color: Color(0xFF000000),
);

final TextStyle punchLine1TextStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.w800,
  color: Color(0xFFFF4700),
);

final TextStyle punchLine2TextStyle = punchLine1TextStyle.copyWith(
  color: Color(0xFF000000),
);
