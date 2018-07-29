clear all
M=5000;
N=250;
X0=70;
Mu=0.12;
sigma=0.22;
T=1;
dt=T/N;
Sqrtdt=sqrt(dt);
X(1:M,1)=X0;
for j=1:M 
    for i=2:N+1 
        X(j,i)=X(j,i-1)+Mu*X(j,i-1)*dt+sigma*X(j,i-1)*randn*Sqrtdt;
    end
end
t=0:dt:T;
plot(t,X(:,:));

%调整为几何布朗运动以后的图