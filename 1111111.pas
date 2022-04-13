program myprogram;

var x, y: integer;
var a, b, c: integer;
var h1, m1, h2, m2: integer;

begin

	writeln('Задание 1');
	
	write('x = '); readln(x);
	write('y = '); readln(y);
	
	writeln('a) ', (abs(x) - abs(y)) / (1 + abs(x * y)));
	writeln('b) ', sqrt(x * x + y * y) / (x * y));
	writeln('c) ', (x - y) / (abs(x) - abs(y)));
	writeln('d) ', sqrt(abs(x) + abs(y)) / sqrt(x * x + 1));
	
	writeln('Задание 2');
	
	writeln('a)');
	
	write('длина ребра куба = '); readln(a);
	writeln('объем куба = ', power(a, 3));
	writeln('площадь боковой поверхности = ', 4 * (a * a));
	
	writeln('b)');
	
	write('длина окружности = '); readln(a);
	writeln('площадь круга = ', 3.1415926535 * (a / 2));
	
	writeln('c)');
	
	write('a = '); readln(a);
	write('b = '); readln(b);
	write('c = '); readln(c);
	
	writeln('высота треугольника = ', (2 * sqrt(((a + b + c) / 2) * (((a + b + c) / 2) - a) * (((a + b + c) / 2) - b) * (((a + b + c) / 2) - c))) / a);
	
	writeln('d)');
	
	write('a = '); readln(a);
	write('b = '); readln(b);
	
	writeln('периметр = ', 2 * (a + b));
	writeln('площадь = ', a * b);
	writeln('длина диагонали = ', sqrt(a * a + b * b));
	
	writeln('Задание 3');
	
	write('a = '); readln(a);
	write('x = '); readln(x);
	writeln('a) пренадлежит х отрезку [-a, a]? ', abs(x) <= abs(a));
	
	write('a = '); readln(a);
	write('b = '); readln(b);
	write('x = '); readln(x);
	writeln('b) x не пренадлежит интервалу (a, b)? ', (x < a) or (x > b));
	
	write('x = '); readln(x);
	writeln('c) является четным? ', x mod 2 = 0); // mod возвращает остаток от деления и сравниваем с 0 для false/true
	// 3 := 13 mod 5 пример
	// 1 := 9 mod 2 пример
	
	write('a = '); readln(a);
	write('b = '); readln(b);
	write('c = '); readln(c);
	write('x = '); readln(x);
	writeln('d) x является корнем уравнения? ', a * (x * x) + b * x + c = 0);
	
	writeln('дополнительные задания');
	
	writeln('Задание 1');
	
	write('часы начало = '); readln(h1);
	write('минуты начало = '); readln(m1);
	
	write('часы конец = '); readln(h2);
	write('минуты конец = '); readln(m2);
	
	a := (((h2 * 60) + m2) - ((h1 * 60) + m1)) div 60; // часы
	//b := (((h2 * 60) + m2) - ((h1 * 60) + m1)) - (a * 60); // минуты
	b := (((h2 * 60) + m2) - ((h1 * 60) + m1)) mod 60; // минуты
	writeln('потраченное время ', a, ':', b);
	
	// div возвращает целую часть числа от деления
	// 5 := 16 div 3 пример
	// 1 := 8 div 5 пример
	
	writeln('Задание 2');
	
	write('a = '); readln(a);
	a := a * a; // 2 степень 1 операция
	a := a * a; // 4 степень 2 операция
	writeln('a) ', a);
	
	write('a = '); readln(a);
	a := a * a; // 2 степень 1 операция
	b := a * a; // 4 степень 2 операция
	a := a * b; // 6 степень 3 операция
	writeln('б) ', a);
	
	write('a = '); readln(a);
	b := a * a; // 2 степень 1 операция
	c := b * b; // 4 степень 2 операция
	c := c * b; // 6 степень 3 операция
	a := c * a; // 7 степень 4 операция
	writeln('в) ', a);
	
	write('a = '); readln(a);
	a := a * a; // 2 степень 1 операция
	a := a * a; // 4 степень 2 операция
	a := a * a; // 8 степень 3 операция
	writeln('г) ', a);
	
	// пример разбора a^7
	// a^7 = a * a * a * a * a * a * a
	// a^7 = (a * a) * (a * a) * (a * a) * a
	// b = (a * a)
	// a^7 = (b * b) * b * a
	// c = b * b
	// a^7 = c * b * a

end.