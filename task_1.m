try
    clc
    fprintf("-----------------------------------------------------------------------\n");
    disp("1. Методом Крамера розв’язати СЛАР:");
    disp("Завдання А:");

    fprintf("     7x-6y=-8 \n     2x+3y=26\n\n");
    A1 = [7 -6; 2 3];
    B1 = [-8; 26];
    cramer(A1,B1);
    
    fprintf("\n-----------------------------------------------------------------------\n");
    disp("Завдання Б:");
    fprintf("     x+7y+2z=14\n     -3x-20y-7z=-42\n     -3x-21y-5z=-40\n\n");
    A2 = [1 7 2; -3 -20 -7; -3 -21 -5];
    B2 = [14; -42; -40];
    cramer(A2,B2);
catch ex
    disp('Помилка:');
    disp(ex.message);
end

function cramer(A, B)
    if det(A) ~= 0
        x = ['x','y','z'];
        siz = size(B);
        siz = siz(:,1);
        disp("Розширена матриця:");
        disp([A,B]);
        disp("Відповідь:");
        for i = 1:1:siz      
            A_i = A;
            A_i(:,i) = B;
            d = det(A);
            d_i = det(A_i);
            res = d_i ./ d;
            fprintf("     %s = %g\n", x(i), res);
        end
    else
        disp("Визначник дорівнює нулю");
    end
end