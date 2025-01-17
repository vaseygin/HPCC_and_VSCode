#include <iostream>
#include <cassert>

using namespace std;

int main() {
    cout << "Is there some debugging to do?" << endl;

    double x;
    int y = 5;

    double z = x + y;

    if (z == 10.3) {
        cout << "You got " << z << " That's correct!" << endl;
    }
    else {
        cout << "You got " << z << ", but the answer should be 10.3" << endl;
    }

    return 0;
}