import 'package:flutter/material.dart';

import '../costants/constants.dart';

class UserCreatePost extends StatelessWidget {
  const UserCreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeM = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      final size = constraints.maxWidth;
      return Container(
          margin: EdgeInsets.only(
              top: 15, left: dynamicMargin(size), right: dynamicMargin(size)),
          decoration: BoxDecoration(
              color: widgetsColor,
              borderRadius: BorderRadius.circular(sizeM.width < 600 ? 0 : 15),
              border: Border.all(width: 1, color: borderColor)),
          child: Column(
            children: [
              _CreatePost(size: sizeM),
              const SizedBox(height: 10),
              const _PostOptions(),
            ],
          ));
    });
  }
}

class _PostOptions extends StatelessWidget {
  const _PostOptions();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _PostOption(
            text: 'Contenido multimedia',
            icon: Icons.photo_size_select_actual_rounded,
            color: Color(0xff358be3),
          ),
          _PostOption(
            text: 'Evento',
            icon: Icons.calendar_month,
            color: Color(0xffc27b12),
          ),
          _PostOption(
            text: 'Escribir articulo',
            icon: Icons.article_outlined,
            color: Color(0xffe06847),
          ),
        ],
      ),
    );
  }
}

class _CreatePost extends StatelessWidget {
  const _CreatePost({
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/mylogo.png'),
            backgroundColor: Colors.grey,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(5),
              // width: size.width * 0.75,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 1, color: Colors.grey),
                  color: Colors.white),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Crear publicacion',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _PostOption extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  const _PostOption(
      {required this.text, required this.icon, required this.color});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        const SizedBox(width: 10),
        Text(
          text,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
