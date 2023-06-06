import 'package:flutter/material.dart';
import 'package:trabalho1/pages/carrinho.dart';
import 'package:trabalho1/pages/configUser.dart';
import 'package:trabalho1/pages/gado.dart';
import 'package:trabalho1/pages/login.page.dart';
import 'package:trabalho1/pages/sobre.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trabalho1/pages/usuarios.dart';
import '../controller/login_controller.dart';

class Menu extends StatefulWidget {
const Menu({Key? key}) : super(key: key);

@override
_MeatMarketPageState createState() => _MeatMarketPageState();
}

class _MeatMarketPageState extends State<Menu>
  with SingleTickerProviderStateMixin {
late TabController _tabController;

final List<String> _meatTypes = [
  'Produtos',
  'Usuários',
  'Carrinho',
  'Sobre',
];

@override
void initState() {
  super.initState();
  _tabController = TabController(length: _meatTypes.length, vsync: this);
}

@override
void dispose() {
  _tabController.dispose();
  super.dispose();
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    extendBodyBehindAppBar: true,
    appBar: AppBar(
      centerTitle: true,
      title: const Text('AgroAPP'),
      backgroundColor: const Color.fromARGB(210, 132, 14, 14),
      elevation: 0,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey.shade300,
          height: 1.0,
        ),
      ),
    ),
    drawerEnableOpenDragGesture: true,
    drawer: Drawer(
      backgroundColor: Color.fromARGB(210, 132, 14, 14),
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(210, 132, 14, 14),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                SvgPicture.asset(
                "assets/icons/muu.svg",
                    height: 80,
                    width: 80,
                  color: Colors.black54,
),

Expanded(
 child: FutureBuilder(
    future: LoginController().usuarioLogado(),
    builder: (context, snapshot) {
      return Directionality(
        textDirection: TextDirection.rtl,
                    child: Text(
                  snapshot.data.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
      );
    },
  ),
),
 
              ],
            ),
          ),
          
          ListTile(
            title: const Text(
              'Gado',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Gado()),
                  );
            },
          ),
          ListTile(
            title: const Text(
              'Usuários',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Usuarios()),
                  );
            },
          ),
          ListTile(
            title: const Text(
              'Carrinho',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Carrinho()),
                  );
            },
          ),
          ListTile(
            title: const Text(
              'Sobre',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaSobre()),
                  );
              
            },
          ),
          const Divider(color: Colors.white),
          ListTile(
            title: const Text(
              'Configurações de conta',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ConfigUser()),
                  );
            },
          ),
          ListTile(
            title: const Text(
              'Sair',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: (){


              LoginController().logout();

                ScaffoldMessenger.of(context).showSnackBar(
                
                SnackBar(content: Text('Ate a Proxima !',textAlign: TextAlign.center,style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30))
                , backgroundColor: Color.fromARGB(255, 151, 119, 120))
              
              
              );
              
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
            },
          ),
        ],
      ),
    ),
    backgroundColor: Color.fromARGB(255, 167, 166, 166),
    body: Padding(
    padding: EdgeInsets.all(30),
    child: Center(child: SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            
        SizedBox(height: 60),
       
        Container(
        color: Color.fromARGB(255, 185, 182, 182),
        child: Row(
                //Alinhar no centro
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [

         Container(
          margin: const EdgeInsets.only(left: 10.0),
          
          height: 200,
          width: 200,
          child: Image.asset('assets/images/nelore.png'),
          
          ),           


        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            Container(
          margin: const EdgeInsets.only(left: 10.0),
          height: 100,
          width: 200,
          child:  Text(
          
                    'Bezzerro Nelore de Corte\t\t',
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

        
         Text(
                    'R\$ 2.454,17',
                    style: TextStyle(
                    color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    ),
                      ),

                  ], 
                      ),

        ),
        
        SizedBox(height: 60),
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
          child: Image.asset('assets/images/nelore.png'),
          
          ),           


        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            Container(
          margin: const EdgeInsets.only(left: 10.0),
          height: 100,
          width: 200,
          child:  Text(
          
                    'Bezzerro Nelore de Corte\t\t',
                    style: TextStyle(
                    color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                    ),
                      ),
          
          ),
          Container(
          height: 50,
          width: 200,
          child:  Text(
                    'Goias',
                    style: TextStyle(
                    color:  Color.fromARGB(255, 124, 231, 142), fontSize: 20,   
                    fontWeight: FontWeight.bold,
                    ),
                      ),
          
          ),
          ]
        
        
        ),

                      Text(
                    'R\$ 2.280,00',
                    style: TextStyle(
                    color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    ),
                      ),
      
      
                    
      
                  
                        ], 
                      ),
       ),
         SizedBox(height: 60),
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
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            Container(
          margin: const EdgeInsets.only(left: 10.0),
          height: 100,
          width: 200,
          child:  Text(
          
                    'Angus de Corte\t\t',
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
          height: 50,
            width: 200,
             child: Text(
              
                      'R\$ 12,35 KG/VIVO',
                      style: TextStyle(
                      color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      ),
                        ),
        
        
                      
        ),
      ),
                  
                        ], 
                      ),
       ),
       SizedBox(height: 60),
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
          child: Image.asset('assets/images/wgyu.jpg'),
          
          ),           


        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            Container(
          margin: const EdgeInsets.only(left: 10.0),
          height: 100,
          width: 200,
          child:  Text(
          
                    'Wagyu',
                    style: TextStyle(
                    color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                    ),
                      ),
          
          ),
          Container(
          height: 50,
          width: 200,
          child:  Text(
                    'São Paulo',
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
          height: 50,
            width: 200,
             child: Text(
              
                      'R\$ 15.300,00',
                      style: TextStyle(
                      color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      ),
                        ),
        
        
                      
        ),
      ),
                  
                        ], 
                      ),
       ),

       SizedBox(height: 60),
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
          child: Image.asset('assets/images/Hereford.jpg'),
          
          ),           


        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            Container(
          margin: const EdgeInsets.only(left: 10.0),
          height: 100,
          width: 200,
          child:  Text(
          
                    'Hereford',
                    style: TextStyle(
                    color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                    ),
                      ),
          
          ),
          Container(
          height: 50,
          width: 200,
          child:  Text(
                    'Goias',
                    style: TextStyle(
                    color:  Color.fromARGB(255, 124, 231, 142), fontSize: 20,  
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
          height: 50,
            width: 200,
             child: Text(
              
                      'R\$ 11.000,00',
                      style: TextStyle(
                      color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      ),
                        ),
        
        
                      
        ),
      ),
                  
                        ], 
                      ),
       )

       
                    
      
        ],
        ),
    ),
      ),
        ),
    );
  
}
}
