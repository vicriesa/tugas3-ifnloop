import 'dart:io';
import 'dart:math';

void main () {
 // 4. Permainan tebak angka (0-5)
  print('Tebak Angka (0-5)');
  var random = Random();
  int angkaRandom = random.nextInt(6); // hasil 0 sampai 5

  stdout.write('Masukan Angka Tebakan Anda (0-5): ');
  int angkaTebakan = int.parse(stdin.readLineSync()!);

  if (angkaTebakan == angkaRandom) {
    print('Selamat! Tebakan Anda BENAR. Angkanya adalah $angkaRandom');
  } else {
    print('Maaf, tebakan Anda SALAH. Angka yang benar adalah $angkaRandom');
  }
  }