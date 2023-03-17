import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sliders & Checks')),
      body: Column(
        children: [
          Slider(
            min: 0,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
            divisions: 100,
          ),
          Center(child: Text(_sliderValue.toString())),
          Checkbox(
              value: _sliderEnabled,
              activeColor: AppTheme.primary,
              onChanged: (value) {
                _sliderEnabled = value!;
                setState(() {});
              }),
          CheckboxListTile(
              title: const Text("Habilitar:"),
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value!;
                setState(() {});
              }),
          Switch(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              }),
          SwitchListTile.adaptive(
              title: const Text("Habilitar:"),
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              }),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Image(
                image: const NetworkImage(
                    'https://d3ekkp2oigezer.cloudfront.net/business/531/products/p6MXZD_5ee53d4617b55_medium.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
