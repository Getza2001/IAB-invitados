import 'package:url_launcher/url_launcher.dart';

class MapUtils {

  static void abrirMapa(double lat, double lon) async {
    final Uri url = Uri.parse('https://www.google.com/maps/search/?api=1&query=$lat,$lon');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'no se puede abrir $url';
    }
  }

}