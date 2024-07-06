import 'package:flutter/material.dart';

class AcademyCard extends StatelessWidget {
  const AcademyCard({super.key});

  Widget academyCardItem({
    required backgroundPath,
    required title,
    required educator,
    required videoCount
  }){
    return Container(
      width: 293,
      height: 147,
      margin: const EdgeInsets.only(
        left: 16
      ),
      padding: const EdgeInsets.fromLTRB(10, 24, 0, 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundPath)
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff343434)
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  educator,
                  style: const TextStyle(
                    color: Color(0xff858585),
                    fontSize: 11,
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: 56,
            height: 23,
            decoration: BoxDecoration(
              color: const Color(0xff706C6B),
              borderRadius: BorderRadius.circular(4)
            ),
            alignment: Alignment.center,
            child: Text(
              "$videoCount Video",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List educations = [
      {
        "background_path": "assets/academy/academy-1.png",
        "title": "Surat Berharga Negara (SBN)",
        "educator": "Ricky Susanto Joeng, CFP",
        "video_count": 8
      },
      {
        "background_path": "assets/academy/academy-2.png",
        "title": "Obligasi Fixed Rate (FR)",
        "educator": "Gabrielle Christie",
        "video_count": 9
      }
    ];

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        vertical: 24,
      ),
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
                  "assets/color_icons/education.png",
                  height: 18,
                  width: 18,
                ),
                const SizedBox(width: 8),
                const Text(
                  "Academy",
                  style: TextStyle(
                    color: Color(0xff343434),
                    fontSize: 13,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const Spacer(),
                const Text(
                  "Lihat Semua",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff22A271)
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16
            ),
            child: Text(
              "Pusat Edukasi Investasi",
              style: TextStyle(
                color: Color(0xff343434),
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                educations.length,
                  (index) => academyCardItem(
                  backgroundPath: educations[index]['background_path'],
                  title: educations[index]['title'],
                  educator: educations[index]['educator'],
                  videoCount: educations[index]['video_count']
                )
              )
            ),
          )
        ],
      ),
    );
  }
}