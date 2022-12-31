import 'package:flutter/material.dart';
import 'package:tuwaiq_community/views/globalComponents/TextStyle.dart';
import 'package:tuwaiq_community/views/style.dart';

class UserRankCard extends StatelessWidget {
  const UserRankCard({
    super.key,
    required this.rank,
    required this.name,
    required this.profileImagePath,
    required this.point,
    required this.bannerPath,
  });
  final int rank;
  final String name;
  final String profileImagePath;
  final int point;
  final String bannerPath;
  

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 8),
        height: 51,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bannerPath != ""
                ? bannerPath
                : "images/LeaderboardBannerEmpty.png"),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          border: Border.all(width: 0.5),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (rank == 1)
              Image.asset("images/Rank1.png")
            else if (rank == 2)
              Image.asset("images/Rank2.png")
            else if (rank == 3)
              Image.asset("images/Rank3.png")
            else
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("images/RankN.png"),
                  Padding(
                    padding: EdgeInsets.only(bottom: 1, right: 2),
                    child: TextStyleMyApp(
                      text: "$rank",
                      colorText: Colors.white,
                      fontSizeText: 12,
                    ),
                  )
                ],
              ),
            const SizedBox(
              width: 20,
            ),
            Image.asset(profileImagePath),
            const SizedBox(
              width: 23,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 6),
              child: TextStyleMyApp(
                text: "$name",
                colorText: appColors.onSecondary,
                fontSizeText: 24,
              ),
            ),
            const Expanded(
              child: SizedBox(
                width: 40,
              ),
            ),
            TextStyleMyApp(
              colorText: appColors.onSecondary,
              fontSizeText: 20,
              text: "$point",
              fontWeightMyApp: FontWeight.bold,
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ));
  }
}
