#include <iostream>
#include <climits>
#include <fstream>
using namespace std;

int main(){
    ofstream ofs;
    
    ofs.open("data.bin", ios::out | ios::binary);
    
    //reused code from CHA24 and trimmed off the excess.
    short maxnum = 32767;
    short minnum = -32768;

    ofs.write((char*)&maxnum, sizeof(short));
    ofs.write((char*)&minnum, sizeof(short));
    
}
