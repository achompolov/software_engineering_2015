/* �� �� ��������� ��������, ����� ������� �� �����������
�� ������ ����������� ����� x, ������ 0<x<10.
�� �� ������������ ����� �� 100 ����������� ��������.
����������� �� ���������� �� �� �������� ����� � ���������
[0, 100). ���������� �� ������ �� �� �������� ����,
�� ������� ���������� �� x �� �� � ��������.
*/

#include <iostream>
#include <stdlib.h>
#include <time.h>
using namespace std;

int main () {

    int x = -10;
    while (( x <= 0 ) || ( x >= 10 )) {
        cout << "Enter integer X ( 0 < X < 10 ):" ;
        cin >> x;
    }

    srand (time(NULL));

    int arr[100];
    for (int i = 0; i < 100; i++) {
        arr[i] = rand() % 100;
        if (arr[i] % 10 == x) {cout << arr[i] << endl;}
    }
    for (int i = 0; i < 100; i++)
        if ((arr[i] % 10) != x) {cout << arr[i] << endl;}

    return 0;
}
