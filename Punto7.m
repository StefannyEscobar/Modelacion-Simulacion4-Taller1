% Covarianza
% Número de datos a generar
N=100
% Matriz de correlación (Datos de entrada)
M=[1 0.7 0.7 0.5
    0.7 1 0.95 0.3
    0.7 0.95 1 0.3
    0.5 0.3 0.3 1]
% Descomposición de Cholesky
L=chol(M)
% Número de variables
Nvar=length(M)
% Calculamos la traspuesta de L (L')
L'
% Verificamos que L'*L = M
L'*L
mu=[1 1 1 1] % Todavía no se muy bien que es este parámetro.
% Generamos la matriz MM con aleatorios distr. normal, basados en la matriz
% de correlacion M, con N observaciones
MM=mvnrnd(mu,M,N)
% Y la multiplicamos por la traspuesta de L (Cholesky)
r=L'*MM'
% Traspuesa de r
r=r'
% Y su matriz de correlación
corr(r)
% Podemos ver que los datos siguen la misma correlación que la matriz de
% Covarianzas original.
% qed