import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

  enum Trasportation{car, palne, boat, submarine}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Trasportation selectedTrasportation = Trasportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles Adicionales'),
          value: isDeveloper, onChanged: (value)=> setState(() {
            isDeveloper = !isDeveloper;
          })
        ),
        ExpansionTile(
          title: const Text('Veiculo de trasporte selecionado'),
          subtitle: Text('$selectedTrasportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar por Carro'),
              value: Trasportation.car, 
              groupValue: selectedTrasportation, 
              onChanged: (value)=> setState(() {
                selectedTrasportation = Trasportation.car;
              })
            ),
            RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('Viajar por Barco'),
              value: Trasportation.boat, 
              groupValue: selectedTrasportation, 
              onChanged: (value)=> setState(() {
                selectedTrasportation = Trasportation.boat;
              })
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viajar por Avión'),
              value: Trasportation.palne, 
              groupValue: selectedTrasportation, 
              onChanged: (value)=> setState(() {
                selectedTrasportation = Trasportation.palne;
              })
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar por Submarino'),
              value: Trasportation.submarine, 
              groupValue: selectedTrasportation, 
              onChanged: (value)=> setState(() {
                selectedTrasportation = Trasportation.submarine;
              })
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Desayuno'),
          value: wantsBreakfast, 
          onChanged: (value)=> setState(() {
            wantsBreakfast = !wantsBreakfast;
          })
        ),
        CheckboxListTile(
          title: const Text('Almuerzo'),
          value: wantsLunch, 
          onChanged: (value)=> setState(() {
            wantsLunch = !wantsLunch;
          })
        ),CheckboxListTile(
          title: const Text('Merienda'),
          value: wantsDinner, 
          onChanged: (value)=> setState(() {
            wantsDinner = !wantsDinner;
          })
        ),
      ],
    );
  }
}
