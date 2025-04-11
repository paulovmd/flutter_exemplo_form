import 'package:flutter/material.dart';

class RegisterEstadoScreen extends StatefulWidget {
  const RegisterEstadoScreen({ Key? key }) : super(key: key);

  @override
  _RegisterEstadoScreenState createState() => _RegisterEstadoScreenState();
}

class _RegisterEstadoScreenState extends State<RegisterEstadoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Estado'),
        actions: [IconButton(onPressed: onSave, 
                             icon: const Icon(Icons.check))],
      ),
      body: _body(),
    ));
  }
  
  Widget _body() {

    return Padding(
        padding: const EdgeInsets.all(16),
        child : Form(            
            child: Column(children: [
                TextFormField(
                    decoration: const InputDecoration(
                      hintText : "Digite o nome do estado", 
                      labelText: "Nome"),
                ),
                TextFormField(                 
                    decoration: const InputDecoration(
                      hintText : "Digite a sigla do estado", 
                      labelText: "Sigla"),
                )
            ]),
        )        
     );
  }

  void onSave() {
    
  }
}