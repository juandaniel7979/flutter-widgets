import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {

  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnable = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and checks'),
      ),
      body: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              // divisions: 10,
              value: _sliderValue,
              onChanged: _sliderEnable 
              ? ( value ) {
                _sliderValue = value;
                setState(() {});
              }
              : null
              ),
              // Image(image: const AssetImage('assets/pochita.png'),

              // Checkbox(
              //   value: _sliderEnable, 
              //   onChanged: ( value ) { _sliderEnable = value ?? true; setState(() {});
              // }),
              // Switch(
              //   value: _sliderEnable, 
              //   onChanged: ( value ) =>setState(() { _sliderEnable = value; })
              // ),

              CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnable, 
                onChanged: ( value ) =>setState(() { _sliderEnable = value ?? true; })
              ),

              SwitchListTile.adaptive(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnable, 
                onChanged: ( value ) =>setState(() { _sliderEnable = value; })
              ),

              AboutListTile(),
              Expanded(
                child: SingleChildScrollView(
                  child: Image(
                    image: const NetworkImage('https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/6023d9113801011.602ed308c3193.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue
                  ),
                ),
              ),

          ],),
    );
  }
}  