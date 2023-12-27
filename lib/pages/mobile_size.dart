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

class _CustomBottomBar extends StatelessWidget {
  final ScrollController scrollController;
  final Size size;
  const _CustomBottomBar(
      {super.key, required this.size, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    print('OFFSET ${scrollController.offset}');
    return AnimatedBuilder(
      animation: scrollController,
      builder: (context, child) {
        double previousScroll = 0;
        double maxExtent = size.height * 0.07;
        double minExtent = size.height * 0;
        double scrollOffset = scrollController.offset;
        // lerpDouble(a, b, t)

        // double interpolateHeight = scrollOffset > 500
        //     ? lerpDouble(maxExtent, minExtent, (scrollOffset - 100) / 100) ??
        //         minExtent
        //     : minExtent;

        // double clampledOffset = interpolateHeight.clamp(minExtent, maxExtent);

        // if (scrollController.offset > previousScroll) {}

        return Container(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey))),
          height: clampledOffset,
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
      },
    );
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




// class _ExpandableBottomSheet extends StatefulWidget {
//   final Size size;
//   const _ExpandableBottomSheet({super.key, required this.size});

//   @override
//   State<_ExpandableBottomSheet> createState() => __ExpandableBottomSheetState();
// }

// class __ExpandableBottomSheetState extends State<_ExpandableBottomSheet> {
//   double opacity = 0.0;
//   double _position = 0.0;

//   bool isExpanded = false;
//   @override
//   Widget build(BuildContext context) {
//     return NotificationListener<DraggableScrollableNotification>(
//       onNotification: (notification) {
//         setState(() {
//           _position = notification.extent;
//         });
//         return true;
//       },
//       child: DraggableScrollableSheet(
//         expand: isExpanded,
//         initialChildSize: 0.08,
//         maxChildSize: 1.0,
//         minChildSize: 0.08,
//         builder: (context, scrollController) {
//           return Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(_position > 0.59 ? 0 : 35),
//                   topRight: Radius.circular(_position > 0.59 ? 0 : 35)),
//               color: const Color(0xff1b303e),
//             ),
//             child: SingleChildScrollView(
//               controller: scrollController,
//               child: Column(
//                 children: [
//                   Opacity(
//                       opacity: (_position == 1.0
//                           ? 0.0
//                           : 1.0 - (_position - 0.28).clamp(0.0, 1.0)),
//                       child: const _MinExtentWidget()),
//                   Opacity(
//                       opacity: (_position - 0.091).clamp(0.0, 1.0),
//                       child: const _MaxExtentWidget())
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }