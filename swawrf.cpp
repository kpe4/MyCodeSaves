#include <iostream>
#include <Windows.h>
#include <cmath>
#include <string>
#include <format>

using namespace std;

int main()
{
	SetConsoleCP(1251);
	SetConsoleOutputCP(1251);

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


    // string str = "stringar";
    // int i = 25677;
    // float f = 24.512;
    // double d = 24.693989523;
    // auto str1 = "Hello World!";
    // bool test = true;
    // char c = 'A';
    // long l = 4000000000;
    // long long ll = 9 * pow(10, 18);
    // unsigned int ui = -1;
    //
    // cout << "String: " << str << " " << sizeof(str) << " bytes" << endl
    // << "Int: " << i << " " << sizeof(i) << " bytes" << endl
    // << "Float: " << f <<  " " << sizeof(f) << " bytes" << endl
    // << "Double: " << d << " " << sizeof(d) << " bytes" << endl
    // << "Auto: " << str1 << " " << sizeof(str1) << " bytes" << endl
    // << "Bool: " << test << " " << sizeof(test) << " bytes" << endl
    // << "Char: " << c << " " << sizeof(c) << " bytes" << endl
    // << "Long: " << l << " " << sizeof(l) << " bytes" << endl
    // << "Long long: " << ll << " " << sizeof(ll) << " bytes" << endl
    // << "Unsigned: " << ui << " " << sizeof(ui) <<" bytes" << endl;

    /*int num;
    cout << "1. четное/нечетное" << endl;
    cout << "Введите число: " << endl;
    cin >> num;

    if (num % 2 == 0) {
        cout << "Число чётное" << endl;
    }
    else {
        cout << "Число нечётное" << endl;
    }

    double num2;
    cout << "2. отрицательно или нет" << endl;
    cout << "Введите число: " << endl;
    cin >> num2;

    if (num2 > 0) {
        cout << "Число положительное" << endl;
    }
    else if (num2 < 0) {
        cout << "Число отрицательное" << endl;
    }
    else {
        cout << "Число равно нулю" << endl;
    }

    int score;
    cout << "3. баллы" << endl;
    cout << "Введите баллы (0-100): " << endl;
    cin >> score;

    if (score < 50) {
        cout << "Оценка: 2" << endl;
    }
    else if (score < 69) {
        cout << "Оценка: 3" << endl;
    }
    else if (score < 89) {
        cout << "Оценка: 4" << endl;
    }
    else if (score <= 100) {
        cout << "Оценка: 5" << endl;
    }
    else {
        cout << "Ошибка: баллы не могут превышать 100" << endl;
    }

    double num3;
    cout << "4. принадлежит ли от 25 до 50" << endl;
    cout << "Введите число: " << endl;
    cin >> num3;

    if (num3 >= 25 && num3 <= 50) {
        cout << "Принадлежит" << endl;
    }
    else {
        cout << "Не принадлежит" << endl;
    }

    double a, b, c;
    cout << "5. 3 стороны треугольника" << endl;
    cout << "Введите сторону a: ";
    cin >> a;
    cout << "Введите сторону b: ";
    cin >> b;
    cout << "Введите сторону c: " << endl;
    cin >> c;

    if (a + b > c && a + c > b && b + c > a) {
        cout << "Треугольник существует" << endl;
    }
    else {
        cout << "Треугольник не существует" << endl;
    }*/
    /*int n;
    cout << "введите номер задания 6 - калькулятор 7 - месяцы: " << "\n";
    cin >> n;
    switch (n) {
    case 1:
        cout << "задание 1" << "\n";
        int num;
        cout << "введите число: " << "\n";
        cin >> num;

        if (num % 2 == 0) {
            cout << "число четное" << "\n";
        }
        else {
            cout << "число нечетное" << "\n";
        }
        break;
    case 2:
        cout << "задание 2" << "\n";
        double num2;
        cout << "введите число: " << "\n";
        cin >> num2;

        if (num2 > 0) {
            cout << "число положительное" << "\n";
        }
        else if (num2 < 0) {
            cout << "число отрицательное" << "\n";
        }
        else {
            cout << "число равно нулю" << "\n";
        }
        break;
    case 3:
        cout << "задание 3" << "\n";
        int score;
        cout << "введите баллы: " << "\n";
        cin >> score;

        if (score < 50) {
            cout << "оценка 2" << "\n";
        }
        else if (score < 69) {
            cout << "оценка 3" << "\n";
        }
        else if (score < 89) {
            cout << "оценка 4" << "\n";
        }
        else if (score <= 100) {
            cout << "оценка 5" << "\n";
        }
        else {
            cout << "неверный балл" << "\n";
        }
        break;
    case 4:
        cout << "задание 4" << "\n";
        double num3;
        cout << "введите число: " << "\n";
        cin >> num3;

        if (num3 >= 25 && num3 <= 50) {
            cout << "число приналежит" << "\n";
        }
        else {
            cout << "не принадлежит" << "\n";
        }
    case 5:
        cout << "задание 4" << "\n";
        double a, b, c;
        cout << "введите сторону a: ";
        cin >> a;
        cout << "введите сторону b: ";
        cin >> b;
        cout << "введите сторону c: ";
        cin >> c;

        if (a + b > c && a + c > b && b + c > a) {
            cout << "треугольник существует" << "\n";
        }
        else {
            cout << "треугольник не существует" << "\n";
        }
        break;
    case 6:
        int t, x;
        cout << "введите число t и x: " << "\n";
        cin >> t >> x;

        char ca;
        cout << "введите операцию /*+-%: " << "\n";
        cin >> ca;
        switch (ca) {
        case ('+'):
            cout << t + x << "\n";
            break;
        case ('-'):
            cout << t - x << "\n";
            break;
        case ('/'):
            cout << t / x << "\n";
            break;
        case ('*'):
            cout << t * x << "\n";
            break;
        case ('%'):
            if (t != 0) {
                cout << t % x;
            }
            else {
                cout << "на ноль делить нельзя" << "\n";
            }
            break;
        default:
            cout << "че ты пишешь" << "\n";
            break;
        }
    case 7:
        cout << "введите номер месяца" << "\n";
        char mes;
        cin >> mes;
        switch (mes) {
        case 1: case 3: case 5: case 7: case 8: case 10: case 12:
            cout << "в этом месяце 31 день" << "\n";
            break;
        case 4: case 6: case 9: case 11:
            cout << "в этом месяце 30 дней" << "\n";
            break;
        case 2:
            cout << "28 дней" << "\n";
            break;
        default:
            cout << "че ты пишешь" << "\n";
            break;
        }
    }*/

    /*cout << "четное нечетное" << endl;
    int num;
    cout << "введите число: " << endl;
    cin >> num;
    cout << (num % 2 == 0 ? "четное" : "нечетное") << endl;

    cout << "введите 2 числа " << endl;
    int f, g;
    cin >> f >> g;
    cout << "минимальный: " << (f > g ? f : g);

    cout << "введите 2 числа" << endl;
    int h, j;
    cin >> h >> g;
    cout << (h > 0 ? g + h : h);

    double numer1, numer2;
    char op;
    cout << "первое число: ";
    cin >> numer1;
    cout << "введите операцию: ";
    cin >> op;
    cout << "введите второе: ";
    cin >> numer2;
    double result = (op == '+') ? (numer1 + numer2) :
                    (op == '-') ? (numer1 - numer2) :
                    (op == '*') ? (numer1 * numer2) :
                    (op == '/') ? (numer1 != 0 ? numer1 / numer2 : numeric_limits<double>::quiet_NaN()) :
                    numeric_limits<double>::quiet_NaN();
    cout << result << endl;*/


    /*int gg;
    cout << "введите год от рождения христа" << endl;
    cin >> gg;
    cout << (gg % 4 == 0 ? "високосный" : "не високосный") << endl;

    int nn;
    cout << "сумма попкупки: " << endl;
    cin >> nn;
    if (nn < 1000) {
        cout << nn - (nn * 5) / 100 << endl;
    }
    else if (nn < 5000){
        cout << nn - (nn * 10) / 100 << endl;
    }
    else if (nn < 100000) {
        cout << nn - (nn * 25) / 100 << endl;
    }

    int denhi, denhi2;
    int bal = 0;
    char w;
    while (true) {
        cout << "l - баланс, v - внос, b - вынос денег" << endl;
        cin >> w;
        switch (w) {
        case ('v'):
            cout << "введите сумму для внесения" << endl;
            cin >> denhi;
            bal += denhi;
            cout << "внесено " << denhi << " рублей" << endl;
            cout << "общий баланс " << bal << " денег" << endl;

            break;
        case ('b'):
            cout << "введите сколько денег забрать " << endl;
            cin >> denhi2;
            if (denhi2 <= bal) {
                bal -= denhi2;
                cout << "заберите " << denhi2 << " бабла" << endl;
                cout << "теперь ваш баланс: " << bal << endl;
            }
            else {
                cout << "недостаточно средств" << endl;
            }

            break;
        case ('l'):
            cout << "баланс: " << bal << " денег" << endl;

            break;

        default:
            cout << "неизвестная команда" << endl;
        }
    }*/
    /*int c;
    while (true) {
        int r;
        string A, B, F, H;
        float g2, g3, G1, G2, S, C, C2, C3, P, a, b, c2, Ptr, Str, pp;
        cout << "1 - круг, 2 - треугольник, 3 - квадрат, 4 - прямоугольник" << endl;
        cin >> c;
        switch (c) {
        case 1:
            cout << "введите радиус круга: ";
            cin >> r;
            cout << "что нужно найти(площадь, периметр): ";
            cin >> A;
            S = 3.14 * pow(r, 2);
            P = 2 * 3.14 * r;
            cout << (A == "площадь" ? to_string(S).substr(0, to_string(S).find('.') + 3) :
                A == "периметр" ? to_string(P).substr(0, to_string(S).find('.') + 3) :
                "неверный ввод") << endl;
            break;
        case 2:
            cout << "введите 3 стороны треугольника: ";
            cin >> a >> b >> c2;
            pp = (a * b * c2) / 2.0;
            Str = sqrt(pp * (pp - a) * (pp - b) * (pp - c2));
            Ptr = a + b + c2;
            cout << "что нужно найти(площадь, периметр): ";
            cin >> B;
            cout << (B == "площадь" ? to_string(Str).substr(0, to_string(Str).find('.') + 3) :
                B == "периметр" ? to_string(Ptr).substr(0, to_string(Ptr).find('.') + 3) :
                "неверный ввод") << endl;
            break;
        case 3:
            cout << "введите сторону квадрата: ";
            cin >> C;
            C2 = pow(C, 2);
            C3 = C * 4;
            cout << "что нужно найти(площадь, периметр): ";
            cin >> F;
            cout << (F == "площадь" ? to_string(C2).substr(0, to_string(C2).find('.') + 3) :
                F == "периметр" ? to_string(C3).substr(0, to_string(C3).find('.') + 3) :
                "неверный ввод") << endl;
            break;
        case 4:
            cout << "введите 2 стороны прямоугольника: ";
            cin >> G1 >> G2;
            g2 = G1 * G2;
            g3 = (G1 + G2) * 2;
            cout << "что нужно найти(площадь, периметр): "; 
            cin >> H;
            cout << (H == "площадь" ? to_string(g2).substr(0, to_string(g2).find('.') + 3) :
                H == "периметр" ? to_string(g3).substr(0, to_string(g3).find('.') + 3) :
                "неверный ввод") << endl;
            break;
        default: cout << "че ты пишешь" << endl;
        }
    }

    int a1, b1, c5;
    cout << "введите число: ";
    cin >> a1;
    cout << "введите диапазон от и до: ";
    cin >> b1 >> c5;
    cout << (c5 > a1 && c5 > b1 || c5 < a1 && c5 > b1 ? "число входит" : "число не входит");*/


    while (true) {
        int zad;
        cout << "Введите номер задания 1-3: ";
        cin >> zad;
        switch (zad) {
        case 1:
            // 1
            int num;
            cout << "введите число: ";
            cin >> num;
            if (num % 10 == 0) {
                cout << "число делится на 10 без остатка" << endl;
            }
            else {
                cout << "число не делится на 10 без остатка" << endl;
            }
            break;
        case 2:
            // 2
            int n;
            cout << "введите автора (1 - Пушкин, 2 - Хемингуэй, 3 - Шекспир, 4 - Кристи, 5 - Толстой): ";
            cin >> n;
            switch (n) {
            case 1:
                cout << "Александр Сергеевич Пушкин - Евгений Онегин" << endl;
                break;
            case 2:
                cout << "Эрнест Миллер Хемингуэй - Старик и море" << endl;
                break;
            case 3:
                cout << "Уильям Шекспир - Ромео и Джульетта" << endl;
                break;
            case 4:
                cout << "Агата Кристи - Убийство Роджера Экройда" << endl;
                break;
            case 5:
                cout << "Толстой Лев Николаевич - Война и мир" << endl;
                break;
            default:
                cout << "Неверный номер" << endl;
                break;
            }
            break;
        case 3:
            // 3.1
            int num2;
            cout << "введите число: ";
            cin >> num2;
            cout << (num2 % 10 == 0 ? "число делится на 10 без остатка" : "число не делится без остатка") << endl;

            // 3.2
            int n2;
            cout << "введите автора (1 - Пушкин, 2 - Хемингуэй, 3 - Шекспир, 4 - Кристи, 5 - Толстой): ";
            cin >> n2;
            string book = (n2 == 1) ? "Александр Сергеевич Пушкин - Евгений Онегин" :
                (n2 == 2) ? "Эрнест Миллер Хемингуэй - Старик и море" :
                (n2 == 3) ? "Уильям Шекспир - Ромео и Джульетта" :
                (n2 == 4) ? "Агата Кристи - Убийство Роджера Экройда" :
                (n2 == 5) ? "Толстой Лев Николаевич - Война и мир" :
                "Неверный номер";
            cout << book << endl;
            break;
        }
    }
    
}

