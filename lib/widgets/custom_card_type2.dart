import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? footImage;

  const CustomCardType2({Key? key, required this.imageUrl, this.footImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: AppTheme.primary.withOpacity(0.5),
      elevation: 30,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
            placeholder: const AssetImage('assets/loading.gif'),
          ),
          footImage != null
              ? Container(
                  padding:
                      const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(footImage!),
                )
              : Container(),
        ],
      ),
    );
  }
}
