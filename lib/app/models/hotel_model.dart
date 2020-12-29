class Hotel {
  String imageUrl;
  String nome;
  String endereco;
  int price;

  Hotel({
    this.imageUrl,
    this.nome,
    this.endereco,
    this.price,
  });
}

final List<Hotel> hoteis = [
  Hotel(
    imageUrl: 'assets/images/hotel0.jpg',
    nome: 'Hotel 0',
    endereco: 'Rua dos hotéis, 0',
    price: 300,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    nome: 'Hotel 1',
    endereco: 'Rua dos hotéis, 1',
    price: 450,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    nome: 'Hotel 2',
    endereco: 'Rua dos hotéis, 2',
    price: 280,
  ),
];
