// import 'package:librerias/librerias.dart' as librerias;
// import 'package:characters/characters.dart';
import 'package:librerias/contador.dart';

class Persona<T> {
  T id;
  String nombre;

  Persona(this.id, this.nombre);
}

void main(List<String> arguments) {
  List<int> numeros = <int>[];
  numeros.addAll([1, 2, 4, 8]);
  print(numeros);

  List<String> palabras = <String>[];
  palabras.addAll(['Daniel', 'Cristian', 'Juan']);
  print(palabras);

  List intLista = <int>[2, 3, 5, 7, 8];
  List stringLista = <String>['gato', 'perro', 'leon'];
  List doubleLista = <double>[2.3, 3.5, 7.9];

  primerElemento(intLista);
  primerElemento(doubleLista);
  primerElemento(stringLista);

  List<num> valores = [1, 2, 3, 4, 5];
  print(agregar(10, valores));

  Contador<double> doubles = Contador<double>();
  doubles.addAll([1.0, 4.0, 7.0]);
  doubles.total();

  Contador<int> ints = Contador<int>();
  ints.addAll([3, 5, 7]);
  ints.total();

  // Persona<int> tom = Persona<int>(123, "Tom");
  // print(tom.id);

  // Persona<String> bob = Persona<String>("321", "Bob");
  // print(bob.id);
  //print('Hello world: ${librerias.calculate()}!');
  // const texto = "Hola mundo!🍋, que tal.";
  // print(texto.characters.length);

  // //substring
  // print(texto.substring(5, 13));
  // print(texto.characters.skip(5).take(7).toString());

  // //splirring
  // const text = "Hola👨‍👩‍👧‍👦👧con👧abc👧todos";
  // // print(text);
  // print(text.split('👧'));
  // print(text.characters.split('👧'.characters).toList());
}

T primerElemento<T>(List<T> lista) {
  T primer = lista[0];
  print(primer);
  return primer;
}

T agregar<T extends num>(T value, List<T> items) {
  dynamic suma = value;
  items.forEach((value) {
    suma += value;
  });
  return suma;
}
