#include <iostream>
#include <fstream>
using namespace std;

int main()
{
    ofstream ofs;
    //int num = 10;
    //long num = 0xFFFF1111;
    long num = 429406129;
    ofs.open("data.bin", ios::out | ios::binary);
    if (!ofs)
    {
        cout << "Error opening file" << endl;
        exit(1);
    }
    ofs.write((char *)&num, sizeof(int));
    ofs.close();
    return 0;
}