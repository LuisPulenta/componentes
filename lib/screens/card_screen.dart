import 'package:flutter/material.dart';
import 'package:componentes/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card Widget")),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://untappedcities.com/wp-content/uploads/2021/05/Empire-State-Building-Aerial-Photo-from-Above-Secrets-NYC-2.jpg',
            footImage: 'Empire State',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://www.tclf.org/sites/default/files/styles/crop_2000x700/public/thumbnails/image/StatueofLiberty_hero1_CourtesyNPS.jpg?itok=Rck1CAam',
            footImage: 'Estatua de la Libertad',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://cdn.modlar.com/photos/8938/img/s_1920_x_lq/ny_city_landscape_5907e5488d84f.jpg',
            footImage: 'Zona Zero',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://a.1stdibscdn.com/alejandro-cerutti-photography-rhapsody-in-blue_-new-york-city_-new-york-landscapes-no-21-small-for-sale/archivesE/upload/a_241/a_18355231520281192194/2018_Rhapsody_MAE_2018_use_master.jpg',
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
