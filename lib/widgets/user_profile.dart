import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeM = MediaQuery.of(context).size;
    final userProfileWidth =
        sizeM.width > 1120 ? sizeM.width * 0.21 : double.infinity;

    return LayoutBuilder(builder: (context, constraints) {
      final size = constraints.maxWidth;

      return Container(
        margin: EdgeInsets.only(
          top: 3,
          bottom: 15,
          left: dynamicMargin(size),
          right: dynamicMargin(size),
        ),
        width: userProfileWidth,
        decoration: BoxDecoration(
            color: widgetsColor,
            borderRadius: BorderRadius.circular(sizeM.width < 600 ? 0 : 15),
            border: Border.all(width: 1, color: borderColor)),
        child: Column(
          children: [
            SizedBox(
              width: sizeM.width * 1,
              child: _UserHeader(sizeM: sizeM),
            ),
            const SizedBox(height: 20),
            const _UserName(),
            const SizedBox(height: 10),
            const _UserSkills(),
            const SizedBox(height: 20),
            Visibility(
                visible: sizeM.width > 955 ? true : false,
                child: const _AdditionalContent()),
            const SizedBox(height: 10),
          ],
        ),
      );
    });
  }
}

class _AdditionalContent extends StatelessWidget {
  const _AdditionalContent();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          SizedBox(height: 10),
          Row(
            children: [
              Text('Contactos'),
              Spacer(),
              Text('21', style: TextStyle(fontSize: 13, color: Colors.blue)),
            ],
          ),
          SizedBox(height: 2),
          Text('Amplía tu red',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Text(
            'Accede a informacion y herramientas exclusivas',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.normal,
                color: Colors.grey),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.square_rounded,
                  color: Color.fromARGB(255, 154, 142, 36)),
              SizedBox(width: 5),
              Expanded(
                child: Text('Reactiva Premium con un -50%',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.bookmark, color: Color(0xff5e5e5e)),
              SizedBox(width: 10),
              Expanded(
                child: Text('Marcapáginas',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
  }
}

class _UserSkills extends StatelessWidget {
  const _UserSkills();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Text(
          'Flutter developer | Node.js | MongoDB | javaScript | Git | GitHub | SOLID | Figma | Firebase | Kotlin',
          textAlign: TextAlign.center,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 133, 132, 132),
          )),
    );
  }
}

class _UserName extends StatelessWidget {
  const _UserName();

  @override
  Widget build(BuildContext context) {
    return const Text('MobileX dev',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500));
  }
}

class _UserHeader extends StatelessWidget {
  const _UserHeader({
    required this.sizeM,
  });

  final Size sizeM;

  @override
  Widget build(BuildContext context) {
    final avatarPos = (sizeM.width > 960) ? 0.095 : 0.1;
    return SizedBox(
      width: sizeM.width * 1,
      height: sizeM.height * 0.15,
      child: Stack(
        children: [
          SizedBox(
            width: sizeM.width * 1,
            height: sizeM.height * 0.1,
            child: const ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image(
                  image: AssetImage('assets/my_logo.png'), fit: BoxFit.cover),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              //0.95
              height: sizeM.height * avatarPos,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  border: Border.all(width: 1, color: Colors.white)),
              child: const Image(
                  image: AssetImage('assets/mylogo.png'), fit: BoxFit.cover),
              // child: const Image(
              //   image: AssetImage('assets/profile.png'),
              //   fit: BoxFit.fill,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
