import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';

class PremiumBox extends StatelessWidget {
  const PremiumBox({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.21,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(width: 1, color: borderColor)),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _HeaderIcons(),
          _HeaderText(),
          SizedBox(height: 20),
          _PremiumProfilePics(),
          SizedBox(height: 20),
          Text(
            'Invest in your future with this exclusive offer.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
          ),
          SizedBox(height: 20),
          _DiscountButton(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class _DiscountButton extends StatelessWidget {
  const _DiscountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(left: 30, right: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: Colors.transparent,
          border: Border.all(width: 1, color: Colors.blue)),
      child: const Padding(
        padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 20, right: 20),
        child: Text(
          'Get 50% off today',
          style: TextStyle(
              color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _PremiumProfilePics extends StatelessWidget {
  const _PremiumProfilePics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 38,
          backgroundImage: AssetImage('assets/profile.png'),
        ),
        SizedBox(width: 20),
        SizedBox(
          width: 70,
          height: 70,
          child: Image(image: AssetImage('assets/linkedin.png')),
        )
      ],
    );
  }
}

class _HeaderText extends StatelessWidget {
  const _HeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Text(
        'Juan Felipe, enjoy 50% off 2 months of linkedIn Premium!',
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _HeaderIcons extends StatelessWidget {
  const _HeaderIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Anuncio'),
            SizedBox(width: 10),
            Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
