

import 'package:flutter/material.dart';

bool isMobile(BuildContext context)  //Mobile
{
  return MediaQuery.of(context).size.width < tabletSmall; //Media Query nos dice el tamaño de pantalla
}

bool isTablet(BuildContext context) //Tablet
{
  return MediaQuery.of(context).size.width >= tabletSmall &&
      MediaQuery.of(context).size.width <= tabletExtraLarge;
}

bool isDesktop(BuildContext context) //Escritorio
{
  return MediaQuery.of(context).size.width > desktopSmall;
}

bool isMobileAndTablet(context) //Móvil y tablet, se verán igual
{
  return MediaQuery.of(context).size.width <= tabletExtraLarge;
}

//Mobile size
//En pixeles
double get mobileSmall => 320;

double get mobileNormal => 375;

double get mobileLarge => 414;

double get mobileExtraLarge => 480;

//table size
double get tabletSmall => 600;

double get tabletNormal => 768;

double get tabletLarge => 850;

double get tabletExtraLarge => 900;

//desktop size
double get desktopSmall => 950;

double get desktopNormal => 1920;

double get desktopLarge => 3840;

double get desktopExtraLarge => 4096;