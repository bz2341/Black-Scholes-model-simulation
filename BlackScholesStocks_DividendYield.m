function PriceD=BlackScholesStocks_DividendYield(callput,S,K,r,sigma,T,q)
d1=(log(S/K)+(r-q+0.5*sigma^2)*T)/(sigma*sqrt(T));
d2=d1-sigma*sqrt(T);

if callput=='c'
    N1=normcdf(d1);
    N2=normcdf(d2);
    PriceD=S*exp(-q*T)*N1-K*exp(-r*T)*N2;
else
    if callput=='p'
        N1=normcdf(-d1);
        N2=normcdf(-d2);
        PriceD=K*exp(-r*T)*N2-S*exp(-q*T)*N1;
    end
end
end

%这是有了dividend以后的BS公式