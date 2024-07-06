import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key});

  Widget articleItem({ required imagePath, required title, required category }){
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffEFEFEF),
          )
        )
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 16
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 66,
            height: 66,
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xff343434),
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  category,
                  style: const TextStyle(
                    color: Color(0xff858585),
                    fontWeight: FontWeight.w500,
                    fontSize: 12
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/color_icons/promo.png",
                width: 18,
                height: 18,
              ),
              const SizedBox(width: 8),
              const Text(
                "Artikel",
                style: TextStyle(
                  color: Color(0xff343434),
                  fontWeight: FontWeight.bold,
                  fontSize: 13
                ),
              )
            ],
          ),
          articleItem(
            imagePath: "assets/article/article-1.png",
            title: "Libur Weekend tetap Bisa Beli SR020 di Bibit",
            category: "News"
          ),
          articleItem(
            imagePath: "assets/article/article-2.png",
            title: "Cari tahu Profil Risiko Kamu dari Alokasi Aset di Portofolio",
            category: "Features"
          ),
          articleItem(
            imagePath: "assets/article/article-3.png",
            title: "Simulasi Imbal Hasil Kupon SR020, Dapat gaji tambahan hingga Rp47,9 juta per Bulan",
            category: "Education"
          ),
          articleItem(
            imagePath: "assets/article/article-4.png",
            title: "Dapatkan Kupon Obligasi FR Setiap Bulan, Sepanjang Tahun",
            category: "News"
          ),
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Lihat Semua",
              style: TextStyle(
                color: Color(0xff22A271),
                fontSize: 12,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            color: const Color(0xffECF8F4),
            padding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 12
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/color_icons/whatsapp.png",
                  width: 36,
                  height: 36,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      text: "Ikuti",
                      style: TextStyle(
                        color: Color(0xff22A271),
                        fontSize: 12,
                      ),
                      children: [
                        TextSpan(
                          text: " Whatsapp Channel bibit",
                          style: TextStyle(
                            color: Color(0xff22A271),
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        TextSpan(
                          text: " untuk dapatkan artikel terbaru setiap hari",
                          style: TextStyle(
                            color: Color(0xff22A271),
                            fontSize: 12,
                          )
                        )
                      ]
                    ),
                  ),
                ),
                const SizedBox(width: 32),
                const Icon(
                  Icons.chevron_right,
                  color: Color(0xff01AB6C),
                  size: 14,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}