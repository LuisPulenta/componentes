import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Inputs y Forms')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                TextFormField(
                  autofocus: false,
                  initialValue: '',
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) {
                    //('value: $value');
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Este campo es requerido';
                    }
                    return value.length < 3 ? 'Mínimo 3 letras' : null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    hintText: 'Nombre del Usuario',
                    labelText: 'Nombre',
                    helperText: 'Sólo letras',
                    counterText: '3 caracteres',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    suffixIcon: Icon(Icons.verified_user_outlined),
                    prefixIcon: Icon(Icons.group_outlined),
                    icon: Icon(
                      Icons.assignment_ind_outlined,
                      size: 40,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
