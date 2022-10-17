import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("card widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const[
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2( name: 'Un hermoso paisaje',imageUrl: 'https://img.freepik.com/free-vector/night-ocean-landscape-full-moon-stars-shine_107791-7397.jpg?w=2000'),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://c4.wallpaperflare.com/wallpaper/500/442/354/outrun-vaporwave-hd-wallpaper-thumb.jpg'),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_8mEccGGf-XLSMd_jhJydfb_pTEzz3uvANlOrBdfOhR6rholQi4rTHRO5w39KhC8UFgg&usqp=CAU'),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHtuUJ7eGJv2ewjixGtBGyr0nsga0tuKgVJw&usqp=CAU'),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://mobimg.b-cdn.net/v3/fetch/05/05eeb93a2e41734ecb6044146351f11e.jpeg',),
          SizedBox(height: 100,),
        ],
      ),
    );
  }
}

