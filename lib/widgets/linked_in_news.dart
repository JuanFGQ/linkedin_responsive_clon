import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';
import 'package:linkedin_responsive_clon/widgets/show_more.dart';

class LinkedInNews extends StatelessWidget {
  const LinkedInNews({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(15),
      width: size.width * 0.21,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(width: 1, color: borderColor)),
      child: const Column(
        children: [
          Row(
            children: [
              Text('LinkedIn Noticias',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Spacer(),
              Icon(Icons.info)
            ],
          ),
          _News(
              news: 'España un gigante al alza en energias',
              date: 'hace 2 dias'),
          _News(
              news: '¿Deben los bancos centrales reconsiderar',
              date: 'hace 2 dias'),
          _News(
              news: 'Disfruta de las fiestas en igualdad', date: 'hace 2 dias'),
          _News(news: 'La cantidad mas sana de alcohol', date: 'hace 6 dias '),
          _News(news: 'El amor no es para el trabajo', date: 'hace 12 horas'),
          ShowMore()
        ],
      ),
    );
  }
}

class _News extends StatelessWidget {
  final String news;
  final String date;

  const _News({required this.news, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.circle, size: 10),
            const SizedBox(width: 13),
            Expanded(
              child: Text(news,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 24),
          child: Text(date,
              style: const TextStyle(fontSize: 14, color: textColor)),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
