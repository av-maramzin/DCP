
#include <iostream>
#include <cassert>

using namespace std;

double mylog(int a, int b) {

    int pow = 1;
    int log = 0;

    assert(a>1 && b>a);
    
    while (pow<b) {
        pow*=a;
        log++;
    }
}

int main() {
    
    int a, b;

    cout << "Enter a=";
    cin >> a;
    cout << endl;
    cout << "Enter b=";
    cin >> b;
    cout << endl;

    cout << "Log(" << a << "," << b << ")=" << mylog(a,b) << endl;

    return 0;
}
