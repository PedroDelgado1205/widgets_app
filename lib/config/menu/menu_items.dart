import 'package:flutter/material.dart';


class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}


const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'Botones', 
    subTitle: 'Varios botones en Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Tarjetas', 
    subTitle: 'Un contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'ProgessIndicator', 
    subTitle: 'Generales y Controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded
  ),

  MenuItem(
    title: 'Snackbar y Dialogos', 
    subTitle: 'Indicadores de pantalla', 
    link: '/snackbars', 
    icon: Icons.info_outline
  ),

  MenuItem(
    title: 'UI Controls + Titles', 
    subTitle: 'Una seria de controles de flutter', 
    link: '/uicontrols', 
    icon: Icons.car_rental_outlined
  ),
];



