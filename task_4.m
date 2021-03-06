try
    clc
    fprintf("-----------------------------------------------------------------------\n");
    disp("4. Розв’язати систему рівнянь з допомогою функції linsolve():");
    disp("Завдання А:");
    fprintf("     4x+5y+2z+t+5k=0\n     3x+4y+z+2t+3k=0\n     7x+10y+z+6t+5k=0\n     5x+7y+z+3t+4k=0\n\n");
    A1 = [4 5 2 1;
          3 4  1 2;
          7 10 1 6;
          5 7  1 3];
    B1 = [5;3;5;4];
    disp("Розширена матриця:");
    disp([A1 B1]);
    disp("Відповідь:");
    [res1,res2] = linsolve(A1, B1);
    disp(res1);

    fprintf("\n-----------------------------------------------------------------------\n");
    disp("Завдання Б:");
    fprintf("     2x+2y+4z-t=-1\n     3x-y-3z-4t=-1\n     3x-2y-z+2t=7\n     2x+y+2z+2t=8\n\n");
    A2 = [2  2  4 -1;
          3 -1 -3 -4;
          3 -2 -1  2;
          2  1  2  2];
    B2 = [-1;-1;7;8];
    disp("Розширена матриця:");
    disp([A2 B2]);
    disp("Відповідь:");
    [res3, res4] = linsolve(A2, B2);
    disp(res3);
catch ex
    disp('Помилка:');
    disp(ex.message);
end