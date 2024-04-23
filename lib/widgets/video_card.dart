import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:view_hub/models/video_list.dart';

class VideoCard extends StatelessWidget {
  final VideoList props;

  const VideoCard({
    super.key,
    required this.props
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                props.thumbnailUrl,
                width: double.infinity,
                height: 225,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 16,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.75),
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(8))
                  ),
                  child: Text(props.duration, 
                    style: const TextStyle(
                      color: Colors.white
                    ),
                  ),
                )
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        props.channelThumbnail,
                        fit: BoxFit.contain,
                        width: 25,
                        height: 25,
                      ),
                    ),
                    const SizedBox(width: 8,),
                    Text(props.channelName, style: const TextStyle(fontSize: 16),)
                  ],
                ),
                Row(children: [
                  Row(children: [
                    const Icon(
                      FeatherIcons.eye, 
                      color: Colors.white, 
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(props.viewed.toString())
                  ]),
                  const SizedBox(width: 12,),
                  Row(children: [
                    const Icon(
                      FeatherIcons.thumbsUp, 
                      color: Colors.white, 
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(props.liked.toString())
                  ])
                ],),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Expanded(
              child: Text(
                props.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}