import 'package:test/test.dart';
import 'package:search_package_one/search_package_one.dart';

void main() {
  final searchs = SearchPackageOneBase();
  test('Linear Search finds the correct index for int', () {
    final list = [1, 2, 3, 4, 5];
    final index = searchs.linearSearch(list, 3);
    expect(index, 2);
  });

  test('Linear Search finds the correct index for String', () {
    final list = ['apple', 'banana', 'cherry'];
    final index = searchs.linearSearch(list.cast<int>(), 'banana' as int);
    expect(index, 1);
  });

  test('Binary Search finds the correct index for int', () {
    final list = [1, 2, 3, 4, 5];
    final index = searchs.binarySearch(list, 4);
    expect(index, 3);
  });

  test('Binary Search finds the correct index for String', () {
    final list = ['apple', 'banana', 'cherry'];
    final index = searchs.binarySearch(list, 'cherry');
    expect(index, 2);
  });

  test('Jump Search finds the correct index for int', () {
    final list = [1, 2, 3, 4, 5];
    final index = searchs.jumpSearch(list, 2);
    expect(index, 1);
  });

  test('Jump Search finds the correct index for String', () {
    final list = ['apple', 'banana', 'cherry'];
    final index = searchs.jumpSearch(list, 'apple');
    expect(index, 0);
  });

  test('Search returns -1 if target not found', () {
    final list = [1, 2, 3, 4, 5];
    final index = searchs.linearSearch(list, 10);
    expect(index, -1);
  });
}
