import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:video_player/video_player.dart';
import 'package:view_hub/models/comment_message.dart';
import 'package:view_hub/models/custom_colors.dart';
import 'package:view_hub/models/video_list.dart';
import 'package:view_hub/widgets/comment.dart';
import 'package:view_hub/widgets/video_card.dart';

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
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          color: Colors.white.withOpacity(.1)
                        )
                      )
                    ),
                    child: const TabBar(
                      dividerColor: Colors.transparent,
                      labelColor: CustomColor.brand,
                      indicatorColor: CustomColor.brand,
                      tabs: [
                        Tab(text: 'Related Videos'),
                        Tab(text: 'Comments'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        _videoList(),
                        Stack(
                          children: [
                            Expanded(child: Padding(
                              padding: const EdgeInsets.only(bottom: 100),
                              child: _commentList(),
                            )),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              width: MediaQuery.of(context).size.width,
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black,
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Image.asset(
                                        "assets/images/user_image.png",
                                        width: 35,
                                        height: 35,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            hintText: "Write a message...",
                                            hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, .25)),
                                            suffixIcon: Icon(
                                              FeatherIcons.smile, 
                                              color: Color.fromRGBO(255, 255, 255, .25), 
                                              size: 18,
                                            ),
                                            filled: true,
                                            fillColor: Color.fromRGBO(255, 255, 255, .075),
                                            focusColor: CustomColor.brand,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(24)),
                                              borderSide: BorderSide(
                                                color: CustomColor.brand,
                                              )
                                            ),
                                            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(24))
                                            )
                                          ),
                                        ),
                                      )
                                    ),
                                    ElevatedButton(
                                      onPressed: () {}, 
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: CustomColor.brand
                                      ),
                                      child: const Icon(
                                        FeatherIcons.send,
                                        color: Colors.white,
                                      )
                                    )
                                  ]
                                ),
                              )
                            )
                            
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListView _commentList() {

    final data = CommentMessage.commentList();

    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CommentView(props: data[index]);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemCount: data.length,
    );
  }

  ListView _videoList() {
    final data = VideoList.videoList();

    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => const DetailVideo()
              )
            );
          },
          child: VideoCard(props: data[index],),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: data.length
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