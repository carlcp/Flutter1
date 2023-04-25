import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:trabalho1/pages/principal.dart';
class Carrinho extends StatefulWidget {
  const Carrinho({super.key});

  @override
  State<Carrinho> createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Carrinho'),
        backgroundColor: const Color.fromARGB(210, 132, 14, 14),
      ),
      backgroundColor: Color.fromARGB(255, 233, 183, 189),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              
              const SizedBox(height: 10),
              
       Container(
        color: Color.fromARGB(255, 185, 182, 182),
        child:Row(
                //Alinhar no centro
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [

         Container(
          margin: const EdgeInsets.only(left: 10.0),
          height: 200,
          width: 200,
          child: Image.asset('assets/images/angus.png'),
          
          ),           


        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: [
          
            Container(
          
          margin: const EdgeInsets.only(left: 10.0),
          height: 50,
          width: 200,
          child:  Text(
          
                    'Angus de Corte\t\t',
                    style: TextStyle(
                    color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                    ),
                      ),
          
          ),

            Container(
          margin: const EdgeInsets.only(left: 10.0),
          height: 50,
          width: 200,
          child:  Text(
          
                    'R\$ 9880,00',
                    style: TextStyle(
                    color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                    ),
                      ),
          
          ),


          Container(
          height: 50,
          width: 200,
          child:  Text(
                    'Sao Paulo',
                    style: TextStyle(
                    color:  Color.fromARGB(255, 146, 102, 102), fontSize: 20,   
                    fontWeight: FontWeight.bold,
                    ),
                      ),
          
          ),
          ]
        
          
        ),

          
                 
      Expanded
      (
        child: Container(
          margin: const EdgeInsets.only(left: 20.0,top: 50.0),
          height: 100,
            width: 100,
            
             child: IconButton(
          icon: const Icon(Icons.restore_from_trash, size: 50.0, color: Color.fromARGB(255, 0, 0, 0),),
          onPressed: () {
            Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => Menu(),));
          },
        ),
        
        
                      
        ),
      ),
                  
                        ], 
                      ),
       ),
       const SizedBox(height: 20),
       Container(       
          margin: const EdgeInsets.only(left: 0.0),
          height: 50,
          width: 200,
          child:  Text(        
                    'Entrega',
                    style: TextStyle(
                    color:  Color.fromARGB(255, 255, 255, 255), fontSize: 25,  
                    ),
                      ),
          
          ),

          Container(
        
        child:Row(
                
                
                children: [

         Container(       
          margin: const EdgeInsets.only(right: 00.0, left: 0.0),
          height: 60,
          width: 250,
          child:  TextFormField(
          autofocus: true,
          keyboardType: TextInputType.text,
          style: new TextStyle(color: Colors.white, fontSize: 20),
          decoration: InputDecoration(
            labelText: "CEP",
            labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,),
            
            
          ),
          

        ),
          
          ),


          

          const SizedBox(width: 140),
          Expanded(
            child: SizedBox(
              width: 40,
              height: 40,
              child: ElevatedButton(
              onPressed: () => {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Menu(),))
          
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
                  Text('CALCULAR', 
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ), 
              )
          
            ),
          ),
                        ], 
                      ),
       ),

      const SizedBox(height: 10),
       Container(       
          margin: const EdgeInsets.only(right: 500.0, left: 0.0),
          height: 60,
          width: 50,
          child:  TextFormField(
          autofocus: true,
          keyboardType: TextInputType.text,
          style: new TextStyle(color: Colors.white, fontSize: 20),
          decoration: InputDecoration(
            labelText: "Quantidade",
            labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,),
            
            
          ),
          

        ),
          
          ),

        const SizedBox(height: 150),

          SizedBox(
    width: 420,
    height: 75,
    child: ElevatedButton(
            onPressed: () => {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Menu(),))

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
                Text('Finalizar Pedido', 
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ), 
            )

  ),

  const SizedBox(height: 50),
  SizedBox(
    width: 420,
    height: 75,
    child: ElevatedButton(
            onPressed: () => {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Menu(),))

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
                Text('Continuar Comprando', 
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ), 
            )

  ),

            ],
          ),
        ),
      ),
      
    );
  }
}