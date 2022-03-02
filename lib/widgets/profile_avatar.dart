import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String currentUser;
  final bool isActive;

  const ProfileAvatar(
      {Key? key, required this.currentUser, this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.0,
      backgroundColor: Colors.grey,
      // backgroundImage: CachedNetworkImageProvider(imageUrl),
    );
  }
}
