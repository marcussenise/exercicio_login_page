import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;
   final formGlobalKey = GlobalKey <FormState> ();

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Color.fromARGB(137, 115, 246, 235),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                'Login',
                style: textStyles.headline4,
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                key: formGlobalKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) => value!.isEmpty ? 'Por favor, digite seu nome de usuário' : null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Nome de usuário',
                        labelStyle: textStyles.bodyText1,
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if(value!.length < 6){
                    return 'A senha deve ter pelo menos 6 caracteres'; 
                  } 
                  if(value.isEmpty){
                    return 'Por favor, digite sua senha';
                  }
                },
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Senha',
                  labelStyle: textStyles.bodyText1,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [Text('Recuperar Senha')],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.black87),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: (){
                    if(formGlobalKey.currentState!.validate()){
                      Navigator.pushNamedAndRemoveUntil(context, ('/home'), (route) => false);
                    }
                  },
                  child: const Text('Entrar'),
                  ),
              ),
              const SizedBox(
                height: 80,
              ),
              RichText(
                text: const TextSpan(
              children: <TextSpan> [
                TextSpan(text: 'Ainda não tem uma conta? ', style: TextStyle(color: Colors.black)),
                TextSpan(text: 'Cadastre-se', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))
              ])),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
