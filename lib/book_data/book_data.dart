class Books {
int id;
String name;
String image;
String image2;
int code;
Books(this.id, this.name, this.image, this.image2, this.code);
}

List<Books> booksList = [
Books(1, 'Cat1', 'assets/images/cat1.jpeg', 'assets/images/cat2.png', 213401323),
Books(2, 'Cat2', 'assets/images/cat2.png', 'assets/images/cat2.png', 126527060),
Books(3, 'Cat3', 'assets/images/cat2.png', 'assets/images/cat1.jpeg', 111942661),
];