import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  Widget walletMenu({ required iconPath, required text }){
    return Column(
      children: [
        Image.asset(
          iconPath,
          width: 24,
          height: 24,
        ),
        const SizedBox(height: 4),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff313131),
            fontSize: 11
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffEAF9F4),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(4)
              )
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Pakai RDN Wallet. Gratis Biaya Pembayaran",
                        style: TextStyle(
                          color: Color(0xff22A271),
                          fontSize: 11
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.close,
                        color: Color(0xff858585),
                        size: 14,
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xffEFEFEF)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "RDN Wallet",
                                      style: TextStyle(
                                        color: Color(0xff858585),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Icon(
                                      Icons.chevron_right,
                                      color: Color(0xff343434),
                                      size: 12,
                                    )
                                  ],
                                ),
                                Text(
                                  "Rp1,000,000,000,000",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Color(0xff343434)
                                  ),
                                )
                              ],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                vertical: 6,
                                horizontal: 11
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xffEAF9F4),
                                borderRadius: BorderRadius.circular(100)
                              ),
                              child: const Text(
                                "Upgrade Bibit Plus",
                                style: TextStyle(
                                  color: Color(0xff22A271),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Divider(
                          color: Color(0xffEFEFEF),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            walletMenu(
                              text: "Portofolio",
                              iconPath: "assets/color_icons/chart.png"
                            ),
                            walletMenu(
                              text: "SIP",
                              iconPath: "assets/color_icons/calendar.png"
                            ),
                            walletMenu(
                              text: "Referral",
                              iconPath: "assets/color_icons/referral.png"
                            ),
                            walletMenu(
                              text: "Lainnya",
                              iconPath: "assets/color_icons/more.png"
                            )
                          ],
                        )
                      ],
                    ),
                  )
                )
              ],
            )
          )
        ],
      ),
    );
  }
}