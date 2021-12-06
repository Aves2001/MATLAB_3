try
    clc
    fprintf("-----------------------------------------------------------------------\n");
    disp("2. Матричним методом розв’язати системи:");
    disp("Завдання А:");
    fprintf("     7x-6y=-17 \n     6x+5y=26\n\n");
    A1 = [7 -6; 6 5];
    B1 = [-17; 26];
    Inverse_matrix_method(A1, B1);
    
    fprintf("\n-----------------------------------------------------------------------\n");
    disp("Завдання Б:");
    fprintf("     x+y+2z=2\n     -3x-2y-2z=-1\n     -3x-3y-5z=-5\n\n");
    A2 = [1 1 2; -3 -2 -2; -3 -3 -5];
    B2 = [2; -1; -5];
    Inverse_matrix_method(A2, B2);
catch ex
    disp('Помилка:');
    disp(ex.message);
end

function Inverse_matrix_method(A, B)
    x = ['x','y','z'];
    siz = size(B);
    siz = siz(:,1);
    disp("Розришена матриця:");
    disp([A,B]);
    disp("Відповідь:");
    rez = inv(A)*B;
    for i = 1:1:siz      
        res_i = rez(i);
        fprintf("     %s = %g\n", x(i), res_i);
    end
end