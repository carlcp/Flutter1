import 'package:flutter/material.dart';
import 'package:trabalho1/pages/gado.dart';

class GadoCadastro extends StatefulWidget {
  const GadoCadastro({Key? key}) : super(key: key);

  @override
  _GadoCadastroState createState() => _GadoCadastroState();
}

class _GadoCadastroState extends State<GadoCadastro> {
  final List<String> _breeds = ['Raça do Gado','Angus', 'Hereford', 'Nelore', 'Holandês', 'Gir', 'Wagyu'];
  String _selectedBreed = '';

  @override
  void initState() {
    super.initState();
    _selectedBreed = _breeds[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 183, 189),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(210, 132, 14, 14),
        title: Text('Cadastro de Gado'),
        ),
        body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
              labelText: 'Número de identificação',
             labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
             ),
              ),
              style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              ),
                ),
                
                  SizedBox(height: 16.0),
                  SizedBox(height: 16.0),
                  DropdownButton<String>(
                  value: _selectedBreed,
                  items: _breeds.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style : TextStyle(
                      color: Colors.white
                      ),
                      ),
                    );
                  }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedBreed = newValue!;
                });
              },
              hint: Text(
                    'Raça',
                    style: TextStyle(
                    color: Colors.white,
                    ),
                  ),
                  dropdownColor:  Color.fromARGB(210, 132, 14, 14),
            ),
            
                SizedBox(height: 16.0),
                TextField(
                decoration: InputDecoration(
                labelText: 'Estado',
                labelStyle: TextStyle(
                  color: Colors.white,
                fontWeight: FontWeight.bold,
                ),
                ),
                keyboardType: TextInputType.number,
                ),
                SizedBox(height: 32.0),
              SizedBox(
              width: 200,
              height: 30,
              child: ElevatedButton(
            onPressed: () => {
              Navigator.pop(context, 
              MaterialPageRoute(builder: (context) => Gado(),))
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 151, 119, 120), // cor de fundo
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)), // borda arredondada
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 15),
                Text('Cadastrar', 
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ), 
            )

  ),
    SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
