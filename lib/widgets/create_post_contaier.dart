import 'dart:html';

import 'package:facebook_clone/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  CreatePostContainer({Key? key, required this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey,
                backgroundImage:
                    CachedNetworkImageProvider(currentUser.imageUrl),
              )
            ],
          )
        ],
      ),
    );
  }
}
