/* �� �� ��������� ��������, ����� ������� �� ����������� ��
������ ����������� ����� X, ������ 0 < X < 100.
�� �� ������������ ����� �� 10 ����������� ��������, ����� ���� > X.
����� ����� ������� �� �� ������ � ��� ����� � ������ 5.
���������� ����� �� �� ������ �� ������.
*/

#include <iostream>
#include <stdlib.h>
#include <time.h>
using namespace std;

int main() {

    int x;
    cout << "Enter X ( 0 < X < 100 ): ";
    cin >> x;

    int arr[10];
    int arr1[10];
    int counter = 0;
    srand (time(NULL));
    for ( int i = 0; i < 10; i++ ) {
        arr[i] = (rand() % (100-x)) + x;
        if (i % 2 == 1) {
            arr1[counter] = arr[i];
            cout << arr[i] << "   ";
            counter++;
        }
    }

    return 0;
}
