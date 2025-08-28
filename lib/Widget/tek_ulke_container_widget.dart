import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Detail/detail.dart';

//Burada ülkelerin container yapısı tanımlanıyor.Her ülke için container yapısı buradan kullanılıyor.
class TekUlkeContainerWidget extends StatelessWidget {
  final String image;
  final String ulkeAd;
  final int
  indexUlke; //Detail kısımları burada tanımlı indexlere göre çekiliyor.
  TekUlkeContainerWidget({
    super.key,
    required this.image,
    required this.ulkeAd,
    required this.indexUlke,
  });

  //Ulkelerin detail kısımları burada liste olarak tutuluyor
  final List<Widget> ulkelerDetail = [TurkeyDetail(), FranceDetail()];
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(image),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  ulkeAd,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ulkelerDetail[indexUlke],
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
