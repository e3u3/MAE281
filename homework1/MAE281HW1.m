%%automatically compute the eigenvalues of different systems.
clear all;
clc;
syms x1 x2
A='x2=0';
B='-x2-2*(x1-x2)+0.5=0';
x1_dot='x2';
x2_dot='-x2-2*(x1-x2)+0.5';
[solution_x1,solution_x2]=solve(A,B);
disp('All the equilibrium points are:');
disp(solution_x1');
disp(solution_x2');
number_equ=size(solution_x1);
number_equ=number_equ(1,1);
A_11=diff(x1_dot,x1);
A_12=diff(x1_dot,x2);
A_21=diff(x2_dot,x1);
A_22=diff(x2_dot,x2);
A_symbol=[A_11,A_12;A_21,A_22];
disp('The matrix A is:')
disp(A_symbol)
for i=1:number_equ
    A_11_exp=subs(A_11,[x1,x2],[solution_x1(i,1),solution_x2(i,1)]);
    A_12_exp=subs(A_12,[x1,x2],[solution_x1(i,1),solution_x2(i,1)]);
    A_21_exp=subs(A_21,[x1,x2],[solution_x1(i,1),solution_x2(i,1)]);
    A_22_exp=subs(A_22,[x1,x2],[solution_x1(i,1),solution_x2(i,1)]);
    disp('The matrix A is:')
    A_exp=[A_11_exp,A_12_exp;A_21_exp,A_22_exp];
    disp(A_exp);
    disp('The eigenvalues are:')
    disp(eig(A_exp));
end


