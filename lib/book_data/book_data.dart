class Books {
int id;
String title;
String author;
String image;
String image2;
String desc;
bool heart;
bool cart;
Books(this.id, this.title, this.author, this.image, this.image2, this.desc, this.heart, this.cart);
}

List<Books> booksList = [
Books(1, 'Cat1', 'Author1', 'assets/images/cat1.jpeg', 'assets/images/cat2.png',
'text many words', false, false),

Books(2, 'Cat2', 'Author1', 'assets/images/cat2.png', 'assets/images/cat2.png', 
'many words', false, false),

Books(3, 'Cat3', 'Author1', 'assets/images/cat2.png', 'assets/images/cat1.jpeg',
'really a lot of words', false, false),

Books(4, 'Cat3', 'Author1', 'assets/images/cat2.png', 'assets/images/cat1.jpeg',
'many words too', false, false),

Books(5, 'Cat3', 'Author1', 'assets/images/cat2.png', 'assets/images/cat1.jpeg', 
'lots of wordas', false, false),

Books(6, 'Cat3', 'Author1', 'assets/images/cat2.png', 'assets/images/cat1.jpeg',
'words', false, false),

Books(7, 'Cat3', 'Author1', 'assets/images/cat2.png', 'assets/images/cat1.jpeg',
'words3', false, false),

Books(8, 'Cat3', 'Author1', 'assets/images/cat2.png', 'assets/images/cat1.jpeg',
'words2', false, false),

Books(9, 'Cat3', 'Author1', 'assets/images/cat2.png', 'assets/images/cat1.jpeg', 
'manyy wordss', false, false),

Books(10, 'Cat3', 'Author1', 'assets/images/cat2.png', 'assets/images/cat1.jpeg',
'words words words words', false, false),

];