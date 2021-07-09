class Carousel{
  int index;
  String title;
  String image;
  bool isSelected;

  Carousel({this.index,this.title,this.image,this.isSelected,});

}

List<Carousel>carousel=[
  Carousel(index:0,title: 'WORD',image: 'assets/images/image1.png',isSelected: true),
  Carousel(index:1,title: 'EXCEL',image: 'assets/images/image2.png',isSelected: false),
  Carousel(index:2,title: 'POWERPOINT',image: 'assets/images/image3.png',isSelected: false),
  Carousel(index:3,title: 'OUTLOOK',image: 'assets/images/image4.png',isSelected: false),
  Carousel(index:4,title: 'ACCESS',image: 'assets/images/image5.png',isSelected: false),
  Carousel(index:5,title: 'PROJECT',image:  'assets/images/image6.png',isSelected: false),
  Carousel(index:7,title: 'PROGRAMACIÓN', image: 'assets/images/image7.png',isSelected: false),
  Carousel(index:8,title: 'SOPORTE DE T.I.', image: 'assets/images/image8.png',isSelected: false),
  Carousel(index:9,title: 'PHOTOSHOP', image: 'assets/images/image9.png',isSelected: false),
  Carousel(index:10,title: 'DREAMWEAVER', image: 'assets/images/image10.png',isSelected: false),
];