import 'dart:io';
import 'dart:math';

void main() {
  // 1. Menentukan nilai huruf dari angka 0-100
  int nilaiAngka = 78;
  String nilaiHuruf;

  if (nilaiAngka >= 85) {
    nilaiHuruf = 'A';
  } else if (nilaiAngka >= 70) {
    nilaiHuruf = 'B';
  } else if (nilaiAngka >= 55) {
    nilaiHuruf = 'C';
  } else {
    nilaiHuruf = 'D';
  }

  print('=== Konversi Nilai ke Huruf ===');
  print('Nilai Angka = $nilaiAngka -> Nilai Huruf = $nilaiHuruf');
  print('');


  // 2. FizzBuzz angka 1-20
  print('=== FizzBuzz 1-20 ===');
  for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('FizzBuzz');
    } else if (i % 3 == 0) {
      print('Fizz');
    } else if (i % 5 == 0) {
      print('Buzz');
    } else {
      print(i);
    }
  }
  print('');


  // 3. Input 5 angka, hitung jumlah, rata-rata, max, min
  print('=== Statistik 5 Angka ===');
  List<double> angka = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write('Masukan Angka ke-$i: ');
    double input = double.parse(stdin.readLineSync()!);
    angka.add(input);
  }

  double jumlah = angka.reduce((a, b) => a + b);
  double rataRata = jumlah / angka.length;
  double nilaiMax = angka.reduce((a, b) => a > b ? a : b);
  double nilaiMin = angka.reduce((a, b) => a < b ? a : b);

  print('Jumlah    = $jumlah');
  print('Rata-rata = $rataRata');
  print('Nilai Max = $nilaiMax');
  print('Nilai Min = $nilaiMin');
  print('');

 
  // 4. Permainan tebak angka (0-5)
  print('=== Tebak Angka (0-5) ===');
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