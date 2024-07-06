import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({super.key});

  Widget portfolioCardItem({ required title, required productCount, required investValue, required returnValue }){
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20
      ),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(4)
        ),
        border: Border.all(
          color: const Color(0xffF2F2F2)
        )
      ),
      width: 300,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/color_icons/chicken.png",
                width: 36,
                height: 36,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "$productCount Produk",
                    style: const TextStyle(
                      color: Color(0xff858585),
                      fontSize: 11
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Investasi",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff858585),
                    ),
                  ),
                  Text(
                    "Rp $investValue",
                    style: const TextStyle(
                      color: Color(0xff343434),
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
                    "Keuntungan",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff858585),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Rp $returnValue",
                    style: const TextStyle(
                      color: Color(0xff22A271),
                      fontSize: 13
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 8),
          const Divider(thickness: 0.2),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 12
            ),
            decoration: const BoxDecoration(
              color: Color(0xff01AB6C),
              borderRadius: BorderRadius.all(
                Radius.circular(4)
              )
            ),
            alignment: Alignment.center,
            child: const Text(
              "Top Up",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 24
      ),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/chart.png",
                  color: Color(0xff22A271),
                  width: 18
                ),
                const SizedBox(width: 8),
                const Text(
                  "Portofolio",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const Spacer(),
                const Text(
                  "Tambah Baru",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff22A271)
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 26),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 16),
                portfolioCardItem(
                  title: "Modal Bisnis F&B",
                  productCount: 3,
                  investValue: "3,000,000,000,000",
                  returnValue: "6,000,000,000,000"
                ),
                portfolioCardItem(
                  title: "Modal Bisnis Start Up",
                  productCount: 4,
                  investValue: "2,500,000,000,000",
                  returnValue: "3,500,000,000,000"
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}