#include <iostream>
#include <climits>
#include <fstream>
using namespace std;
int main(){
    ofstream ofs;
    
    ofs.open("data.bin", ios::out | ios::binary);
    
    //short
    short maxnum = SHRT_MAX;
    short minnum = SHRT_MIN;
    cout << "Smaxnum: " << maxnum << endl;
    cout << "Sminnum: " << minnum << endl;
    ofs.write((char*)&maxnum, sizeof(short));
    ofs.write((char*)&minnum, sizeof(short));
    
    //int
    int maxint = INT_MAX;
    int minint = INT_MIN;
    cout << "Imaxnum: " << maxint << endl;
    cout << "Iminnum: " << minint << endl;
    ofs.write((char*)&maxint, sizeof(int));
    ofs.write((char*)&minint, sizeof(int));

    //long
    long maxlong = LONG_MAX;
    long minlong = LONG_MIN;
    cout << "Lmaxnum: " << maxlong << endl;
    cout << "Lminnum: " << minlong << endl;
    ofs.write((char*)&maxlong, sizeof(long));
    ofs.write((char*)&minlong, sizeof(long));

    //unsigned short
    unsigned short maxunum = USHRT_MAX;
    cout << "USmaxnum: " << maxunum << endl;
    ofs.write((char*)&maxunum, sizeof(short));

    //unsigned int
    unsigned int maxuint = INT_MAX;
    cout << "UImaxnum: " << maxuint << endl;
    ofs.write((char*)&maxuint, sizeof(int));

}
