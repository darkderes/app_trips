import 'package:app_trips/Database/places_db.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future loadData() async {
  final placesBox = Hive.box<Places>('Places');

  if (placesBox.isEmpty) {
    final defaulPlaces = [
      //mas lugares de chile
      Places(
          "Valle de la Luna",
          "El Valle de la Luna es un área desértica ubicada a 13 km al oeste de San Pedro de Atacama, en la Región de Antofagasta, Chile. Es una formación geológica que se asemeja a la superficie lunar.",
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Valle_della_Luna_%28Valley_of_the_Moon%29_Chile_Luca_Galuzzi_2006.jpg/1280px-Valle_della_Luna_%28Valley_of_the_Moon%29_Chile_Luca_Galuzzi_2006.jpg",
          0,
          "Chile",
          0,
          false),
      Places(
          "Parque nacional Torres del Paine",
          "El parque nacional Torres del Paine es un área protegida de Chile ubicada en la Región de Magallanes y de la Antártica Chilena, en la provincia de Última Esperanza. Fue creado el 13 de mayo de 1959 como parque nacional de Turismo Lago Grey, y en 1970 cambió su nombre al actual.",
          "https://upload.wikimedia.org/wikipedia/commons/f/fc/LagoNordenskold.jpg",
          0,
          "Chile",
          0,
          false),
      Places(
          "Parque nacional Lauca",
          "El parque nacional Lauca es un área protegida de Chile ubicada en la Región de Arica y Parinacota, en la provincia de Parinacota. Fue creado el 9 de octubre de 1970 y tiene una superficie de 137 883 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipPPptEh37attPnPHjE4o_5ysQd-Z5OVD5idNB4z=s680-w680-h510",
          0,
          "Chile",
          0,
          false),
      Places(
          "Parque nacional Conguillío",
          "El parque nacional Conguillío es un área protegida de Chile ubicada en la Región de la Araucanía, en la provincia de Cautín. Fue creado el 29 de octubre de 1950 y tiene una superficie de 60 832 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipNLILEcKooCDJJ3EiMc1aE5exMKHc-Zcl0QHaul=s680-w680-h510",
          0,
          "Chile",
          0,
          false),
      Places(
          "Parque nacional Vicente Pérez Rosales",
          "El parque nacional Vicente Pérez Rosales es un área protegida de Chile ubicada en la Región de Los Lagos, en la provincia de Llanquihue. Fue creado el 17 de agosto de 1926 y tiene una superficie de 251 000 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipOOCSkOxga3Tzp3WpWaARHmFi-8s5xiMMuOg2E=s680-w680-h510",
          0,
          "Chile",
          0,
          false),
      Places(
          "Parque nacional Puyehue",
          "El parque nacional Puyehue es un área protegida de Chile ubicada en la Región de Los Lagos, en la provincia de Osorno. Fue creado el 29 de octubre de 1941 y tiene una superficie de 107 832 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipNPzOmvro--nIOGdIpy9AOLeV0vQ0DLLIBB_-B8=s680-w680-h510",
          0,
          "Chile",
          0,
          false),
      Places(
          "Parque nacional Chiloé",
          "El parque nacional Chiloé es un área protegida de Chile ubicada en la Región de Los Lagos, en la provincia de Chiloé. Fue creado el 2 de octubre de 1982 y tiene una superficie de 43 057 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipP62TyJmaY1mPD04LQQrVxa7PP3Qn3oc_cIC4OS=s680-w680-h510",
          0,
          "Chile",
          0,
          false),
      Places(
          "Parque nacional Laguna San Rafael",
          "El parque nacional Laguna San Rafael es un área protegida de Chile ubicada en la Región de Aysén del General Carlos Ibáñez del Campo, en la provincia de Capitán Prat. Fue creado el 24 de abril de 1959 y tiene una superficie de 1 742 000 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipNGJ4MkXY0jRKu2rOkUBpA01hg6OIxhQBg0xga9=s680-w680-h510",
          0,
          "Chile",
          0,
          false),
      // mas lugares de peru
      Places(
          "Machu Picchu",
          "Machu Picchu es una antigua ciudad inca en los Andes peruanos, sobre un promontorio rocoso que une las montañas Machu Picchu y Huayna Picchu. Construida en el siglo XV y más tarde abandonada, es famosa por sus sofisticadas paredes de piedra seca que se unen sin el uso de mezcla, con enormes bloques que encajan perfectamente entre sí. Las estructuras, que rodean un patio central, incluyen pasadizos, jardines, torres y escalinatas.",
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Machu_Picchu%2C_Peru_%282018%29.jpg/1280px-Machu_Picchu%2C_Peru_%282018%29.jpg",
          1,
          "Perú",
          0,
          false),
      Places(
          "Lago Titicaca",
          "El lago Titicaca es un lago de agua dulce ubicado en la meseta del Collao, en la cordillera de los Andes, entre Perú y Bolivia. Se encuentra a una altitud promedio de 3812 msnm, lo que lo convierte en el lago navegable más alto del mundo.",
          "https://t3.gstatic.com/licensed-image?q=tbn:ANd9GcRGeH3MmQ2w_dj96bR5dfkbrGkNDdFjDZTbn9TeJMmhKKNRKRgu9JoSWNvat5fYmfiI",
          1,
          "Perú",
          0,
          false),
      Places(
          "Cataratas de Gocta",
          "Las cataratas de Gocta son unas cataratas situadas en el departamento de Amazonas, en el norte del Perú. Se encuentran en el río Cocahuayco, afluente del río Utcubamba, en el distrito de Valera, provincia de Bongará, a 41 km al noroeste de la ciudad de Chachapoyas.",
          "https://larepublica.cronosmedia.glr.pe/migration/images/WHY3QHRHLJHYTJ4QJKX2K4GUA4.jpg",
          1,
          "Perú",
          0,
          false),
      Places(
          "Parque nacional Huascarán",
          "El parque nacional Huascarán es un área protegida de Perú ubicada en la región Áncash, en las provincias de Asunción, Carhuaz, Huaraz, Huaylas, Mariscal Luzuriaga, Pomabamba, Recuay y Yungay. Fue creado el 1 de julio de 1975 y tiene una superficie de 340 000 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipOkn-N4BK20Vfbb5OhPtDHMkX6oJdAwCWsbo7ZE=s680-w680-h510",
          1,
          "Perú",
          0,
          false),
      // mas lugares de brasil
      Places(
          "Cristo Redentor",
          "El Cristo Redentor es una estatua de Jesús de Nazaret con los brazos abiertos mostrando a la ciudad de Río de Janeiro, en Brasil. Se encuentra en la cima del cerro del Corcovado, a 709 metros sobre el nivel del mar. Fue inaugurada el 12 de octubre de 1931.",
          "https://lh3.googleusercontent.com/p/AF1QipOyhUhVPY94asnMeYBylh1lf4elLWb04Qx_UyoT=s680-w680-h510",
          2,
          "Brasil",
          0,
          false),
      Places(
          "Pan de Azúcar",
          "El Pan de Azúcar es un cerro ubicado en la ciudad de Río de Janeiro, Brasil. Está situado en la desembocadura de la bahía de Guanabara, en una península que sobresale en el océano Atlántico. Su nombre se debe a que en el siglo XVI se comerciaba con azúcar extraído de la caña de azúcar cultivada en la región.",
          "https://t2.gstatic.com/licensed-image?q=tbn:ANd9GcSq6iMOn1knelMTNzZNvsXNPN-4eQuTDxGKjzgiELALE2ypkVHHjSwD7vRfKtpgFsVE",
          2,
          "Brasil",
          0,
          false),
      Places(
          "Cataratas del Iguazú",
          "Las Cataratas del Iguazú son un conjunto de cataratas que se localizan sobre el río Iguazú, en el límite entre la provincia argentina de Misiones y el estado brasileño de Paraná. Están totalmente insertadas en áreas protegidas: el parque nacional Iguazú en Argentina y el parque nacional do Iguaçu en Brasil, que fueron declaradas Patrimonio de la Humanidad en 1984 y 1986, respectivamente.",
          "https://upload.wikimedia.org/wikipedia/commons/9/97/Foz_de_Igua%C3%A7u_27_Panorama_Nov_2005.jpg",
          2,
          "Brasil",
          0,
          false),
      Places(
          "Parque nacional de la Chapada Diamantina",
          "El parque nacional de la Chapada Diamantina es un área protegida de Brasil ubicada en el estado de Bahía. Fue creado el 17 de septiembre de 1985 y tiene una superficie de 152 142 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipMG5r74NemfXc423wtSOUmxyyLSRLcH9BsV6-nZ=s680-w680-h510",
          2,
          "Brasil",
          0,
          false),
      Places(
          "Parque nacional de la Serra dos Órgãos",
          "El parque nacional de la Serra dos Órgãos es un área protegida de Brasil ubicada en el estado de Río de Janeiro. Fue creado el 30 de noviembre de 1939 y tiene una superficie de 11 800 ha.",
          "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/ab/84/1d/travessiapetroterejun18.jpg?w=1200&h=1200&s=1",
          2,
          "Brasil",
          0,
          false),
      Places(
          "Parque nacional de la Serra da Canastra",
          "El parque nacional de la Serra da Canastra es un área protegida de Brasil ubicada en el estado de Minas Gerais. Fue creado el 19 de mayo de 1972 y tiene una superficie de 200 000 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipMWZRxgysAWPH51k0o9t84-yAY8aaDUMcebq6gY=s680-w680-h510",
          2,
          "Brasil",
          0,
          false),
      Places(
          "Parque nacional de la Serra da Capivara",
          "El parque nacional de la Serra da Capivara es un área protegida de Brasil ubicada en el estado de Piauí. Fue creado el 5 de junio de 1979 y tiene una superficie de 129 140 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipOXROdAcKIiSTRTc_8y_c6X-T6JXDvwRPDOdBgz=s680-w680-h510",
          2,
          "Brasil",
          0,
          false),
      Places(
          "Parque nacional de la Serra da Bocaina",
          "El parque nacional de la Serra da Bocaina es un área protegida de Brasil ubicada en los estados de São Paulo y Río de Janeiro. Fue creado el 14 de abril de 1971 y tiene una superficie de 104 000 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipM9nJCTZoxS6CIf57xxQRYC4ijw54VGGQZTIVs1=s680-w680-h510",
          2,
          "Brasil",
          0,
          false),
      Places(
          "Parque nacional de la Serra do Cipó",
          "El parque nacional de la Serra do Cipó es un área protegida de Brasil ubicada en el estado de Minas Gerais. Fue creado el 13 de octubre de 1984 y tiene una superficie de 33 800 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipM9nJCTZoxS6CIf57xxQRYC4ijw54VGGQZTIVs1=s680-w680-h510",
          2,
          "Brasil",
          0,
          false),
      Places(
          "Parque nacional de la Serra do Divisor",
          "El parque nacional de la Serra do Divisor es un área protegida de Brasil ubicada en el estado de Acre. Fue creado el 12 de junio de 1989 y tiene una superficie de 846 000 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipPCGpioYEhN5dh1ybf2avO-tBo23oLYlNWHZWtG=s680-w680-h510",
          2,
          "Brasil",
          0,
          false),
      Places(
          "Parque nacional de la Serra do Itajaí",
          "El parque nacional de la Serra do Itajaí es un área protegida de Brasil ubicada en el estado de Santa Catarina. Fue creado el 14 de enero de 2004 y tiene una superficie de 57 000 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipNSRGYGzKjdTkroTZh7kV65IKGy_V9j3BDX0Erf=s680-w680-h510",
          2,
          "Brasil",
          0,
          false),
      Places(
          "Parque nacional de la Serra do Pardo",
          "El parque nacional de la Serra do Pardo es un área protegida de Brasil ubicada en el estado de Bahía. Fue creado el 29 de junio de 2010 y tiene una superficie de 152 142 ha.",
          "https://upload.wikimedia.org/wikipedia/commons/b/b0/ParqueNacionalSerraDoPardo_Esperando_a_chuva_no_Rio_Xingu_Ricardo_Dagnino_2008.JPG",
          2,
          "Brasil",
          0,
          false),
      Places(
          "Parque nacional de la Serra do Tabuleiro",
          "El parque nacional de la Serra do Tabuleiro es un área protegida de Brasil ubicada en el estado de Santa Catarina. Fue creado el 5 de abril de 1975 y tiene una superficie de 85 000 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipM8Advg209QkvocICAp8CsVi9cWgYyC173KQRbt=s680-w680-h510",
          2,
          "Brasil",
          0,
          false),
      Places(
          "Parque nacional de la Serra Geral",
          "El parque nacional de la Serra Geral es un área protegida de Brasil ubicada en los estados de Río Grande del Sur y Santa Catarina. Fue creado el 17 de diciembre de 1992 y tiene una superficie de 17 300 ha.",
          "https://lh3.googleusercontent.com/p/AF1QipOp8Yu9iWxn8ZdkX9n1DgyaYr0DVRLaUr9ww8Of=s680-w680-h510",
          2,
          "Brasil",
          0,
          false),
      // mas lugares de mexico
      Places(
          "Chichén Itzá",
          "Chichén Itzá es un importante yacimiento arqueológico precolombino de la cultura maya, ubicado en la península de Yucatán, estado de Yucatán, México. Vestigio importante y renombrado de la civilización maya, las edificaciones principales que ahí perduran corresponden a la época de la declinación de la propia cultura maya denominada por los arqueólogos como el período posclásico.",
          "https://lh3.googleusercontent.com/p/AF1QipPVRyqNwBkPGFTPdcqXJRH_9UD9iRY3nZyUu3xB=s680-w680-h510",
          3,
          "México",
          0,
          false),
      Places(
          "Teotihuacán",
          "Teotihuacán es el nombre que se da a la que fue una de las mayores ciudades prehispánicas de América, cuyos vestigios arqueológicos se encuentran al noreste del valle de México, en el municipio de Teotihuacán, Estado de México, aproximadamente a 40 km de Ciudad de México.",
          "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/2020-02-11_Teotihuacan_la_Avenida_de_los_Muertos_y_la_Pir%C3%A1mide_del_Sol.jpg/1920px-2020-02-11_Teotihuacan_la_Avenida_de_los_Muertos_y_la_Pir%C3%A1mide_del_Sol.jpg",
          3,
          "México",
          0,
          false),
      Places(
          "Palenque",
          "Palenque es un yacimiento arqueológico maya que se encuentra en el municipio de Palenque, ubicado en el estado mexicano de Chiapas, cerca del río Usumacinta. Es uno de los sitios más impresionantes de la región maya.",
          "https://lh3.googleusercontent.com/p/AF1QipP5tXUKHCfRo9HnstGSgWgHHA-BBTUpKXtTkLk1=s680-w680-h510",
          3,
          "México",
          0,
          false),
      Places(
          "Catedral Metropolitana de la Ciudad de México",
          "La Catedral Metropolitana de la Ciudad de México es la sede episcopal del Arzobispado Primado de México. Se encuentra ubicada en la Plaza de la Constitución de la Ciudad de México, en el Centro Histórico de la Ciudad de México.",
          "https://lh3.googleusercontent.com/p/AF1QipP3rsrYzBt2IGxstPJ2uOjXvInBKIWV9fBvM3YY=s680-w680-h510",
          3,
          "México",
          0,
          false),
      Places(
          "Catedral de Puebla",
          "La Catedral de Puebla, oficialmente Catedral Basílica de Nuestra Señora de la Inmaculada Concepción, es un templo católico ubicado en la ciudad de Puebla de Zaragoza, en el estado de Puebla, México. Es la sede de la Arquidiócesis de Puebla de los Ángeles.",
          "https://lh3.googleusercontent.com/p/AF1QipOpFyjYUToXDVCeFemj4AjnFUCfrx9HGrEwSKai=s680-w680-h510",
          3,
          "México",
          0,
          false),
      Places(
          "Catedral de Guadalajara",
          "La Catedral de Guadalajara es un templo católico sede de la Arquidiócesis de Guadalajara, Jalisco, México. Se encuentra ubicada en el centro histórico de la ciudad, frente a la Plaza de Armas.",
          "https://lh3.googleusercontent.com/p/AF1QipNgsSo1HzNANrLKiiw138CMMYUegeU0mxOb7MQ=s680-w680-h510",
          3,
          "México",
          0,
          false),
      Places(
          "Catedral de Morelia",
          "La Catedral de Morelia, oficialmente Catedral de la Transfiguración del Señor, es un templo católico sede de la Arquidiócesis de Morelia, ubicado en el centro histórico de la ciudad de Morelia, Michoacán, México.",
          "https://lh3.googleusercontent.com/p/AF1QipNbPepK94MxMXaD7iuTt4qwnMrJB71W7XUCAwgv=s680-w680-h510",
          3,
          "México",
          0,
          false),
      Places(
          "Catedral de Zacatecas",
          "La Catedral Basílica de Nuestra Señora de la Asunción de Zacatecas es un templo católico sede de la Diócesis de Zacatecas, ubicado en el centro histórico de la ciudad de Zacatecas, Zacatecas, México.",
          "https://lh3.googleusercontent.com/p/AF1QipOQNMmByaUsgo7S2uiDrJCvKcLcwcpI5k4vsrKu=s680-w680-h510",
          3,
          "México",
          0,
          false),
      Places(
          "Catedral de Oaxaca",
          "La Catedral Metropolitana de Nuestra Señora de la Asunción de Oaxaca, también conocida como Catedral de Oaxaca, es un templo católico sede de la Arquidiócesis de Antequera, Oaxaca, México. Se encuentra ubicada en el centro histórico de la ciudad de Oaxaca de Juárez.",
          "https://lh3.googleusercontent.com/p/AF1QipPyjH59lZHUVrMatVhoS9qwKfGmriYPu_jvd76y=s680-w680-h510",
          3,
          "México",
          0,
          false),
      Places(
          "Catedral de Mérida",
          "La Catedral de San Ildefonso de Mérida es un templo católico sede de la Arquidiócesis de Yucatán, ubicado en el centro histórico de la ciudad de Mérida, Yucatán, México.",
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Catedral_de_San_Ildefonso_1.jpg/1280px-Catedral_de_San_Ildefonso_1.jpg",
          3,
          "México",
          0,
          false),
      Places(
          "Catedral de San Luis Potosí",
          "La Catedral Basílica de San Luis Rey de Francia es un templo católico sede de la Diócesis de San Luis Potosí, ubicado en el centro histórico de la ciudad de San Luis Potosí, San Luis Potosí, México.",
          "https://lh3.googleusercontent.com/p/AF1QipOOBGrL3gyVdFwz2bSb6wFnBM_zuLuD_AKBp0xd=s680-w680-h510",
          3,
          "México",
          0,
          false),
    ];
    await placesBox.addAll(defaulPlaces);
    print('Caja rellenada con datos predeterminados');
  } else {
    print('La caja ya contiene datos');
  }
}
