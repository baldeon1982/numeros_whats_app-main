import 'package:numeros_whats_app/models/numero_de_telefono.dart';
import 'package:url_launcher/url_launcher.dart';

extension NumeroDeTelefonoExtension on NumeroDeTelefono {
  void abrirEnWhatsApp({String? mensajeInicial}) {
    // Ejemplo de mandar whats app con una mensaje de texto predefinido
    var urlString = 'https://wa.me/$numeroDeTelefonoPlano';
    if (mensajeInicial != null) {
      final mensajeAEnviar = mensajeInicial.replaceAll(' ', '%20');
      urlString = 'https://wa.me/$numeroDeTelefonoPlano?text=$mensajeAEnviar';
    }
    final url =
        //Uri.parse('https://wa.me/$numeroDeTelefonoPlano?text=Hola%20Mundo');
        Uri.parse(urlString);
    launchUrl(url);
  }

  void abrirTelefono() {
    final url = Uri.parse('tel:$numeroDeTelefonoPlano');
    launchUrl(url);
  }
}
