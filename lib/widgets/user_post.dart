import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_responsive_clon/widgets/reactions_bar.dart';
import 'package:linkedin_responsive_clon/widgets/vertical_icon_reaction.dart';

import '../costants/constants.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeM = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      final size = constraints.maxWidth;
      return Container(
        // width: sizeM.width * 1,
        margin: EdgeInsets.only(
            top: 15, left: dynamicMargin(size), right: dynamicMargin(size)),
        decoration: BoxDecoration(
            color: widgetsColor,
            borderRadius: BorderRadius.circular(sizeM.width < 600 ? 0 : 15),
            border: Border.all(width: 1, color: borderColor)),
        child: Column(
          children: [
            SizedBox(
              width: sizeM.width * 1,
              child: Row(
                children: [
                  const _UserPostedInAGroup(),
                  _PostInformation(size: sizeM),
                ],
              ),
            ),
            const _TextPostContent(),
            const _PostImage(),
            const _FeedbackReactions(),
            const SizedBox(height: 25),
            const _UserPostsInteraction(),
            const SizedBox(height: 25),
          ],
        ),
      );
    });
  }
}

class _UserPostsInteraction extends StatelessWidget {
  const _UserPostsInteraction();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            VerticalIcon(icon: Icons.thumb_up_alt_outlined, text: 'Recomendar'),
            VerticalIcon(icon: Icons.message_outlined, text: 'Comentar'),
            VerticalIcon(icon: FontAwesomeIcons.share, text: 'Compartir'),
            VerticalIcon(icon: Icons.send_sharp, text: 'Enviar'),
          ],
        ));
  }
}

class _FeedbackReactions extends StatelessWidget {
  const _FeedbackReactions();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ReactionBar(),
        Text('39'),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            '2 veces compartido',
            style: TextStyle(color: Colors.grey),
          ),
        )
      ],
    );
  }
}

class _PostImage extends StatelessWidget {
  const _PostImage();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        margin: const EdgeInsets.only(top: 11, left: 11, right: 11),
        child: const Image(
          image: AssetImage('assets/post.png'),
          fit: BoxFit.cover,
        ));
  }
}

class _TextPostContent extends StatelessWidget {
  const _TextPostContent();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: const Text(
          'Non mollit deserunt irure exercitation elit fugiat pariatur cupidatat officia laboris irure. Fugiat nulla aliquip id officia incididunt ea. Reprehenderit cupidatat enim ea non excepteur ex proident tempor quis proident aliquip exercitation ut.Cupidatat ad adipisicing officia magna cupidatat ea adipisicing nulla officia enim in. Adipisicing commodo do excepteur commodo. Amet duis do cupidatat consequat officia elit. Excepteur ea tempor irure quis esse veniam in. Sit ea deserunt mollit incididunt eu. Eiusmod adipisicing labore non incididunt occaecat adipisicing consectetur incididunt.'),
    );
  }
}

class _PostInformation extends StatelessWidget {
  final Size size;
  const _PostInformation({required this.size});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Worldwide Flutter - WWF',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(176, 0, 0, 0))),
                // SizedBox(width: 290),
                Spacer(),
                Icon(Icons.more_horiz,
                    size: 30, color: Color.fromARGB(255, 96, 96, 96)),
                SizedBox(width: 15),
                FaIcon(FontAwesomeIcons.x,
                    size: 15, color: Color.fromARGB(255, 96, 96, 96)),
              ],
            ),
            // SizedBox(height: 1),
            Text('MobileX dev',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                    fontSize: 15)),
            SizedBox(height: 7),
            Text('Ver mi blog',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(176, 0, 0, 0),
                    fontSize: 13)),
            SizedBox(height: 1.5),
            Row(
              children: [
                Text('50 minutos',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black54)),
                SizedBox(width: 10),
                // ignore: deprecated_member_use
                FaIcon(FontAwesomeIcons.earth, size: 15, color: Colors.black54)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _UserPostedInAGroup extends StatelessWidget {
  const _UserPostedInAGroup();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 100,
      // color: Colors.red,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, left: 10),
            width: 45,
            height: 45,
            color: Colors.blue,
            child: const Image(image: AssetImage('assets/flutter.jpg')),
          ),
          const Positioned(
            top: 32,
            left: 32,
            child: CircleAvatar(
              radius: 23,
              // backgroundImage: AssetImage('assets/profile.png'),
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/mylogo.png'),
            ),
          )
        ],
      ),
    );
  }
}
