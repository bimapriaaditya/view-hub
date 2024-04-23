import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:view_hub/models/custom_colors.dart';

class CommentView extends StatelessWidget {
  const CommentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/user_image.png",
              width: 25,
              height: 25,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(bottom: 12),
              margin: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white.withOpacity(.15),
                    width: 1
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Sukirman Yudoyono", 
                        style: TextStyle(
                          fontSize: 14
                        )
                      ),
                      SizedBox(width: 12),
                      Text(
                        "17/04/2023 09:21",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12
                        ),
                      ),
                    ]
                  ),
                  const SizedBox(height: 6),
                  const Text("Mantaap maju terus amik semoga semakin didepan dan menjadi yang luarbiasa #yangpastipastiaja"),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Row(children: [
                          Icon(
                            FeatherIcons.cornerDownRight,
                            size: 14,
                            color: CustomColor.brand,
                          ),
                          SizedBox(width: 6,),
                          Text("Reply", style: TextStyle(color: CustomColor.brand),)
                        ],),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Row(children: [
                          const Icon(
                            FeatherIcons.eye,
                            size: 14,
                            color: Color.fromRGBO(255, 255, 255, .25),
                          ),
                          const SizedBox(width: 6,),
                          Text("See Reply (6)", style: TextStyle(color: Colors.white.withOpacity(.25)),)
                        ],),
                      ),
                    ],
                  )
                ]
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  FeatherIcons.heart, 
                  size: 14,
                  color: Colors.white,
                ),
                Text("136"),
              ]
            ),
          )
        ],
      ),
    );
  }
}