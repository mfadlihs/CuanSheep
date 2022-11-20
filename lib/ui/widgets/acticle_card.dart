import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleCard extends StatefulWidget {
  const ArticleCard({super.key});

  @override
  State<ArticleCard> createState() => _ArticleCardState();
}

class _ArticleCardState extends State<ArticleCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.black,
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                "assets/images/article_card_bg.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                color: Color(0xff3C3737).withOpacity(0.44),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    Text(
                      'Cara megolah daging domba makin empuk',
                      style: bodyBoldTextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 12),
                  ],
                ),
                // child: Text(
                //   'ini ted alksd as askld asldd',
                //   style: bodyBoldTextStyle(
                //     color: Colors.white,
                //   ),
                // ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
