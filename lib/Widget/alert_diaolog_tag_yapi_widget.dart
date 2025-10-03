import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Widget/widget.dart';

//AlertDialogWidget kısmındaki her bir tag in yapısı burada tanımlandı
class AlertDiaologTagYapiWidget extends StatelessWidget {
  final String tagText;
  final String tagDetayText;
  final Color tagColor;
  const AlertDiaologTagYapiWidget({
    super.key,
    required this.tagText,
    required this.tagDetayText,
    required this.tagColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(FontAwesomeIcons.tag, color: ColorWidget.red500),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(tagText, style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
        Text(tagDetayText),
      ],
    );
  }
}
