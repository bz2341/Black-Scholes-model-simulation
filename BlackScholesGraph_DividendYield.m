clear all
dx=0.1;
maxX=20;
X=dx:dx:maxX;
Strike=12;
Rate=0.01;
Time=1;
Volatility=0.3;
q=0.021;
Y=max(X-Strike,0);
i=0;
for X=dx:dx:maxX;
    i=i+1;
    Z(i)=BlackScholesStocks_DividendYield('c',X,Strike,Rate,Volatility,Time,q);
end
X=dx:dx:maxX;
plot(X,Z,X,Y);

%有了dividend以后的期权价格图