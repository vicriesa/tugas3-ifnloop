import 'dart:io';
import 'dart:math';

void main() {
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
}