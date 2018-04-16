#include <iostream>
#include <string>
using namespace std;
int *myarray = new int[10];
int* createAndFillArray()
{
	for (int i = 0; i < 10; i++)
	{
		myarray[i] = i * 10;
	}
	return &myarray[0];
}
int main(int argc, char* argv[])
{
	int *nums;
	nums = createAndFillArray();
	cout << "Array Elements:" << endl;
	for (int i = 0; i < 10; i++)
	{
		cout << nums[i] << " ";
	}
	delete[] myarray;
	cin.get();
}