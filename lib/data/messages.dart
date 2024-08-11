import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'Hello Everyone': 'Hello Everyone',
          'Back': 'Back',
        },
        'tr_TR': {
          'Hello Everyone': 'Herkese Merhaba',
          'Back': 'Geri',
        },
        'fr_FR': {'Hello Everyone': 'Bonjour à Tous', 'Back': 'Dos'}
      };
}
