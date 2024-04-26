import 'package:coffee_card/styled_body_text.dart';
import 'package:coffee_card/styled_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugar = 1;
  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 5;
    });
  }

  void increaseSugar() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 5;
    });
  }

  void decreaseStrength() {
    setState(() {
      strength = strength > 0 ? strength - 1 : 0;
    });
  }

  void decreaseSugar() {
    setState(() {
      sugar = sugar > 0 ? sugar - 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledBodyText('strength: '),
            if (strength == 0) const SizedBox(width: 10),
            if (strength == 0) const StyledBodyText('No strengths...'),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 30,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(
                disabled:  strength == 0 ,
                onPressed:decreaseStrength,
                child: const StyledButtonText('-' )
                ),
            const SizedBox(width: 5),
            StyledButton(
                disabled: strength == 5,
                onPressed:  increaseStrength,
                child: const StyledButtonText('+')
                )
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            const StyledBodyText('Sugar: '),
            if (sugar == 0) const SizedBox(width: 10),
            if (sugar == 0) const StyledBodyText('No sugars...'),
            for (int i = 0; i < sugar; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 30,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(
                onPressed: decreaseSugar,
                disabled: sugar == 0,
                child: const StyledButtonText('-',)
                ),
            const SizedBox(width: 5),
            StyledButton(
                onPressed: increaseSugar,
                disabled: sugar == 5,
                child: const StyledButtonText('+'),
                )
          ],
        ),
      ],
    );
  }
}
