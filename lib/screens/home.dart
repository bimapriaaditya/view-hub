import 'package:flutter/material.dart';
import 'package:view_hub/models/custom_colors.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";

var topMenus = [
  "Live Stream",
  "Berita Terkini",
  "Hot News",
  "Ter Viraaaal",
  "Sport",
  "Lainnya"
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const TopNavigation(),
          backgroundColor: CustomColor.canvas,
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.075),
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      color: Colors.white.withOpacity(0.1), width: 2
                    )
                  )
                ),
                child: SizedBox(
                  height: 50,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.white.withOpacity(.15),
                            width: 1
                          )
                        )
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        topMenus[index],
                      )
                    ),
                    separatorBuilder: (context, index) => const SizedBox(width: 12),
                    itemCount: topMenus.length
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class TopNavigation extends StatelessWidget {
  const TopNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: CustomColor.brand,
                size: 28,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/view_hub_logo.png',
                height: 32,
                fit: BoxFit.contain,
              ),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FeatherIcons.search,
                      color: Colors.white,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FeatherIcons.user,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
