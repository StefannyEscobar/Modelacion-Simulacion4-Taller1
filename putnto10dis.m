
%% Distancia de mahal
x=[data(:,:) ];
d = mahal(x,x);
prc=prctile(d,90)
figure
i=find(d>=prc)
plot(x(:,1),x(:,5),'o')%proyeccion sobre los 2 primeros planos coordenados
hold on
plot(x(i,1),x(i,2),'or')
j=corr(x,'type', 'Spearman');
k=corr(x(i,:),'type', 'Spearman'); %Sun el 10%
C=cov(data5);
[vector valor]=eig(C)

l=j-k
%% Euclidea

D = data5;
nf=length(data5(:,1))
for j=1: nf;
    dista(j)= norm(DC(j,:),1);
end
dist = dista'
pc=prctile(dist,90);
I=find(dist>pc);
plot(D(:,1), D(:,2),'o');
hold 
plot(D(I,1),D(I,2),'or')
a=corr(D,'type', 'Spearman')
b=corr(D(I,:),'type', 'Spearman')
C=cov(data5);
[vector valor]=eig(C);
h=a-b
%% Parte b
%% Mayor correlación
data=data5(:,[1 2 3 4 5])

corr(X,'type','Spearman')
%empiricas de portfolios
X = data5(:,5) ;
Y = data5(:,2);
for i=1:length(X);
 acum1(i) = sum(X(i)<=X)/length(X);
end
for i=1:length(Y);
 acum2(i) = sum(Y(i)<=Y)/length(Y);
end
plot(acum1,acum2,'o')
%% Mayor correlación proyectadas
figure
[vector valor]=eig(C)
Pr1=data*vector(:,end)
Pr2=data*vector(:,end-3)
X = Pr1 ;
Y = Pr2;
for i=1:length(X);
 acum1(i) = sum(X(i)<=X)/length(X);
end
for i=1:length(Y);
 acum2(i) = sum(Y(i)<=Y)/length(Y);
end
plot(acum1,acum2,'o')
corr(Pr1, Pr2,'type','Spearman')
corr(X, Y,'type','Spearman')