import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Detail/detail.dart';

//türkiye dışındaki diğer ülkelerin şehir container yapıları burada tanımlandı
class UlkelerDetailContainerWidget extends StatelessWidget {
  final String sehirAd;
  const UlkelerDetailContainerWidget({super.key, required this.sehirAd});

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
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text(
                sehirAd,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SehirDetaySayfa(sehirAd: sehirAd),
                      ),
                    );
                  },
                  icon: Icon(
                    FontAwesomeIcons.circleArrowRight,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
