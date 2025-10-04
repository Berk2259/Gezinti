import 'package:flutter/material.dart';
import 'package:gezinti/Widget/widget.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorWidget.blue900,
      appBar: AppbarWidget(text: 'Bilgilendirme'),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: ColorWidget.blue300,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: InformationAcilanKisimWidget(
                  baslik: 'Uygulama Hakkında',
                  listAciklama: [
                    '• Uygulamamız ülkelerdeki güzel görülmeye değer yerleri gezmek isteyenlere rehberlik etmesi için vardır.',
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InformationAcilanKisimWidget(
                  baslik: 'Uygulama Politikası',
                  listAciklama: [
                    '• Konum bilginiz hiçbir şekilde tutulmamaktadır',
                    '• Fotoğraflar pexels.com adresinden ücretsiz stok fotoğrafçılık esasına uygun şekilde alınmıştır.',
                    '• Fotoğraflar pexels.com adresinden ücretsiz stok fotoğrafçılık esasına uygun şekilde alınmıştır.',
                    '• Fotoğraflar pexels.com adresinden ücretsiz stok fotoğrafçılık esasına uygun şekilde alınmıştır.',
                    '• Fotoğraflar pexels.com adresinden ücretsiz stok fotoğrafçılık esasına uygun şekilde alınmıştır.',
                    '• Fotoğraflar pexels.com adresinden ücretsiz stok fotoğrafçılık esasına uygun şekilde alınmıştır.',
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
