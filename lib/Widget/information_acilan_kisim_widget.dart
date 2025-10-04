import 'package:flutter/material.dart';
import 'package:gezinti/Widget/widget.dart';

class InformationAcilanKisimWidget extends StatelessWidget {
  final String baslik;
  final List<String>? listAciklama;
  const InformationAcilanKisimWidget({
    super.key,
    required this.baslik,
    this.listAciklama,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: ColorWidget.transparent, // ripple rengi
          highlightColor: ColorWidget.transparent, // basılı efekti
        ),
        child: ExpansionTile(
          minTileHeight: 100,
          backgroundColor: ColorWidget.blue900,
          collapsedBackgroundColor: ColorWidget.blue900,
          collapsedTextColor: ColorWidget.white,
          collapsedIconColor: ColorWidget.white,
          iconColor: ColorWidget.white,
          textColor: ColorWidget.white,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          title: Text(baslik),
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ColorWidget.white,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: listAciklama?.length ?? 0,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(listAciklama?[index] ?? ''));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
