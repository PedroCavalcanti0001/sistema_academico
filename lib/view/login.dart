import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Autenticação")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child: Image(
                image: AssetImage('assets/logo.png'),
                width: 250,
                height: 250,
              )),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  prefixText: ' ',
                  labelText: "Usuário",
                  focusColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.vpn_key,
                    color: Colors.black,
                  ),
                  prefixText: ' ',
                  labelText: "Senha",
                  focusColor: Colors.white,
                  fillColor: Colors.black54,
                  hoverColor: Colors.blue,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Não tem uma conta ainda? ",
                    style: TextStyle(fontSize: 15),
                  ),
                  GestureDetector(
                    child: Text(
                      "Registre-se",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/register");
                    },
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.09,
                child: RaisedButton(
                  onPressed: (){},
                  color: Colors.green,
                  child: Text('Autenticar-se', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
