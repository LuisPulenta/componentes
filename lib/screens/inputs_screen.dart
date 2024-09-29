import 'package:componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first-name': 'Luis',
      'last-name': 'Nuñez',
      'email': 'luis@gmail.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
        appBar: AppBar(title: const Text('Inputs y Forms')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: "Nombre",
                    hintText: "Nombre del Usuario",
                    formProperty: 'first-name',
                    formValues: formValues,
                    icon: Icons.person,
                    prefixicon: Icons.home,
                    suffixicon: Icons.person_add_alt_outlined,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomInputField(
                    labelText: "Apellido",
                    hintText: "Apellido del Usuario",
                    formProperty: 'last-name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomInputField(
                    labelText: "Correo",
                    hintText: "Correo del Usuario",
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomInputField(
                    labelText: "Contraseña",
                    hintText: "Contraseña del Usuario",
                    formProperty: 'password',
                    formValues: formValues,
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField<String>(
                    isDense: true,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'Superuser',
                        child: Text('Superuser',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Developer',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 8,
                                fontWeight: FontWeight.bold)),
                      ),
                      DropdownMenuItem(
                        value: 'User',
                        child: Text('User'),
                      ),
                    ],
                    onChanged: (value) {
                      //print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: Center(
                        child: Text("Guardar"),
                      ),
                    ),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        //print("Formulario no válido");
                        return;
                      }
                      //(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
