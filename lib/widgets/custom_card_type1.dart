import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.photo_album_outlined,
            color: AppTheme.primary,
          ),
          title: Text('Soy un titulo'),
          subtitle: Text(
              'Pariatur dolor qui commodo tempor quis veniam nulla nulla magna. Officia officia ex anim cupidatat irure id dolor amet fugiat eiusmod in ea elit do. Sint velit dolor ex eu mollit sint officia Lorem sunt tempor magna. Adipisicing eu proident aliqua in ipsum aliquip dolor commodo esse ut aliqua adipisicing eiusmod deserunt. Esse nulla aliquip ipsum sint ea commodo enim labore.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: (){},
                child: const Text('Cancel'),
                ),
              TextButton(
                onPressed: (){},
                child: const Text('Ok'),
                )
            ],
          ),
        )
      ]),
    );
  }
}
