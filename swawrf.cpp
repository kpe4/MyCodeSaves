#include <iostream>
#include <iomanip>// бибилиотеки
using namespace std;
#include <cmath>

int main(){
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
    
    // while (true){
    //     string str1;
    //     cout << "энтер стринг: ";
    //     cin >> str1;
    //     string str2;
    //     cout << "энтер энодер стринг: ";
    //     cin >> str2;
    //     
    //     
    //     if (str1.length() > str2.length()) {
    //         cout << "больше символов у " << str1 << "\n";
    //     }else if (str1.length() == str2.length()) {
    //         cout << "записи равны по символам" << "\n";
    //     }else{
    //         cout << "больше символов у " << str2 << "\n";
    //     }
    // }
    
    
    // while (true){
    //    // 1 
    //    float g = 9.8;
    //    float a;
    //    cout << "введите массу: ";
    //    cin >> a;
    //    float f = g * a;
    //    cout << "сила тяжести " << f << "кг"<<"\n";
    //     
    //    // 2 
    //    int s;
    //    cout << "введите расстояние(км) ";
    //    cin >> s;
    //    int t;
    //    cout << "введите время(ч) ";
    //    cin >> t;
    //    int speed = s / t;
    //    cout << "Скорость " << speed << "км/ч" << "\n";
    //    
    //    // 3 
    //    float l;
    //    cout << "Введите длину прямоугольника ";
    //    cin >> l;
    //    float h;
    //    cout << "введите высоту прямоугольника ";
    //    cin >> h;
    //    float m = (l*2)+(h*2);
    //    float j = l*h;
    //    cout << "Периметр трегольника = " << m << "\n" << "Площадь = " << j << "\n";
    // }   
    
    // float g = 9.8;
    // int a = -10;
    // cout << "корень g " << sqrt(g) << endl;
    // cout << "корень g " << pow(g, 2) << endl;
    // cout << "кругление в меньшую сторону " << floor(g) << endl;
    // cout << "округление в большую сторону " << ceil(g)<< endl;
    // cout << "округление " << round(g)<< endl;
    // cout << "модуль а" << abs(a)<< endl;
    
    // int a;
    // int b;
    // cout << "Введите длину первого катета: ";
    // cin >> a;
    // cout << "Введите длину второго катета: ";
    // cin >> b;
    // double c = hypot(a, b);
    // cout << "Гипотенуза треугольника равна: " << c << endl;
    //
    //
    // int base;
    // int exponent;
    // cout << "Введите основание: ";
    // cin >> base;
    // cout << "Введите показатель: ";
    // cin >> exponent;
    // int result = pow(base, exponent);
    // cout << base << " в степени " << exponent << " равно: " << result << endl;
    //
    //
    // int x1, y1;
    // int x2, y2;
    // cout << "Введите координаты первой точки через пробел: ";
    // cin >> x1 >> y1;
    // cout << "Введите координаты второй точки через пробел: ";
    // cin >> x2 >> y2;
    // int distance = hypot(x2 - x1, y2 - y1);
    // cout << "\nРасстояние между точками равно: " << distance << endl;
    
    // float deg;
    // cout << "введите первый угол: ";
    // cin >> deg;
    //
    // float rad = deg * 3.14 / 180;
    // float sinDeg = sin(rad);
    // float cosDeg = cos(rad);
    // cout << "Синус:" << round(sinDeg)<< endl;
    // cout << "косинус: " << round(cosDeg)<< endl;
    
    // float a1;
    // cout << "введите первую сторону треугольника: ";
    // cin >> a1;
    // float a2;
    // cout << "введите вторую: ";
    // cin >> a2;
    // float a3;
    // cout << "введите третью: ";
    // cin >> a3;
    // float polu = (a1 + a2 + a3) / 2;
    // float gercva = polu * (polu - a1)*(polu - a2)*(polu - a3);
    // float geron = sqrt(gercva);
    // cout << "площадь треугольника равна: " << round(geron);
    
    // float a, b, c;
    // cout << "ведите кэфы a, b, c" << endl;
    // cin >> a >> b >> c;
    // float discr = pow(b,2) - 4 * a * c;
    // cout<<"D="<<b<<"^2"<<"-"<<"4"<<"*"<<a<<"*"<<c<<"="<<discr<<endl;
    // if (discr > 0){
    //     float x1 = (-b + sqrt(discr)) / (2 * a);
    //     float x2 = (-b - sqrt(discr)) / (2 * a);
    //     cout << "x1 = " << x1<<endl;
    //     cout << "x2 = " << x2<<endl;
    // }else if (discr < 0){
    //     cout << "корней нет - D < 0" << endl;
    // }else if (discr == 0){
    //     cout << "D = 0" << endl;
    //     float x1 = -b / 2 * a;
    //     cout << "x1 = " << x1<<endl;
    // }
    // float qrt;
    // cout << "введите число: ";
    // cin >> qrt;
    // float qrts = sqrt(qrt);
    // float qrtc = cbrt(qrt);
    // cout << "квадратный корень из числа " << qrt << " - " << qrts << ", а кубический - " << qrtc << endl; 
    //
    //
    // float numa, numb;
    // cout << "введите два числа для вычисления разности через пробел: ";
    // cin >> numa >> numb;
    // float module = fabs(numa - numb);
    // cout << "абсолютный модуль разности ваших чисел = " << module << endl;
    //
    //
    // double degrees;
    // cout << "введите значение в град: ";
    // cin >> degrees;
    // float PI = 3.14;
    // float rad = degrees * (PI / 180.0);
    // float tg = tan(rad);
    // cout << "в радианах: " << rad << endl;
    // cout << "тангенс: " << tg << endl;
    
    // float S, p, n;
    // cout << "введите вклад $: " << endl;
    // cin >> S;
    // cout << "введите ставку %: " << endl;
    // cin >> p;
    // cout << "введите длительность (лет): " << endl;
    // cin >> n;
    //
    // float total = pow(1.0 + (p / 100.0), n) * S;
    // cout << "полчучается мы должны тебе $" << total << endl;
    
    // float radsh;
    // cout << "введите радиус шара: " << endl;
    // cin >> radsh;
    //
    // float V = 4.0 / 3.0 * 3.14 * pow(radsh, 3);
    // cout << "объем шара соствавялет " << V << " куб. метров" << endl;
    
    // short s = 32000; // 2 bytes
    // int i = 2000000000; // 4 bytes
    // long l = 4000000000; // 4-8 bytes
    // long long ll = 9 * pow(10, 18); // 8 bytes
    // unsigned int ui = -1;
    //
    // float f = 9.5545645; // 4 bytes
    // string str = "kdfsmgjkdfgkdf";
    //
    // double d = 9.040343040540343234; // 8 bytes
    //
    // char c = 'A'; // for one symbol
    // bool b = true;
    // bool false1 = false;
    // cout << d;
    
    
    string str = "stringar";
    int i = 25677;
    float f = 24.512;
    double d = 24.693989523;
    auto str1 = "Hello World!";
    bool test = true;
    char c = 'A';
    long l = 4000000000;
    long long ll = 9 * pow(10, 18);
    unsigned int ui = -1;
    
    cout << "String: " << str << " " << sizeof(str) << " bytes" << endl
    << "Int: " << i << " " << sizeof(i) << " bytes" << endl
    << "Float: " << f <<  " " << sizeof(f) << " bytes" << endl
    << "Double: " << d << " " << sizeof(d) << " bytes" << endl
    << "Auto: " << str1 << " " << sizeof(str1) << " bytes" << endl
    << "Bool: " << test << " " << sizeof(test) << " bytes" << endl
    << "Char: " << c << " " << sizeof(c) << " bytes" << endl
    << "Long: " << l << " " << sizeof(l) << " bytes" << endl
    << "Long long: " << ll << " " << sizeof(ll) << " bytes" << endl
    << "Unsigned: " << ui << " " << sizeof(ui) <<" bytes" << endl;
    return 0;
}
