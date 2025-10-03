import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Widget/alert_diaolog_tag_yapi_widget.dart';
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
              AlertDiaologTagYapiWidget(
                tagText: 'Tarihi Mekanlar',
                tagDetayText: 'Tarihi mekanları belirten etiket',
                tagColor: ColorWidget.red500,
              ),
              AlertDiaologTagYapiWidget(
                tagText: 'Doğal Güzellikler',
                tagDetayText: 'Doğal Mekanları belirten etiket',
                tagColor: Colors.deepPurple,
              ),
              AlertDiaologTagYapiWidget(
                tagText: 'Eğlenceli Yerler',
                tagDetayText: 'Eğlenceli Yerleri belirten etiket',
                tagColor: Colors.lightGreen,
              ),
              AlertDiaologTagYapiWidget(
                tagText: 'Müze',
                tagDetayText: 'Müzeler için belirtilen etiket',
                tagColor: ColorWidget.blue500,
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
