program myprogram;

var x, f: real;
var a, b, c, d, e: integer;

begin
  
  writeln('Задание 1');
  
  writeln('a)');
  write('x = '); readln(x);
  if (x < 0) then f := (x * x) + 3
  else if (x >= 0) and (x <= 5) then f := 6 * sqrt(x)
  else if (x > 5) then f := (-x + 9);
  writeln('f = ', f);
  
  writeln('b)');
  write('x = '); readln(x);
  if (x < -2) then f := 3 * abs(x)
  else if (x >= -2) and (x <= 2) then f := 9 * x
  else if (x > 2) then f := sin(x);
  writeln('f = ', f);
  
  writeln('c)');
  write('x = '); readln(x);
  if (x < 0) then f := power(sin(x), 2) - power(cos(x), 2)
  else if (x >= 0) and (x <= 2) then f := ln(3 * x + 2)
  else if (x > 2) then f := (x * x) - power(x, 3);
  writeln('f = ', f);
  
  writeln('d)');
  write('x = '); readln(x);
  if (x < -2) then f := abs(2 * x - 2)
  else if (x >= -2) and (x <= 5) then f := sin(x)
  else if (x > 5) then f := power(x, 4);
  writeln('f = ', f);
  
  writeln('Задание 2');
  
  writeln('a)');
  writeln('куда пойдет герой?');
  writeln('налево (-1)');
  writeln('прямо (0)');
  writeln('направо (1)');
  write('a = '); readln(a);
  if (a = -1) then writeln('герой пошел налево')
  else if (a = 0) then writeln('герой пошел прямо')
  else if (a = 1) then writeln('герой пошел направо')
  else writeln('шо то ты не туда пошел');
  
  writeln('b)');
  writeln('какие числа я загадал?');
  write('a = '); readln(a);
  write('b = '); readln(b);
  c := random(10); d := random(10);
  if ((c = a) and (d = b)) or ((c = b) and (d = a)) then writeln('угадал')
  else writeln('не угадал');
  
  writeln('с)');
  write('сколько времени продержится "посудина"? = '); readln(x);
  write('расстояние 1 судна до "посудины" = '); readln(a);
  write('расстояние 2 судна до "посудины" = '); readln(b);
  write('расстояние 3 судна до "посудины" = '); readln(c);
  if (((a / 40) < x) and ((b / 40) < x)) or (((c / 40) < x) and ((b / 40) < x)) or (((a / 40) < x) and ((c / 40) < x))
  then writeln('успеют')
  else writeln('не успеют');
  
  writeln('d)');
  write('1 легковая или грузовик (1 или 2) '); readln(a);
  write('2 легковая или грузовик (1 или 2) '); readln(b);
  write('3 легковая или грузовик (1 или 2) '); readln(c);
  if (a + b + c) > 4 then writeln('рухнет')
  else writeln('выдержит');
  
  writeln('Задание 3');
  
  writeln('a)');
  write('номер дня недели '); readln(a);
  case a of
    1..5: writeln('рабочий');
    6,7: writeln('выходной');
    else writeln('нет такого дня недели');
  end;
  
  writeln('b)');
  write('номер месяца '); readln(a);
  case a of
    1,2,12: writeln('зима');
    3..5: writeln('весна');
    6..8: writeln('лето');
    9..11: writeln('осень');
    else writeln('нет такого месяца');
  end;
  
  writeln('с)');
  write('номер месяца '); readln(a);
  case a of
    1,3,5,7,8,10,12: writeln('31');
    4,6,9,11: writeln('30');
    2: writeln('28');
    else writeln('нет такого месяца');
  end;
  
  writeln('d)'); // задача мне не понятна
  
  writeln('Дополнительные задания');
  
  writeln('Задание 1');
  write('a = '); readln(a);
  write('b = '); readln(b);
  write('c = '); readln(c);
  write('d = '); readln(d);
  write('e = '); readln(e);
  if ((d > a) and (e > b)) or ((d > b) and (e > a)) or ((d > a) and (e > c)) or ((d > c) and (e > a)) or ((d > c) and (e > b)) or ((d > b) and (e > c))
  then writeln('просунуть')
  else writeln('не просунуть');
  
  writeln('Задание 2');
  write('радиус шара = '); readln(a);
  write('сторона ромба = '); readln(b);
  write('угол ромба = '); readln(c);
  if (((b * sin(c)) / 2) >= a) then writeln('пройдет')
  else writeln('не пройдет');
  
end.