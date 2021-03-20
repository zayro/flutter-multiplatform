import 'package:app_zayro/pages/profile/ProfileBarButton.dart';
import 'package:app_zayro/widgets/search_original.dart';
import 'package:flutter/foundation.dart';

import '../../pages/home/components/body.dart';
import '../../pages/products/products.dart';

class ProviderHome with ChangeNotifier {
  String _mitexto = "Texto Inicial"; //Dentro de nuestro provider, creamos e inicializamos nuestra variable.

  String get mitexto => _mitexto; //Creamos el metodo Get, para poder obtener el valor de mitexto

  //Ahora creamos el metodo set para poder actualizar el valor de _mitexto, este metodo recibe un valor newTexto de tipo String
  set mitexto(String newTexto) {
    _mitexto = newTexto; //actualizamos el valor
    notifyListeners(); //notificamos a los widgets que esten escuchando el stream.
  }

  num _pageCurrent = 0;

  num get pageCurrent => _pageCurrent;

  set pageCurrent(num newTexto) {
    _pageCurrent = newTexto;
    notifyListeners();
  }

  handlePageState() {
    print("handleState $pageCurrent");
    switch (pageCurrent) {
      case 0:
        return bodyCustom();
        break;
      case 1:
        return ProductPage();
        break;
      case 2:
        return ProductPage();
        break;
      case 3:
        return ProfilePageBarButton();
        break;
      default:
        return HomePage();
        break;
    }
  }
}
