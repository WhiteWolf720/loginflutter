import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Fondo(),
          Contenido(),
        ],
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Center(
           child: Text('iniciar sesion',
           textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 50,),
          Center( 
          child: Text('Ingrese su usuario y contraseña para continuar y empiece a explorar la tecnologia de NVIDIA x Chayanne',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white,
            fontSize: 20,
            letterSpacing: 1, 
            ),
          ),
          ),
          SizedBox(height: 30,),
          Datos(),
          SizedBox(height: 20,),
          Footer(),
        ]
        ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 69,
          child: Image.asset('assets/images/logo.png'),
        )
      ]
    );
  }
}

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Correo',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            ),
          ),
          const SizedBox(height: 5,),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'email@ejemplo.com',
            ),
          ),
          const SizedBox(height: 5,),
          const Text('Contraseña',
           style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            ),
          ),
          const SizedBox(height: 5,),
          TextFormField(
            obscureText: obs,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'password here, boy',
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.remove_red_eye_outlined,
                ),
                onPressed: () {
                  setState( () {
                    obs == true ? obs = false : obs = true;
                  });
                },
              ),


            ),
          ),
          const Remember(),
          const SizedBox(height: 5,),
          const Botones(),
        ],  
      ),
    );
  }
}

class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool valor = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: valor, 
        onChanged: (value) {
          setState(() {
            valor == false? valor = true : valor = false;
          });
        } 
        ),
        const Text('Recuerdame ☝️🤓'),
        const Spacer(),
        TextButton(
          onPressed: () {}, 
          child: const Text('no la recuerdas?')
          )
      ],
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed:() {},
            style: ButtonStyle(
              backgroundColor: 
              MaterialStateProperty.all<Color>(const Color(0xff443A84))
            ),
            child: const Text(
              'Iniciar sesion',
              style: TextStyle(
                color: Colors.white
              ),
            ),
          )
        ),
        const SizedBox(
          width: double.infinity,
          height: 15,
        ),
        const Text(
          'O inicia con:',
          style: TextStyle(
            color: Colors.grey),
        ),
        const SizedBox(
          width: double.infinity,
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          height: 35,
          child: IconButton(
            onPressed: () {},
            color: Colors.blue[200],
            highlightColor: Colors.pink[200],
            icon: const Icon(FontAwesomeIcons.google,
                        size: 35,),
            ),
        ), //google pa
        const SizedBox(
          width: double.infinity,
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          height: 35,
          child: IconButton(
            onPressed: () {},
            color: Colors.pink[200],
            highlightColor: Colors.blue[200],
            icon: const Icon(FontAwesomeIcons.facebook,
                        size: 35,),
            ),
        ), //facebook pa
      ],
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.pink.shade200,
            Colors.blue.shade200
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft
        )
      ) 
    );
  }
}
