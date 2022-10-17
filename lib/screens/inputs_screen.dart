import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();


    final Map<String, String> formValues = {
      'first_name': 'Juan',
      'last_name' : 'Daniel',
      'email'     : 'juan@gmail.com',
      'password'  : '123456',
      'role'      : 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Input y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Form(
              key: myFormKey,
              child: Column(children:[
            
                CustomInputField( labelText: 'Nombre del usuario;', hintText: 'Ingrese el nombre del usuario', helperText: 'Solo letras', keyboardType: TextInputType.text, formProperty: 'first_name', formValues: formValues, ),
                const SizedBox(height: 30),
            
                CustomInputField( labelText: 'Apellido del usuario', hintText: 'Ingrese el apellido del usuario', helperText: 'Solo letras', keyboardType: TextInputType.text, formProperty: 'last_name', formValues: formValues, ),
                const SizedBox(height: 30),
            
                CustomInputField( labelText: 'Correo del usuario', hintText: 'Ingrese el correo del usuario', helperText: 'Un correo', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues, ),
                const SizedBox(height: 30),
            
                CustomInputField( labelText: 'Contraseña del usuario', hintText: 'Ingrese el correo del usuario', obscureText: true, formProperty: 'password', formValues: formValues, ),
                const  SizedBox(height: 30),

                DropdownButtonFormField <String>(
                  value: 'Admin',
                  items: const[
                    DropdownMenuItem(value: 'Admin', child: Text('Admin'),),
                    DropdownMenuItem(value: 'Superuser', child: Text('Superuser'),),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer'),),
                    DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer'),),
                  ], 
                  onChanged: ( value ) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  }),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                    ),
                  onPressed: () {
                    // FocusScope.of(context).requestFocus( FocusNode());
                    FocusManager.instance.primaryFocus?.unfocus();
                    if ( !myFormKey.currentState!.validate() ) {
                      print('Formulario no valido');
                      return;
                    }
                    //* TODO: Imprimir valores del formulario
                    print(formValues);
                  }, 
                ),
                
              ]),
            ),
          ),
        ));
  }
}
