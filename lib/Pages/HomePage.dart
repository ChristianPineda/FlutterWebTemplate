import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:ui/Util/Keys.dart';
import 'package:ui/Values/ResponsiveApp.dart';
import 'package:ui/Widgets/Components/Carousel.dart';
import 'package:ui/Widgets/WebComponents/Header/Header.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<
    HomePage> //La posicioón automática del scroll, al subir o bajar cambia la opacidad de la barra superior
{
  double _scrollPosition = 0;
  double _opacity = 0;

  AutoScrollController autoScrollController;
  bool _isVisible = false; //Aparece y desaparece el botón de vuelta a inicio
  ResponsiveApp responsiveApp;

  _scrollListener() {
    setState(() {
      _scrollPosition = autoScrollController
          .position.pixels; //Aquí se va guardando la posición
    });
  }

  @override
  void initState() {
    autoScrollController = AutoScrollController(
        //add this for advanced viewport boundary. e.g. SafeArea
        viewportBoundaryGetter: () => Rect.fromLTRB(
            0,
            0,
            0,
            MediaQuery.of(context)
                .padding
                .bottom), //Inicia el valor en 0 y al llegar al final de la pantalla, está el botón
        axis: Axis.vertical);

    autoScrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);

    _opacity = _scrollPosition < responsiveApp.opacityHeight
        ? _scrollPosition / responsiveApp.opacityHeight
        : 1;

    _isVisible = _scrollPosition >= responsiveApp.menuHeight;
    return Scaffold(
        //Para crear una página
        key: homeScaffoldKey, //Permite modificar diseños
        backgroundColor:
            Theme.of(context).backgroundColor, //Color definido en el main
        floatingActionButton: Visibility(
          visible: _isVisible,
          child: FloatingActionButton(
            onPressed: () => {autoScrollController.scrollToIndex(0)},
            child: Icon(Icons.arrow_upward),
          ),
        ),
        appBar: Header(_opacity), //Solo appbar

        /*isMobileAndTablet(context) //Va cambiando la opacidad hasta llegar la barra superior a color negro
            ? ShopAppBar(_opacity)
            : Header(_opacity),
        drawer: ShopDrawer(),*/ //Menú lateral
        
        body: ListView(controller: autoScrollController, children: [
          //Contenido de la app con carrusel para probar en web, solo comentar "is mobile...Footer()"
          Carousel(),
          /*isMobileAndTablet(context)
              ? MenuTap()
              : SectionListView(autoScrollController),
          isMobileAndTablet(context) ? SizedBox.shrink() : Footer()*/

        ]));
  }
}
