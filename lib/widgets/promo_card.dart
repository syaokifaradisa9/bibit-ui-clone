import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 24
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/color_icons/promo.png",
                  width: 18,
                  height: 18
                ),
                const SizedBox(width: 8),
                const Text(
                  "Promo",
                  style: TextStyle(
                    color: Color(0xff343434),
                    fontSize: 13,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 21),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16
            ),
            child: Text(
              "Promo Menarik untuk kamu",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff343434),
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 16),
                Image.asset(
                  "assets/promo/promo-1.png",
                  height: 130,
                ),
                const SizedBox(width: 16),
                Image.asset(
                  "assets/promo/promo-2.png",
                  height: 130,
                ),
                const SizedBox(width: 16),
              ],
            ),
          )
        ],
      ),
    );
  }
}