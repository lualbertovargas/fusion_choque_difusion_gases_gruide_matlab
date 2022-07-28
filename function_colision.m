clc
clear

fprintf(2,'Universidad de las Fuerzas Armadas ESPE ');
fprintf('\nTransferencia de Masa');

fprintf('\n\nElija las opciones');
fprintf('\n\t1. Encontrar (kT/E(AB))');
fprintf('\n\t2. Encontrar f(kT/E(AB))');
indice = input('\nEnter a number: ');

switch indice
    case 1
        clc
        fprintf(2,'\t\t\t\tEncontrar el valor de (kT/E(AB)) ')
        syms x
        y = input('\nIngrese el valor de f(kT/E(AB)): ');
        fprintf(2,'El valor de (kT/E(AB)) es:  ')
        result2=solve(((3.2995058+(2.1450892*x))/(1+(6.6586169*x)+(0.01425681*x^2)))==y,x);
         
        result2;
        format short
        res1=result2(1);
        res2=result2(2);

        x1=double(res1)
        x2=double(res2)
        
        
    case 2

        clc
        fprintf(2,'\t\t\t\tEncontrar f(kT/E(AB)) ')
        x = input('\nIngrese el valor de (kT/E(AB)): ');
        fprintf(2,'El valor de f(kT/E(AB)) es: ')
        result=((3.2995058+(2.1450892*x))/(1+(6.6586169*x)+(0.01425681*x^2)))

        
    otherwise
        disp('Lo sentimos no existe ese valor en el menú, por favor vuelve a intentar')
end