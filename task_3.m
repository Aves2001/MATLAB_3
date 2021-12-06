try
    clc
    fprintf("-----------------------------------------------------------------------\n");
    disp("3. Розв’язати системи рівнянь методом Жордана-Гауса:");
    disp("Завдання А:");
    fprintf("     3x-y=4 \n     2x-2y+4z=8\n     5x-6y+2z=13\n\n");
    A1 = [3 -1 0; 2 -2 4; 5 -6 2];
    B1 = [4; 8; 13];
    gauss(A1, B1);
    
    fprintf("\n-----------------------------------------------------------------------\n");
    disp("Завдання Б:");
    fprintf("     x+3y-4z-5t=-5\n     x-2y+3z+4t=6\n     2x+y-z-t=1\n     3x-y+2z+3t=7\n\n");
    A2 = [1 3 -4 -5; 1 -2 3 4; 2 1 -1 -1; 3 -1 2 3];
    B2 = [-5; 6; 1; 7];
    gauss(A2, B2);
catch ex
    disp('Помилка:');
    disp(ex.message);
end

function gauss(A, B)
    x = ['x','y','z','t'];
    siz = size(B);
    siz = siz(:,1);
    AB = [A B];
    disp("Розришена матриця:");
    disp(AB);
    disp("Відповідь:");
    if det(A) ~= 0
        rez = A\B;
        for i = 1:1:siz      
            res_i = rez(i);
            fprintf("     %s = %g\n", x(i), res_i);
        end
    else
        rez = rref(AB);
        for i = 1:1:siz
            for j = 1:1:siz+1
                res_i = rez(i,j);
                if res_i == 0
                    continue
                end
                
                if res_i ~= 1
                    num = sprintf("(%g)", res_i);
                else
                    num = "";
                    fprintf("     ");
                end
                
                if j < siz+1
                    fprintf("%s + %s", x(j), num);
                else
                    fprintf(" = %s\n", num);
                end
            end
        end
    end
end