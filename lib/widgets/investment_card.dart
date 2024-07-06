import 'package:flutter/material.dart';

class InvestmentCard extends StatelessWidget {
  const InvestmentCard({super.key});

  Widget investMenuItem({ required iconPath, required text }){
    return Column(
      children: [
        Image.asset(
          iconPath,
          width: 36,
          height: 36,
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(
            fontSize: 11,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/color_icons/plant.png",
                width: 18,
                height: 18,
              ),
              const SizedBox(width: 8),
              const Text(
                "Produk Investasi",
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff343434),
                  fontWeight: FontWeight.bold
                ),
              ),
              const Spacer(),
              const Text(
                "Explore",
                style: TextStyle(
                  color: Color(0xff22A271),
                  fontSize: 12
                ),
              ),
            ],
          ),
          const SizedBox(height: 26),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              investMenuItem(
                iconPath: "assets/color_icons/reksadana.png",
                text: "Reksa Dana"
              ),
              investMenuItem(
                iconPath: "assets/color_icons/sbn.png",
                text: "SBN Retail"
              ),
              investMenuItem(
                iconPath: "assets/color_icons/fr-syariah.png",
                text: "FR Syariah"
              ),
              investMenuItem(
                iconPath: "assets/color_icons/earn.png",
                text: "Stable Earn"
              ),
              investMenuItem(
                iconPath: "assets/color_icons/stock.png",
                text: "Saham"
              )
            ],
          )
        ],
      ),
    );
  }
}