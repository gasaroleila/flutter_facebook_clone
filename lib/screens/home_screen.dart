import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/data/data.dart';
import 'package:facebook_clone/widgets/create_post_contaier.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          // brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: TextStyle(
              color: Palette.facebookBlue,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          centerTitle: false,
          floating: true,
          actions: [
            CircleButton(
              icon: Icons.search,
              iconSize: 28.0,
            ),
            CircleButton(
              icon: MdiIcons.facebookMessenger,
              iconSize: 28.0,
            )
          ],
        ),
        SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser)),
        SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(child: Rooms(onlineUsers: onlineUsers)))
      ],
    ));
  }
}
