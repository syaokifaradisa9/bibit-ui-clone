import 'package:flutter/material.dart';

class RoboCard extends StatelessWidget {
  const RoboCard({super.key});

  Widget roboCardHeader(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              "assets/color_icons/robo.png",
              width: 18,
              height: 18,
            ),
            const SizedBox(width: 8),
            const Text(
              "Robo",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 13
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          "Mulai Siapkan Dana Pensiun Kamu",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xff343434)
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "Langsung ikuti 3 rekomendasi reksa dana dari Robo\nkamu sesuai dengan profil risikomu.",
          style: TextStyle(
            color: Color(0xff858585),
            fontSize: 13
          ),
        )
      ],
    );
  }

  Widget roboIntroduction(){
    return Container(
      color: const Color(0xffECF8F4),
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 8
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/color_icons/play-button.png",
            width: 42,
            height: 45,
          ),
          const SizedBox(width: 16),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Yuk Kenalan Sama Robo",
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xff22A271),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Bagi kamu yang mengerti Robo",
                style: TextStyle(
                  color: Color(0xff858585),
                  fontWeight: FontWeight.w500,
                  fontSize: 11
                ),
              )
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.close,
            size: 14,
            color: Color(0xff858585),
          )
        ],
      ),
    );
  }

  Widget reksaDanaCard({
    required iconPath,
    required name,
    required type,
    required percentage,
    required sideColor
  }){
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(color: Color(0xffF2F2F2)),
          bottom: BorderSide(color: Color(0xffF2F2F2)),
          top: BorderSide(color: Color(0xffF2F2F2)),
        )
      ),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 64,
            color: sideColor,
          ),
          const SizedBox(width: 8),
          Image.asset(
            iconPath,
            width: 36,
            height: 36,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                type,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 11,
                  color: Color(0xff858585)
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            "$percentage%",
            style: const TextStyle(
              color: Color(0xff343434),
              fontSize: 13,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(width: 8),
          const Icon(
            Icons.chevron_right,
            color: Color(0xff858585),
            size: 14,
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }

  Widget investmentProfile(){
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffF2F2F2)
            )
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 16
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/color_icons/chair.png",
                width: 36,
                height: 36,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Dana Pensiun",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  const SizedBox(height: 6),
                  RichText(
                    text: const TextSpan(
                      text: "Profil Risiko: ",
                      style: TextStyle(
                        color: Color(0xff858585),
                        fontSize: 11
                      ),
                      children: [
                        TextSpan(
                          text: "7",
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff343434)
                          )
                        )
                      ]
                    ),
                  )
                ],
              ),
              const Spacer(),
              const Text(
                "Ubah",
                style: TextStyle(
                  color: Color(0xff22A271),
                  fontWeight: FontWeight.w500
                ),
              )
            ],
          ),
        ),
        reksaDanaCard(
          name: "Majoris Pasar Uang Syariah Indonesia",
          percentage: "10",
          type: "Pasar Uang",
          iconPath: "assets/color_icons/pasar-uang.png",
          sideColor: const Color(0xff01AB6C)
        ),
        reksaDanaCard(
          name: "Bahana MES Syariah Fund Kelas G",
          percentage: "43",
          type: "Obligasi",
          iconPath: "assets/color_icons/obligasi.png",
          sideColor: const Color(0xff2579B4)
        ),
        reksaDanaCard(
          name: "TRIM Syariah Saham",
          percentage: "47",
          type: "Saham",
          iconPath: "assets/color_icons/saham.png",
          sideColor: const Color(0xff9341C7)
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffF2F2F2)
            )
          ),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xff01AB6C),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text(
              "Buat Portofolio",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              )
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          roboCardHeader(),
          const SizedBox(height: 20),
          roboIntroduction(),
          const SizedBox(height: 20),
          investmentProfile()
        ],
      ),
    );
  }
}