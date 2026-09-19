import 'dart:io';
import 'dart:math';

void main() {
  // 1. Menentukan nilai huruf dari angka 0-100
  int nilaiAngka = 0;
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

  print('Konversi Nilai ke Huruf');
  print('Nilai = $nilaiAngka ($nilaiHuruf)');
  print('');
}