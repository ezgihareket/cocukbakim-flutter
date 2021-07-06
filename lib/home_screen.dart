import 'package:flutter/material.dart';

import 'itemlist.dart';
import 'model/item.dart';

/*class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Çocuk Bakım",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline5,
            ),
          );
        }),
      ),
    );
  }
}*/

class HomeScreen extends StatelessWidget {
  late List<Item> itemList;

  @override
  Widget build(BuildContext context) {
    itemList = _itemList();

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Çocuk Bakım",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: _gridView(),
    );
  }

  Widget _gridView() {
    return GridView.count(
      crossAxisCount:2,
      padding: EdgeInsets.all(4.0),
      //childAspectRatio: 8.0 / 9.0,
      children: itemList
          .map(
            (Item) => ItemList(item: Item),
          )
          .toList(),
    );
  }

  List<Item> _itemList() {
    return [
      Item(
        id: 0,
        name: '0-6 Ay',
        desc: 'Bu yazımızla birlikte sizlere, ilk 6 ay bebek gelişimi '
            'hakkında bilmeniz gerekenleri madde madde aktaracağız. '
            '1. aydan 6. aya kadar olan sürede; bebeğinizin beslenmesini, '
            'uyku düzenini ve fizyolojik özelliklerini takip edebilirsiniz.'
            '\n1.Ay:\n '
            'Bu dönemde bebeğiniz dünyaya gözlerini henüz yeni '
            'açmışken minimum 2,5 kg ile maksimum 4 kg aralığında olacaktır. '
            'Boyu ise minimum 45,3 cm ile maksimum 54,2 cm aralığında yer alacaktır.'
            '\n2.Ay:\n '
        '2. ayına gelen bebeğiniz, annesi dışındaki yüzleri ve sesleri de tanımaya başlar.'
        'Genellikle yumruk şeklinde olan ellerini açacak ve eline aldığı her şeyi ağzına götürüp emecektir.'
        '\n3.Ay:\n'
        'Bebeğinizin kilosu, 3. ayında minimum 4,48 kg ile maksimum 8,10 kg aralığında olacaktır.'
        '3 ayını doldurmuş bebeğinizin boyu ise minimum 55,3 cm ile maksimum 66,4 cm değerleri arasında olacaktır.'
        '\n4.Ay:\n'
        'Bebeğiniz 4. ay ile eline geçen nesneleri tutmaya başlar ve kolay kolay bırakmaz.'
        'Yardımcı olduğunuz takdirde oturmaya başlayabilir ve başını dik tutabilir.'
        'Evde olan farklı kişileri tanır ve onunla ilgilenilirse sesli bir gülümsemeyle tepki verir.'
        '\n5.Ay:\n'
        'bebeğiniz, gördüğü ve duyduğu her şeyi taklit etmeye başlar. Kendine özgü bir takım sesler yardımıyla sizinle konuşur.'
        'Her şeye dokunmak isteyen bebeğiniz, eline aldığı her nesneyi ağzına götürür.'
        '\n6.Ay:\n'
        '6. ayına gelen bebeğinizin kilosu, minimum 5,94 kg ile maksimum 10,25 kg aralığında seyir gösterecektir. '
        'Bu ayda bebeğinizin boyu ise minimum 61,6 cm ile maksimum 73,2 cm aralığında yer alacaktır.',
        imageUrl: 'assets/images/06ay1.png',
        imageUrl2: 'assets/images/06ay2.png',
      ),
      Item(
        id: 1,
        name: '6-12 Ay',
        desc: 'Autobots and Decepticons are at war, with humans '
            'on the sidelines. Optimus Prime is gone. The key to '
            'saving our future lies buried in the secrets of the past, '
            'in the hidden history of Transformers on Earth.',
        imageUrl: 'assets/images/612ay1.png',
        imageUrl2: 'assets/images/612ay2.png',
      ),
      Item(
        id: 2,
        name: '12-24 Ay',
        desc: 'Jake Pentecost, son of Stacker Pentecost, reunites with '
            'Mako Mori to lead a new generation of Jaeger pilots, including '
            'rival Lambert and 15-year-old hacker Amara, against a new Kaiju threat.',
        imageUrl: 'assets/images/1224ay1.png',
        imageUrl2: 'assets/images/1224ay2.png',
      ),
      Item(
        id: 3,
        name: '2-6 Yaş',
        desc: 'Thor is imprisoned on the planet Sakaar, and must '
            'race against time to return to Asgard and stop Ragnarök, '
            'the destruction of his world, at the hands of the powerful '
            'and ruthless villain Hela.',
        imageUrl: 'assets/images/26yas1.png',
        imageUrl2: 'assets/images/26yas2.png',
      ),
    ];
  }
}
