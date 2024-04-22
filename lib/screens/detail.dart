import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:video_player/video_player.dart';
import 'package:view_hub/models/custom_colors.dart';

class DetailVideo extends StatefulWidget {
  const DetailVideo({super.key});

  @override
  State<DetailVideo> createState() => _DetailVideoState();
}

class _DetailVideoState extends State<DetailVideo> {

  late FlickManager _flickManager;

  @override
  void initState() {
    super .initState();
    _flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 16 / 10,
            child: FlickVideoPlayer(
              flickManager: _flickManager,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Expanded(
              child: Text(
                "Acara Makrab Mahasiswa STMIK AMIK Angkatan 2022 terjalin meriah dan sangat akrab",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: RichText(text: TextSpan(children: [
              TextSpan(
                text: " 900 Views  ",
                style: TextStyle(
                  color: Colors.white.withOpacity(.5)
                )
              ),
              TextSpan(
                text: " 17 apr 2023  ",
                style: TextStyle(
                  color: Colors.white.withOpacity(.5)
                )
              ),
              const TextSpan(text: " Read more..."),
            ])),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 9),
            child: Column(
              children: [
                 _ChannelSection(),
                 SizedBox(height: 12),
                 _VideoActionSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ChannelSection extends StatelessWidget {
  const _ChannelSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/images/user_image.png",
                fit: BoxFit.contain,
                width: 25,
                height: 25,
              ),
            ),
            const SizedBox(width: 8,),
            const Text("Humas amik bdg", style: TextStyle(fontSize: 14),)
          ],
        ),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: CustomColor.brand,
            borderRadius: BorderRadius.circular(12)
          ),
          child: const Text(
            "Subscribe",
            style: TextStyle(
              color: Colors.black
            ),
          ),
        )
      ],
    );
  }
}

class _VideoActionSection extends StatelessWidget {
  const _VideoActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        addAutomaticKeepAlives: true,
        scrollDirection: Axis.horizontal,
        children: [
          // Liked
          FilledButton(
            onPressed: () {}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(.15)
            ),
            child: const Row(children: [
              Icon(
                FeatherIcons.thumbsUp,
                size: 16,
              ),
              SizedBox(width: 12),
              Text("100", style: TextStyle(fontSize: 14),)
            ])
          ),
          const SizedBox(width: 10),
          
          // Disliked
          FilledButton(
            onPressed: () {}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(.15)
            ),
            child: const Row(children: [
              Icon(
                FeatherIcons.thumbsDown,
                size: 16,
              ),
              SizedBox(width: 12),
              Text("6", style: TextStyle(fontSize: 14),)
            ])
          ),
          const SizedBox(width: 10),
          
          // Shared
          FilledButton(
            onPressed: () {}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(.15)
            ),
            child: const Row(children: [
              Icon(
                FeatherIcons.share2,
                size: 16,
              ),
              SizedBox(width: 12),
              Text("Shared", style: TextStyle(fontSize: 14),)
            ])
          ),
          const SizedBox(width: 10),
          
          // Save to Bookmark
          FilledButton(
            onPressed: () {}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(.15)
            ),
            child: const Row(children: [
              Icon(
                FeatherIcons.bookmark,
                size: 16,
              ),
              SizedBox(width: 12),
              Text("Bookmark", style: TextStyle(fontSize: 14),)
            ])
          ),
          const SizedBox(width: 10),
          
          // Download
          FilledButton(
            onPressed: () {}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(.15)
            ),
            child: const Row(children: [
              Icon(
                FeatherIcons.download,
                size: 16,
              ),
              SizedBox(width: 12),
              Text("Download", style: TextStyle(fontSize: 14),)
            ])
          ),
          const SizedBox(width: 10),
          
          // Report
          FilledButton(
            onPressed: () {}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(.15)
            ),
            child: const Row(children: [
              Icon(
                FeatherIcons.flag,
                size: 16,
              ),
              SizedBox(width: 12),
              Text("Report", style: TextStyle(fontSize: 14),)
            ])
          ),
          const SizedBox(width: 10),
    
        ],
      ),
    );
  }
}