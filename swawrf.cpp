#include <iostream> // бибилиотеки
using namespace std;

int main() {
    
    setlocale(LC_ALL, "Russian.UTF-8");

    // float a;
    // cout << "введите первое число ";
    // cin >> a;
    // float b;
    // cout << "введите второе число ";
    // cin >> b;
    // float c = a + b;
    // float d = a * b;
    // float f = a / b;
    // float g = a - b;
    //
    // cout << c << "\n";
    // cout << d << "\n";
    // cout << f << "\n";
    // cout << g << "\n";
    
    // int a;
    // int b;
    // cin >> a >> b;
    // cout << a <<"\n" << b;
    
    // string str;
    // cin >> str;
    // str = str + "!";
    // cout << str;
    
    // float a;
    // cout << "энтер де намбер мабой: ";
    // cin >> a;
    // float b;
    // cout << "энтер де намбер мабой еще раз: ";
    // cin >> b;
    // float c;
    // cout << "энтер де намбер мабой еще: ";
    // cin >> c;
    //
    // float Count = (a + b + c)/3;
    // cout << "аверэйдж из твоих трех намберов > " << Count;
    
    string str;
    cout << "энтер ворд: ";
    cin >> str;
    if (str.length() != 6)
    {
        cout << "Потише мабой" ;
    }else
    {
       cout << str[1]<<"\n" << str[3]<<"\n" << str[5]<<"\n";
    }
}
