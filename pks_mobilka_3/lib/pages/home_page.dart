
import 'package:flutter/material.dart';
import 'package:pks_mobilka_3/components/item_list.dart';
import 'package:pks_mobilka_3/models/note.dart';


class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<Product> products = [
    Product(1, 'В прошлый раз Леброн перевернул сценарий своей игры с обувью, как это может сделать только король. Выход на бис еще лучше. LeBron XXI имеет амортизацию Zoom Air, и легкую конструкцию с низким профилем, обеспечивающую маневренность и взрывную мощь без лишнего веса.', 'Баскетбольные кроссовки', 'Nike Lebron 21',17990,'https://www.slamdunk.su/thumbs/66f150b3e9ff266efb923ba69266ed42456317765e709ebd1b4flebron-xxi-fv2345-500-651fbac91cea5.jpg?w=500&h=500&iar=1'),
    Product(2, 'Созданные для того, чтобы быть мягкими и гибкими, эти Luka 3 дарят волшебство вашим ногам. Эластичная пена под ногами поможет вам создать пространство на корте, а легкая конструкция создана для движения. Более того, любовь Луки к автомобилям вдохновила нас на создание высокоскоростного стиля, который поможет вам выглядеть как столетний житель, обгоняя защитников.', 'Баскетбольные кроссовки', 'Jordan Luka 3',21990,'https://www.slamdunk.su/thumbs/66e5650a6203c%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA_%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0_2024-09-14_%D0%B2_14.24.41.png?w=500&h=500&iar=1'),
    Product(3, 'Внутренний двигатель Янниса работает на износ, требуя обуви, которая может использовать его сверхспособности. Войдите в Giannis Freak 5. Его фирменная обувь, созданная с потрясающей скоростью для сверхбыстрого выполнения первых шагов, с упругой амортизацией, способной выдержать всю игру, позволяет вам почувствовать себя греческим фриком.', 'Баскетбольные кроссовки', 'Nike Zoom Freak 5',19900,'https://www.slamdunk.su/thumbs/66f151fa410d666c47fff0f164freak-5-dx4985-402-661d1e88ddd53.jpg?w=500&h=500&iar=1'),
    Product(4, 'Баскетбольные кроссовки Adidas Crazy 1 с дизайном в стиле ретро привносят классический вид на корт.', 'Баскетбольные кроссовки', 'Adidas Crazy 1 Sunshine',18990,'https://www.slamdunk.su/thumbs/66efb96ac46a666e0219bd719266deabd91175a%D0%9A%D0%BE%D0%BF%D0%B8%D1%8F_sneakers-adidas-originals-crazy-1-sunshine-if6171-0.jpg?w=500&h=500&iar=1'),
    Product(5, 'Износостойкая подметка для прочного сцепления с разнородными поверхностями уличных площадок.', 'Баскетбольные кроссовки', 'Anta Furious 1.0',13190,'https://www.slamdunk.su/thumbs/66f1429f56307723222001722502777-1403873_1.jpg?w=500&h=500&iar=1'),
    Product(6, 'Баскетбольные кроссовки 361° SUPERNOVA. Промежуточная подошва из пористой пены Quikfoam lite усиливает амортизирующие свойства обуви и способствует более эффективному отталкиванию.', 'Баскетбольные кроссовки', '361 SUPERNOVA',10990,'https://www.slamdunk.su/thumbs/66f15181164d066de9fa375faa1607689ac3-1-transformed.jpg?w=500&h=500&iar=1'),
    Product(7, 'Баскетбольные кроссовки Li-Ning BadFive . Верх кроссовок изготовлен из высококачественных синтетических материалов и текстиля, обеспечивающих прочность, долговечность, и хорошие вентиляционные свойства.', 'Баскетбольные кроссовки', 'Li-Ning BadFive Storm',10990,'https://www.slamdunk.su/thumbs/66db08fd8108266d57bbf92cf0Pic1946112_94575_1.jpg?w=500&h=500&iar=1'),
    Product(8, 'У вас есть энергия и скорость, и вы хотите обувь, которая поднимет вас на еще более высокий уровень. Новейшие Air Jordan XXXVIII предназначены для взлета и посадки. Подошва включает в себя двойной баллон Zoom в передней части стопы и мягкую пену Formula 23 в области пятки. ', 'Баскетбольные кроссовки', 'Jordan Air XXXVIII Low',23990,'https://www.slamdunk.su/thumbs/66c47ed5d83cd%D0%9A%D0%BE%D0%BF%D0%B8%D1%8F_nike-jordan-air-xxxviii-low-fundamental-fd2326101.jpg?w=500&h=500&iar=1'),
    Product(9, 'Баскетбольные кроссовки GH5 (Gordon Hayward) - Кроссовки, созданные совместно с баскетболистом Гордоном Хэйвордом, сочетают в себе хорошую амортизацию, износостойкость и сцепление для лучших результатов на площадке.', 'Баскетбольные кроссовки', 'ANTA GH5',16990,'https://www.slamdunk.su/thumbs/66b5eb35ba404SLAM_DUNK4339.jpg?w=500&h=500&iar=1'),
    Product(10, 'Новый инновационный материал, разработанный ANTA совместно с Tek nor Apex. Формула содержит натуральный латекс и термопластичные эластомеры от Tek nor Apex, которые обычно используются в автомобилестроении. Такой метод производства материала промежуточной подошвы обеспечивает оптимальное сочетание упругости и амортизации.', 'Баскетбольные кроссовки', 'Anta FLASH DUALS 6',9390,'https://www.slamdunk.su/thumbs/66f1534b5128066f1456a4e6ca352471001722503497-1403883_1.jpg?w=500&h=500&iar=1'),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Главная страница'),),
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index){
              return ProductCard(product: products[index]);
            }

        )
    );
  }
}
