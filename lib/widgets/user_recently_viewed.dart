import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';

class UserRecentlyViewed extends StatelessWidget {
  const UserRecentlyViewed({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.21,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(width: 1, color: borderColor)),
      child: Container(
        margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recientes',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.black)),
            _RecentlyViewItem(text: 'Worldwide Flutter - WWF'),
            _RecentlyViewItem(text: 'Figma Product Community'),
            _RecentlyViewItem(text: 'Flutter Developer Community'),
            SizedBox(height: 20),
            Text('Grupos',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
            SizedBox(height: 10),
            _RecentlyViewItem(text: 'Worldwide Flutter - WWF'),
            _RecentlyViewItem(text: 'Figma Product Community'),
            _RecentlyViewItem(text: 'Flutter Developer Community'),
            SizedBox(height: 30),
            Row(
              children: [
                Text('Eventos',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue)),
                Spacer(),
                Icon(
                  Icons.add,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(height: 15),
            Text('Hastags seguidos',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
            Divider(),
            SizedBox(height: 10),
            Center(
                child: Text('Ver más',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: textColor))),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _RecentlyViewItem extends StatelessWidget {
  final String text;
  const _RecentlyViewItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 1, right: 10),
      child: Row(
        children: [
          const Icon(Icons.groups_sharp, color: iconsColor),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontWeight: FontWeight.w500, color: textColor),
            ),
          )
        ],
      ),
    );
  }
}
