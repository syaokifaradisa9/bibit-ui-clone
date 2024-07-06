import 'package:flutter/material.dart';

class StatisticCard extends StatelessWidget {
  const StatisticCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Nilai Portofolio",
            style: TextStyle(
              color: Color(0xff858585)
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              RichText(
                text: const TextSpan(
                  text: "Rp",
                  style: TextStyle(
                    color: Color(0xff343434),
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                  children: [
                    TextSpan(
                      text: " 15,000,000,000,000",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ]
                ),
              ),
              const SizedBox(width: 6),
              Image.asset(
                "assets/icons/unlock.png",
                width: 18,
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "keuntungan",
                    style: TextStyle(
                      color: Color(0xff858585),
                      fontSize: 13
                    ),
                  ),
                  Text(
                    "Rp10,000,000,000,000",
                    style: TextStyle(
                      color: Color(0xff22A271),
                      fontWeight: FontWeight.w400,
                      fontSize: 13
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Imbal Hasil",
                    style: TextStyle(
                      color: Color(0xff858585),
                      fontSize: 13
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/caret-up.png",
                        color: const Color(0xff22A271),
                        width: 12,
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        "+200%",
                        style: TextStyle(
                          color: Color(0xff22A271),
                          fontWeight: FontWeight.w400,
                          fontSize: 13
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}