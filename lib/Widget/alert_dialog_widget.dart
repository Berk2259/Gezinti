import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Widget/widget.dart';

//Şehirlerde üstte appBarda açılan bilgilendirme kısmının yapısal özelliği burada bulunur
class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 300,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Etiket Anlamları',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.tag, color: ColorWidget.red500),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Tarihi Mekanlar',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Text('Tarihi mekanları belirten etiket'),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.tag, color: Colors.deepPurple),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Doğal Güzellikler',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Text('Doğal Mekanları belirten etiket'),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.tag, color: Colors.lightGreen),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Eğlenceli Yerler',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Text('Eğlenceli Yerleri belirten etiket'),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
