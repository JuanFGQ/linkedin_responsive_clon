import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_responsive_clon/widgets/user_post.dart';
import 'package:linkedin_responsive_clon/widgets/vertical_icon_reaction.dart';

class MobileSize extends StatefulWidget {
  const MobileSize({super.key});

  @override
  State<MobileSize> createState() => _MobileSizeState();
}

class _MobileSizeState extends State<MobileSize> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: _CustomBottomBar(
          size: size,
          scrollController: _scrollController,
        ),
        body: SafeArea(
            child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white,
                elevation: 2,
                expandedHeight: size.height * 0.04,
                floating: true,
                // actions: [CircleAvatar(), Container(width: 50, child: TextField())],
                flexibleSpace: _AppBar(size: size),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                const UserPost(),
                const UserPost(),
                const UserPost(),
                const UserPost(),
                const UserPost(),
              ]))
            ],
          ),
        )));
  }
}

class _CustomBottomBar extends StatefulWidget {
  final ScrollController scrollController;
  final Size size;
  const _CustomBottomBar(
      {super.key, required this.size, required this.scrollController});

  @override
  State<_CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<_CustomBottomBar> {
  double previousScroll = 0;

  @override
  Widget build(BuildContext context) {
    double scrollOffset = widget.scrollController.offset;

    bool flag = true;

    if (scrollOffset > previousScroll && scrollOffset > 150) {
      flag = false;
    } else {
      flag = true;
    }

    previousScroll = scrollOffset;

    return AnimatedContainer(
      duration: Duration(milliseconds: 180),
      curve: Curves.easeIn,
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey))),
      height: flag ? 55 : 0,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VerticalIcon(text: 'Home', icon: Icons.home),
          VerticalIcon(text: 'My Network', icon: Icons.people),
          VerticalIcon(text: 'Post', icon: Icons.add_box_rounded),
          VerticalIcon(text: 'Notifications', icon: Icons.notifications),
          VerticalIcon(text: 'Jobs', icon: Icons.work),
        ],
      ),
    );
    // },
    // );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            CircleAvatar(
              radius: size.width * 0.045,
              child: const Image(image: AssetImage('assets/profile.png')),
            ),
            const SizedBox(width: 10),
            const Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 9, bottom: 9),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 224, 223, 223),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 5),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Buscar',
                  hintStyle: TextStyle(fontSize: 20.0),
                ),
              ),
            )),
            const SizedBox(width: 10),
            const Icon(Icons.sort),
            const SizedBox(width: 30),
            const Icon(Icons.message),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
