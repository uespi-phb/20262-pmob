import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../shared/widgets/icon_text_form_field.dart';

class SignInPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const products = [
      'Frutas',
      'Verduras',
      'Legumes',
      'Carnes',
      'Cereais',
      'Laticíneos',
    ];
    final categories = products.map(
      (text) => FadeAnimatedText(
        text,
        textStyle: const TextStyle(
          color: Colors.yellow,
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Green',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Grocery',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 35.0),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: categories.toList(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
            ),
            child: Form(
              child: Column(
                children: [
                  IconTextFormField(
                    labelText: 'E-mail',
                    hintText: 'E-mail do usuário',
                    prefixIcon: Icons.email,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                  ),
                  IconTextFormField(
                    labelText: 'Senha',
                    hintText: 'Senha do usuário',
                    prefixIcon: Icons.lock,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    obscuredText: true,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.primaryColor,
                      foregroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),

                    child: Text('Entrar'),
                  ),
                  Align(
                    alignment: AlignmentGeometry.centerRight,
                    child: TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.red),
                      onPressed: () {},
                      child: const Text('Esqueci a Senha'),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(128),
                          thickness: 2.0,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('OU'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(128),
                          thickness: 2.0,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: theme.primaryColor,
                        minimumSize: const Size.fromHeight(48.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        side: BorderSide(
                          width: 2.0,
                          color: theme.primaryColor,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/');
                      },
                      child: const Text('Criar Conta'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
