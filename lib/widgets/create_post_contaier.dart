import 'package:facebook_clone/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.4),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey,
                backgroundImage:
                    CachedNetworkImageProvider(currentUser.imageUrl),
              ),
              const SizedBox(width: 8.0),
              const Expanded(
                  child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: "What\'s on your mind?"),
              ))
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // TextButton.icon(
              //   onPressed: () => {print("Live")},
              //   icon: const Icon(
              //     Icons.videocam,
              //     color: Colors.red,
              //   ),
              //   label: const Text('Live'),
              // ),
              Row(children: [
                IconButton(
                  onPressed: () => {print("Live")},
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                ),
                const Text('Live')
              ]),
              const VerticalDivider(
                width: 8.0,
              ),
              Row(children: [
                IconButton(
                  onPressed: () => {print("photo")},
                  icon: const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                ),
                const Text('phone')
              ]),
              const VerticalDivider(
                width: 8.0,
              ),
              Row(children: [
                IconButton(
                  onPressed: () => {print("room")},
                  icon: const Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ),
                ),
                const Text('Live')
              ]),
              const VerticalDivider(
                width: 8.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
