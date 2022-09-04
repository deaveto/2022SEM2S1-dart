void main() {
  int variable1 =10;
  double variable2 =1.4;

  var variable3 =10;
  var variable4 =1.4;

  var variable5 = 10;
  var variable6 = 10.6;
/*
  String texto1 = "El calculo de la edad es ${6 + 4}";
  String texto2 = "La suma es igual a ${variable5 + variable2}";
  String texto3 = "Mi nombre es " + "German";
  String texto4 = "Mi nombre es "'Miguel';

  print(texto1);
  print(texto2);
  print(texto3);
  print(texto4);
  */

  // listas "lista": Unknown word

  var lista1 = ["mazda", "chebrolet", "kia"];
  var lista2 = ["mazda", "chebrolet", "kia", 234, true];
  List<String> lista3 = ["mazda", "chebrolet", "kia"];
  print(lista1);
  lista1.clear();
  var lista4 = ["Manzana", ...lista2];
  var lista;
  var lista6 = ["uno", ...lista4, ...?lista];

  print(lista1);
  print(lista4);
  print(lista4.reversed); //reversed cambia los corchetos de la lista por parentesis
  print(lista6);

  var set1 = {"mazda", "chebrolet", "kia"};// los set(tambien son listas) se trabajan con lleves
  set1.add("jeep");
  set1.add("mazda");
  print(set1);

  var map1 = {'red':'rojo', 'blue': 'azul'};
  print(map1);
  map1['green']="verde";
  print(map1);

//NULL safety
  List<String>? lista10 = null; 
  List<String?> lista11 = ["uno", "dos", null];



}
