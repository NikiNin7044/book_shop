class Cards {
  final ProductImages images;
  final String name;
  final String description;
  final double price;

  Cards({
    required this.images,
    required this.name,
    required this.description,
    required this.price,
  });
}

class ProductImages {
  final String mainImage;
  final List<String> carouselImages;

  ProductImages({
    required this.mainImage,
    required this.carouselImages,
  });
}

List<Cards> cards = [
  Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-u/wc1000/6558984198.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-d/wc1000/6558984217.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-f/wc1000/6558984219.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-i/wc1000/6558984222.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-u/wc1000/6558984198.jpg',
      ],
    ),
    name: "Cif Легкость чистоты Антижир ",
    description: "Чистящее средство для кухни для плит и духовок, 500 мл",
    price: 107,
  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-j/wc1000/6808902823.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-i/wc1000/6705651762.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-z/wc1000/6705651743.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-p/wc1000/6705639133.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-0/wc1000/6705651744.jpg',
      ],
    ),
    name: "LAMM Цветочный бриз кондиционер ",
    description: "для белья универсальный концентрат ополаскиватель антистатик для всех типов тканей 80 стирок 2 л",
    price: 254,
  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-a/wc1000/6865042438.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-w/wc1000/6864739520.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-p/wc1000/6864739477.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-n/wc1000/6864739475.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-l/wc1000/6864739509.jpg',
      ],
    ),
    name: "Магос Санмет Плюс 1л Чистящее средство концентрат ",
    description: "для хрома и латуни от ржавчины и минеральных отложений",
    price: 569,
  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-s/wc1000/6808900420.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-6/wc1000/6705649518.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-g/wc1000/6705649528.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-p/wc1000/6705639133.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-0/wc1000/6705671616.jpg',
      ],
    ),
    name: "LAMM Альпийская свежесть кондиционер",
    description: " для белья универсальный концентрат ополаскиватель для всех типов тканей 80 стирок 2 л",
    price: 558,
  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-k/wc1000/6234150500.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-w/wc1000/6359568104.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-l/wc1000/6359568093.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-r/wc1000/6359568099.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-t/wc1000/6359568101.jpg',
      ],
    ),
    name: "Domestos Лимонная свежесть",
    description: "универсальное чистящее cредство гель, против бактерий и запахов, 1500 мл",
    price: 283,
  ),
    Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-1-1/wc1000/6921150901.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-k/wc1000/6895647620.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-2/wc1000/6895647638.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-c/wc1000/6895647648.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-t/wc1000/6895647665.jpg',
      ],
    ),
    name: "Кондиционер для белья Meine Liebe",
    description: "Сладкие сны, универсальный концентрат, 800 мл",
    price: 201,
  ),
];
