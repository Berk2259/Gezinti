import 'package:flutter/material.dart';
import 'package:gezinti/Widget/widget.dart';

//Uygulamanın ana sayfasıdır ülkeler burada listeleniyor.
class HistoricalScreen extends StatelessWidget {
  const HistoricalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorWidget.blue900,
      appBar: AppbarWidget(text: 'Gezinti'),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: ColorWidget.blue200,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TekUlkeContainerWidget(
                image: 'assets/images/turkey.png',
                ulkeAd: 'Türkiye',
                indexUlke: 0,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/france.png',
                ulkeAd: 'Fransa',
                indexUlke: 1,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/spain.png',
                ulkeAd: 'İspanya',
                indexUlke: 2,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/italy.png',
                ulkeAd: 'İtalya',
                indexUlke: 3,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/germany.png',
                ulkeAd: 'Almanya',
                indexUlke: 4,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/poland.png',
                ulkeAd: 'Polonya',
                indexUlke: 5,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/netherlands.png',
                ulkeAd: 'Hollanda',
                indexUlke: 6,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/england.png',
                ulkeAd: 'İngiltere',
                indexUlke: 7,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/czech_republic.png',
                ulkeAd: 'Çekya',
                indexUlke: 8,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/sweden.png',
                ulkeAd: 'İsveç',
                indexUlke: 9,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/switzerland.png',
                ulkeAd: 'İsviçre',
                indexUlke: 10,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/norway.png',
                ulkeAd: 'Norveç',
                indexUlke: 11,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/portugal.png',
                ulkeAd: 'Portekiz',
                indexUlke: 12,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/greece.png',
                ulkeAd: 'Yunanistan',
                indexUlke: 13,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/austria.png',
                ulkeAd: 'Avusturya',
                indexUlke: 14,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/denmark.png',
                ulkeAd: 'Danimarka',
                indexUlke: 15,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/finland.png',
                ulkeAd: 'Finlandiya',
                indexUlke: 16,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/hungary.png',
                ulkeAd: 'Macaristan',
                indexUlke: 17,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/bulgaria.png',
                ulkeAd: 'Bulgaristan',
                indexUlke: 18,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/slovakia.png',
                ulkeAd: 'Slovakya',
                indexUlke: 19,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/albania.png',
                ulkeAd: 'Arnavutluk',
                indexUlke: 20,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/croatia.png',
                ulkeAd: 'Hırvatistan',
                indexUlke: 21,
              ),
              TekUlkeContainerWidget(
                image: 'assets/images/north_macedonia.png',
                ulkeAd: 'Makedonya',
                indexUlke: 22,
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
