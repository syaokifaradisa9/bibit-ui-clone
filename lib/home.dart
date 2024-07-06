import 'package:bibit_clone/widgets/academy_card.dart';
import 'package:bibit_clone/widgets/additional_card.dart';
import 'package:bibit_clone/widgets/article_card.dart';
import 'package:bibit_clone/widgets/event_card.dart';
import 'package:bibit_clone/widgets/home_footer.dart';
import 'package:bibit_clone/widgets/investment_card.dart';
import 'package:bibit_clone/widgets/portfolio_card.dart';
import 'package:bibit_clone/widgets/promo_card.dart';
import 'package:bibit_clone/widgets/robo_card.dart';
import 'package:bibit_clone/widgets/statistic_card.dart';
import 'package:bibit_clone/widgets/wallet_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        shadowColor: Colors.white,
        title: Image.asset(
          "assets/logo/bibit.png",
          width: 56,
          height: 12,
        ),
        actions: [
          Image.asset(
            "assets/icons/bell.png",
            width: 20,
            height: 20,
            color: const Color(0xffA1A1A1),
          ),
          const SizedBox(width: 16),
        ],
      ),
      backgroundColor: const Color(0xffF7F7F7),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                color: Colors.white,
                width: double.infinity,
              ),
              const Column(
                children: [
                  StatisticCard(),
                  SizedBox(height: 20),
                  WalletCard()
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          const InvestmentCard(),
          const SizedBox(height: 20),
          const PortfolioCard(),
          const SizedBox(height: 20),
          const RoboCard(),
          const SizedBox(height: 20),
          const PromoCard(),
          const SizedBox(height: 20),
          const ArticleCard(),
          const SizedBox(height: 20),
          const EventCard(),
          const SizedBox(height: 20),
          const AcademyCard(),
          const SizedBox(height: 20),
          const AdditionalCard(),
          const SizedBox(height: 20),
          const HomeFooter()
        ],
      )
    );
  }
}
