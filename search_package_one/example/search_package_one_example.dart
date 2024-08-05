import 'package:search_package_one/search_package_one.dart';

void main() {
  final searchs = SearchPackageOneBase();
  // Linear Search misoli
  final listLinear = [1, 2, 3, 4, 5, 'test'];
  final targetLinear = 3;
  final indexLinear = searchs.linearSearch(listLinear, targetLinear);
  print('Linear Search: Element $targetLinear is at index $indexLinear');

  // Binary Search misoli
  final listBinary = [1, 2, 3, 4, 5];
  final targetBinary = 4;
  final indexBinary = searchs.binarySearch(listBinary, targetBinary);
  print('Binary Search: Element $targetBinary is at index $indexBinary');

  // Jump Search misoli
  final listJump = [1, 2, 3, 4, 5];
  final targetJump = 2;
  final indexJump = searchs.jumpSearch(listJump, targetJump);
  print('Jump Search: Element $targetJump is at index $indexJump');
}
