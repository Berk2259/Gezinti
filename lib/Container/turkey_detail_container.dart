import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Model/model.dart';
import 'package:gezinti/Widget/widget.dart';

//Burada Türkiyedeki her bir il için container yapısı tanımlanıyor.
class TurkeyDetailContainer extends StatelessWidget {
  final UlkeSehirModel ozellikSehir;
  final VoidCallback onPressedButton;
  TurkeyDetailContainer({
    super.key,
    required this.ozellikSehir,
    required this.onPressedButton,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: ColorWidget.blue900,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: ColorWidget.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    ozellikSehir.sehirNumara ?? '',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                ozellikSehir.sehirIsim,
                style: TextStyle(fontSize: 24, color: ColorWidget.white),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: onPressedButton,
                icon: Icon(
                  FontAwesomeIcons.circleArrowRight,
                  color: ColorWidget.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
