import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        FirmaCard(firmaAdi: "Firma A", indirimYuzdesi: 20),
        FirmaCard(firmaAdi: "Firma B", indirimYuzdesi: 15),
        FirmaCard(firmaAdi: "Firma C", indirimYuzdesi: 30),
        FirmaCard(firmaAdi: "Firma D", indirimYuzdesi: 10),
        FirmaCard(firmaAdi: "Firma E", indirimYuzdesi: 25),
      ],
    );
  }
}

class FirmaCard extends StatelessWidget {
  final String firmaAdi;
  final int indirimYuzdesi;

  const FirmaCard({super.key, required this.firmaAdi, required this.indirimYuzdesi});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_forward,
              color: Colors.indigo,
              size: 30,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                firmaAdi,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 60,
              width: 80,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    '%$indirimYuzdesi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
