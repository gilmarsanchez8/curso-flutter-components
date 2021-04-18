import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearChk = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            _crearChk(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearChk)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://moleskinepassions.files.wordpress.com/2010/12/looneytunes3.jpeg?w=584'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearChk() {
    //Una forma de implementar checkbox
    // return Checkbox(
    //   value: _bloquearChk,
    //   onChanged: (valor) {
    //     setState(() {
    //       _bloquearChk = valor;
    //     });
    //   },
    // );
    //
    return CheckboxListTile(
      title: Text('Bloquear Slider checkbox'),
      value: _bloquearChk,
      onChanged: (valor) {
        setState(() {
          _bloquearChk = valor;          
        });
      },  
    );
  }

  Widget _crearSwitch(){
    return SwitchListTile(
      title: Text('Bloquear Slider switch'),
      value: _bloquearChk,
      onChanged: (valor) {
        setState(() {
          _bloquearChk = valor;          
        });
      },  
    );
  }
}
