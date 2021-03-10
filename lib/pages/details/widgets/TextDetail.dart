import 'package:flutter/material.dart';

class TextDetail extends StatelessWidget {
  const TextDetail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
              style: TextStyle(height: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}
