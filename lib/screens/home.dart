import 'package:flutter/material.dart';
import 'package:view_hub/models/custom_colors.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:view_hub/widgets/video_card.dart';

var topMenus = [
  "Live Stream",
  "Berita Terkini",
  "Hot News",
  "Ter Viraaaal",
  "Sport",
  "Lainnya"
];

final List<Map<String, dynamic>> videoList = [
  {
    'thumbnailUrl': 'assets/images/landscape_image.png',
    'title': 'Acara Makrab Mahasiswa STMIK AMIK Angkatan 2022 terjalin meriah dan sangat akrab',
    'duration': '10:11',
    'viewed': 350,
    'liked': 54,
    'channelThumbnail': 'assets/images/user_image.png',
    'channelName': 'Humas',
  },
  {
    'thumbnailUrl': 'assets/images/potrait_image.png',
    'title': 'Acara Makrab Mahasiswa STMIK AMIK Angkatan 2022 terjalin meriah dan sangat akrab',
    'duration': '22:25',
    'viewed': 350,
    'liked': 54,
    'channelThumbnail': 'assets/images/user_image.png',
    'channelName': 'Humas Amik Bdg',
  },
  {
    'thumbnailUrl': 'assets/images/landscape_image.png',
    'title': 'Acara Makrab Mahasiswa STMIK AMIK Angkatan 2022 terjalin meriah dan sangat akrab',
    'duration': '33:02',
    'viewed': 350,
    'liked': 54,
    'channelThumbnail': 'assets/images/user_image.png',
    'channelName': 'Humas Amik Bdg',
  }
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
        child: ListView(
          scrollDirection: Axis.vertical,
          addAutomaticKeepAlives: true,
          addRepaintBoundaries: true,
          children: [
            const SizedBox(height: 12),
            const TopMenus(),
            const SizedBox(height: 12),
            _videoList()
          ],
        ),
      )
    );
  }

  ListView _videoList() {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final video = videoList[index];
        return InkWell(
          onTap: () {
            print("Halo aku bima");
          },
          child: VideoCard(
            thumbnailUrl: video["thumbnailUrl"],
            title: video["title"],
            duration: video["duration"],
            viewed: video["viewed"],
            liked: video["liked"],
            channelThumbnail: video["channelThumbnail"],
            channelName: video["channelName"]
          ),
        );
      },
      // itemBuilder: (context, index) => Text(videoList[index]["duration"]),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: videoList.length
    );
  }
}

class TopMenus extends StatelessWidget {
  const TopMenus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.075),
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Colors.white.withOpacity(0.1), 
            width: 2
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
                  color: Colors.white.withOpacity(.15), width: 1
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
    );
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
