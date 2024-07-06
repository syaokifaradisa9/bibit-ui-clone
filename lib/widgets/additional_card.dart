import 'package:flutter/material.dart';

class AdditionalCard extends StatelessWidget {
  const AdditionalCard({super.key});

  Widget additionalCardItem({ required iconPath, required title, required description }){
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffEFEFEF)
          )
        )
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20
      ),
      child: Row(
        children: [
          Image.asset(
            iconPath,
            height: 70,
            width: 70,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xff343434),
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xff858585)
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 16),
          const Icon(
            Icons.chevron_right,
            color: Color(0xff01AB6C),
            size: 18,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List contents = [
      {
        "icon_path": "assets/color_icons/gift.png",
        "title": "Gift Card Reksa Dana",
        "description": "Hadiahkan reksa dana ke teman dan keluarga kamu di hari spesial mereka"
      },
      {
        "icon_path": "assets/color_icons/quiz.png",
        "title": "Quiz Investasi",
        "description": "Yuk uji wawasan kamu tentang reksa dana melalui quiz investasi"
      },
      {
        "icon_path": "assets/color_icons/tele-community.png",
        "title": "Gabung Komunitas Bibit di Telegram",
        "description": "Yuk gabung ke komunitas untuk bisa berdiskusi seputar investasi"
      },
      {
        "icon_path": "assets/color_icons/wa-channel.png",
        "title": "Ikuti WhatsApp Channel Bibit",
        "description": "Dapatkan informasi terbaru seputar Bibit dan investasi"
      }
    ];

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      padding: const EdgeInsets.fromLTRB(24, 4, 24, 0),
      color: Colors.white,
      child: Column(
        children: List.generate(
          contents.length,
            (index) => additionalCardItem(
            title: contents[index]['title'],
            iconPath: contents[index]['icon_path'],
            description: contents[index]['description']
          )
        )
      ),
    );
  }
}