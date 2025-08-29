import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Model/model.dart';

//Burada Türkiye dışındaki diğer ülkelerin il container yapıları tanımlanıyor
class DigerUlkelerDetailContainer extends StatelessWidget {
  final UlkeSehirModel ozellikSehir;
  final VoidCallback onPressed;
  DigerUlkelerDetailContainer({
    super.key,
    required this.ozellikSehir,
    required this.onPressed,
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
          color: Colors.blue.shade900,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                ozellikSehir.sehirIsim,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  FontAwesomeIcons.circleArrowRight,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
