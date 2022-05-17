FMINSEARCH - usa o m´etodo de Nelder-Mead.

[x,fval,exitflag,output] = fminsearch(fun,x0,options,. . .)

O comando fminsearch tem como argumentos de entrada:
fun - e a funcao objetivo a minimizar
x0 - e o ponto inicial
options - opcoes para o controlo do processo de otimizacao.

O comando fminsearch tem como argumentos de sa´ıda:
x - é a solução otima do problema.
fval - e o valor da funcao objetivo em x.

exitflag - descreve valores de saıda do fminsearch
1 indica que a funcao convergiu para a solucao x
0 indica que o numero de iteracoes excedeu o MaxIter ou o MaxFunEvals.
−1 indica que a funcao nao convergiu para uma solucao

---------------------------------------------X------------------------------------------------------

Determine o m´ınimo da seguinte funcao nao diferenciavel
f(x1, x2) = max(|x1|, |x2 − 1|)
atrav´es do m´etodo do simplex de Nelder-Mead (usando o comando fminsearch). 
Inicie o processo com x(1) = (1, 1)T.

(a) Sem usar qualquer op¸c˜ao.

[x,fval,exitflag,output]=fminsearch(@NM1,[1,1])
function [ f ] = NM1( x )
f=max(abs(x(1)),abs(x(2)-1));
end

(b) Visualizando os resultados obtidos em cada itera¸c˜ao.

op=optimset(’Display’,’iter’);
[x,fval,exitflag,output]=fminsearch(@NM1,[1,1],op)
function [ f ] = NM1( x )
f=max(abs(x(1)),abs(x(2)-1));
end

(c) Representando graficamente os valores da fun¸c˜ao objetivo ao longo das itera¸c˜oes.

op=optimset(’PlotFcns’,@optimplotfval);
[x,fval,exitflag,output]=fminsearch(@NM1,[1,1],op)
function [ f ] = NM1( x )
f=max(abs(x(1)),abs(x(2)-1));
end

(d) Visualizando os resultados obtidos em cada itera¸c˜ao e a representa¸c˜ao gr´afica dos valores da fun¸c˜ao
objetivo ao longo das itera¸c˜oes.

op=optimset(’Display’,’iter’,’PlotFcns’,@optimplotfval);
[x,fval,exitflag,output]=fminsearch(@NM1,[1,1],op)
function [ f ] = NM1( x )
f=max(abs(x(1)),abs(x(2)-1));
end

(e) Usando como tolerˆancia de paragem T olX = 10−10
.

op=optimset(’TolX’,1e-10);
[x,fval,exitflag,output]=fminsearch(@NM1,[1,1],op)
function [ f ] = NM1( x )
f=max(abs(x(1)),abs(x(2)-1));
end

(f) Usando como tolerˆancia de paragem T olF un = 10−12
.

op=optimset(’TolFun’,1e-12);
[x,fval,exitflag,output]=fminsearch(@NM1,[1,1],op)
function [ f ] = NM1( x )
f=max(abs(x(1)),abs(x(2)-1));
end

(g) Usando como tolerˆancia de paragem 20 itera¸c˜oes.

op=optimset(’MaxIter’,20);
[x,fval,exitflag,output]=fminsearch(@NM1,[1,1],op)
function [ f ] = NM1( x )
f=max(abs(x(1)),abs(x(2)-1));
end

(h) Usando como tolerˆancias de paragem T olX = 10−4
, T olF un = 10−2
e 50 como m´aximo de itera¸c˜oes.

op=optimset(’TolX’,1e-3,’TolFun’,1e-2,’MaxIter’,50);
[x,fval,exitflag,output]=fminsearch(@NM1,[1,1],op)
function [ f ] = NM1( x )
f=max(abs(x(1)),abs(x(2)-1));
end

---------------------------------------------X------------------------------------------------------
2. Calcule o m´aximo da seguinte fun¸c˜ao n˜ao diferenci´avel
f(x1, x2) = −|x1x2| − x2^2
usando o comando fminsearch. Inicie o processo com x(1) = (−1, 1)T
.
(a) Sem usar qualquer op¸c˜ao.

[x,fval,exitflag,output]=fminsearch(@NM1,[-1 1])
function [ f ] = NM1( x )
f=abs(x(1)*x(2))+x(2)^2;
end

(b) Usando como tolerˆancia de paragem T olX = 10−8
.

op=optimset(’TolX’,1e-8);
[x,fval,exitflag,output]=fminsearch(@NM1,[-1 1],op)
function [ f ] = NM1( x )
f=abs(x(1)*x(2))+x(2)^2;
end

(c) Usando como tolerˆancia de paragem T olF un = 10−6
.

op=optimset(’TolFun’,1e-6);
[x,fval,exitflag,output]=fminsearch(@NM1,[-1 1],op)
function [ f ] = NM1( x )
f=abs(x(1)*x(2))+x(2)^2;
end

(d) Usando como tolerˆancias de paragem o m´aximo de itera¸c˜oes de 50.

op=optimset(’Maxiter’,50);
[x,fval,exitflag,output]=fminsearch(@NM1,[-1 1],op)
function [ f ] = NM1( x )
f=abs(x(1)*x(2))+x(2)^2;
end

---------------------------------------------X------------------------------------------------------

3. Determine o m´ınimo da seguinte fun¸c˜ao n˜ao diferenci´avel
f(x1, x2) = max( (x1 − 1)2, x2^2 + x1 , 4(x2 − 1)2) atrav´es do comando fminsearch. Inicie o processo com x(1) = (1, 0)T.

(a) Sem usar qualquer op¸c˜ao.

[x,fval,exitflag,output]=fminsearch(@NM1,[1, 0])
function [ f ] = NM1( x )
u=[(x(1)-1)^2 , x(2)^2+x(1) , 4*(x(2)-1)^2];
f=max(u);
end

(b) Use como tolerˆancias de paragem T olX = 10−6
, T olF un = 10−8
.

op=optimset(’TolX’,1e-6,’TolFun’,1e-8);
[x,fval,exitflag,output]=fminsearch(@NM1,[1, 0],op)
function [ f ] = NM1( x )
u=[(x(1)-1)^2 , x(2)^2+x(1) , 4*(x(2)-1)^2];
f=max(u);
end

(c) Use como tolerˆancias de paragem T olX = 10−6
, T olF un = 10−8
e 100 como m´aximo de itera¸c˜oes.
op=optimset(’TolX’,1e-6,’TolFun’,1e-8,’maxiter’,100);
[x,fval,exitflag,output]=fminsearch(@NM1,[1, 0],op)
function [ f ] = NM1( x )
u=[(x(1)-1)^2 , x(2)^2+x(1) , 4*(x(2)-1)^2];
f=max(u);
end