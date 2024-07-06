import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  Widget eventCardItem({ required coverPath, required title, required duration }){
    return Container(
      width: 220,
      margin: const EdgeInsets.only(
        left: 16
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffEFEFEF),
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(4)
            ),
            child: Image.asset(
              coverPath,
              width: 220,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 9,
              horizontal: 12
            ),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Color(0xff343434),
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    const Icon(
                      Icons.play_arrow_rounded,
                      color: Color(0xff858585),
                      size: 16,
                    ),
                    Text(
                      duration,
                      style: const TextStyle(
                        color: Color(0xff858585),
                        fontSize: 11
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List eventItems = [
      {
        "cover_path": "assets/events/event-1.png",
        "title": "Curhat bapak Ibu - Investasi Rendah Risiko untuk Keluarga",
        "duration": "01:00:36"
      },
      {
        "cover_path": "assets/events/event-2.png",
        "title": "Market Update: Investasi Berbasis Obligasi Korporasi",
        "duration": "01:00:36"
      }
    ];

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        vertical: 24
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
                  "assets/color_icons/presentation.png",
                  width: 16,
                  height: 16,
                ),
                const SizedBox(
                  width: 8
                ),
                const Text(
                  "Event",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff343434)
                  ),
                ),
                const Spacer(),
                const Text(
                  "Lihat Semua",
                  style: TextStyle(
                    color: Color(0xff22A271),
                    fontWeight: FontWeight.w400,
                    fontSize: 12
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 22),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16
            ),
            child: Text(
              "Temukan Berbagai Event di Bibit",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff343434)
              ),
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                eventItems.length,
                  (index) => eventCardItem(
                  title: eventItems[index]['title'],
                  coverPath: eventItems[index]['cover_path'],
                  duration: eventItems[index]['duration']
                )
              )
            ),
          )
        ],
      ),
    );
  }
}