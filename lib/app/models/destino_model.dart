import 'package:hotel_mobx/app/models/atividade_model.dart';

class Destino {
  String imageUrl;
  String cidade;
  String country;
  String descricao;
  List<Atividade> atividades;

  Destino({
    this.imageUrl,
    this.cidade,
    this.country,
    this.descricao,
    this.atividades,
  });
}

List<Atividade> atividades = [
  Atividade(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    nome: 'St. Mark\'s Basilica',
    tipo: 'Sightseeing Tour',
    starTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 50,
  ),
  Atividade(
    imageUrl: 'assets/images/gondola.jpg',
    nome: 'Walking Tour and Gonadola Ride',
    tipo: 'Sightseeing Tour',
    starTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Atividade(
    imageUrl: 'assets/images/murano.jpg',
    nome: 'Murano and Burano Tour',
    tipo: 'Sightseeing Tour',
    starTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destino> destino = [
  Destino(
    imageUrl: 'assets/images/venice.jpg',
    cidade: 'Venice',
    country: 'Italia',
    descricao: 'Visite Venice para uma incrivel e inesquecivel aventura',
    atividades: atividades,
  ),
  Destino(
    imageUrl: 'assets/images/paris.jpg',
    cidade: 'Paris',
    country: 'França',
    descricao: 'Visite Paris para uma incrivel e inesquecivel aventura',
    atividades: atividades,
  ),
  Destino(
    imageUrl: 'assets/images/newdelhi.jpg',
    cidade: 'Nova Deli',
    country: 'India',
    descricao: 'Visite Nova Deli para uma incrivel e inesquecivel aventura',
    atividades: atividades,
  ),
  Destino(
    imageUrl: 'assets/images/saopaulo.jpg',
    cidade: 'São Paulo',
    country: 'Brasil',
    descricao: 'Visite São Paulo para uma incrivel e inesquecivel aventura',
    atividades: atividades,
  ),
  Destino(
    imageUrl: 'assets/images/newyork.jpg',
    cidade: 'Nova York',
    country: 'Estados Unidos',
    descricao: 'Visite Nova York para uma incrivel e inesquecivel aventura',
    atividades: atividades,
  ),
];
