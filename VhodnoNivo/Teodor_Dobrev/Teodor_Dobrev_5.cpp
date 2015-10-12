/*�� �� ��������� ��������, ����� ������� �� �����������
�� ������ ����������� �����, x, ������ 0 < x < 10.
�� �� ������������� ������ �� 10 ��������.
����������� �� ���������� �� ������ �� ��
����� �� ������� �� ������� �� ��������.
�� �� ������ �������, ���� ����� �� ��
������� � �������� ��� � ������ �� �� ������.
*/

#include <iostream>
#include <cmath>
#include <algorithm> // for sorting the array
using namespace std;

int main () {

    int x = -10;
    while ( (x <= 0) || (x >= 10) ) {
        cout << "Enter integer X ( X > 0 and X < 10 ): ";
        cin >> x;
    }

    int i;

    float arr[10];
    for (i = 0; i < x; i++) {
        arr[i] = cos(i);
    }


    cout << "ENTERED ARRAY: " << endl;
    for (i = 0; i < 10; i++) {
        cout << arr[i] << endl;
    }
    cout << endl;

    sort(arr, arr + 10); // sorting the array
    reverse(arr, arr + 10); // reversing the sorted array

    cout << "SORTED ARRAY:" << endl;
    for ( i = 0; i < 10; ++i) {
        cout << arr[i] << endl;;
    }

    return 0;
}
