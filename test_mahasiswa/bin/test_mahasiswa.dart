import 'dart:io';

import 'package:test_mahasiswa/ketuahima.dart';
import 'package:test_mahasiswa/test_mahasiswa.dart' as test_mahasiswa;

void main(List<String> arguments) {
  KetuaHima ketuahima;
  var list_ketuahima = [];

  String jawab;
  var ulang = true;

  print("input biodata Ketua Hima");
  ketuahima = KetuaHima();

  while (ulang) {
    stdout.write('Nama: ');
    ketuahima.nama = stdin.readLineSync();
    stdout.write('Nrp: ');
    ketuahima.nrp = int.tryParse(stdin.readLineSync());
    stdout.write('Jurusan: ');
    ketuahima.jurusan = stdin.readLineSync();

    list_ketuahima.add(ketuahima.toMap());

    stdout.write('Berhenti input data? Y|T : ');
    jawab = stdin.readLineSync();
    (jawab == 'Y') ? ulang = false : ulang = true;
  }

  print('===================================================================');
  print('Nama\t\t Nrp\t\t Jurusan\t\t');
  print('===================================================================');
  for (var kh in list_ketuahima) {
    print('${kh['nama']}\t\t ${kh['nrp']}\t\t ${kh['jurusan']}');
  }
  print('===================================================================');
}
