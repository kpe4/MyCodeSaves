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
    
    // string str;
    // cout << "энтер ворд: ";
    // cin >> str;
    // if (str.length() != 6){
    //     cout << "Потише мабой" ;
    // }else{
    //    cout << str[1]<<"\n" << str[3]<<"\n" << str[5]<<"\n";
    //    cout << str[5] << str[4] << str[3] << str[2] << str[1] << str[0];
    // }
    
    while (true){
        string str1;
        cout << "энтер стринг: ";
        cin >> str1;
        string str2;
        cout << "энтер энодер стринг: ";
        cin >> str2;
        
        
        if (str1.length() > str2.length()) {
            cout << "больше символов у " << str1 << "\n";
        }else if (str1.length() == str2.length()) {
            cout << "записи равны по символам" << "\n";
        }else{
            cout << "больше символов у " << str2 << "\n";
        }
    }
}
