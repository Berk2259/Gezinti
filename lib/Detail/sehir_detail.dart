import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Model/model.dart';
import 'package:gezinti/Widget/widget.dart';

class SehirDetail extends StatelessWidget {
  final UlkeSehirModel sehir;
  const SehirDetail({super.key, required this.sehir});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(text: sehir.sehirIsim),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
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
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(FontAwesomeIcons.fire),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Gezilecek Yerler',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue.shade900,
                ),
                child: ListView.builder(
                  itemCount: sehir.gezilecekYerler.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 16.0,
                        left: 16.0,
                        right: 16.0,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: ListTile(
                          title: Text(
                            sehir.gezilecekYerler[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          subtitle: Text(
                            sehir.aciklamalar[index],
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: sehir.gezilecekYerler.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.only(bottom: 12),
              child: ListTile(
                title: Text(
                  sehir.gezilecekYerler[index],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(sehir.aciklamalar[index]),
              ),
            );
          },
        ),
      ),
*/
