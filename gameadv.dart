import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int numeroAleatorio = random.nextInt(11); // Gera números de 0 a 10
  late int op;

  print("(1)PORTUGUESE | (2)ENGLISH \n");
  op = int.parse(stdin.readLineSync()!);

  switch (op) {
    case 1:
      Portuguese(numeroAleatorio);
      break;
    case 2:
      English(numeroAleatorio);
      break;
    default:
      print("Invalid Option!");
  }
}

void Portuguese(numeroAleatorio) {
  int tentativas = 9;
  print("JOGO DE ADVINHA\n");

  do {
    print("ESCOLHA UM NÚMERO: ");
    int numero = int.parse(stdin.readLineSync()!); // Aceita entrada de número

    if (numero == numeroAleatorio) {
      print("Você acertou! PARABÉNS! O número era $numero.");
      break;
    } else {
      tentativas--;
      print(
          "Ih! Não foi dessa vez, tente novamente\n Tentativas restantes: $tentativas");
      if (tentativas == 0) {
        print("Suas tentativas chegaram ao fim!");
        break;
      }
    }
  } while (tentativas > 0);
}

void English(numeroAleatorio) {
  int tentativas = 9;
  print("GUESS\n");

  do {
    print("CHOOSE A NUMBER: ");
    int numero = int.parse(stdin.readLineSync()!); // Aceita entrada de número

    if (numero == numeroAleatorio) {
      print("You got it! CONGRATULATIONS! The number was $numero.");
      break;
    } else {
      tentativas--;
      print("Oops! Not this time, try again\n Remaining attempts: $tentativas");
      if (tentativas == 0) {
        print("Your attempts are over!");
        break;
      }
    }
  } while (tentativas > 0);
}
