clear all
M=1000;
N=250;
X0=0;
T=1;
dt=T/N;
Sqrtdt=sqrt(dt);
X(1:M,1)=X0;
for j=1:M 
    for i=2:N+1
        X(j,i)=X(j,i-1)+Sqrtdt*randn;
    end
end
t=0:dt:T;
plot(t,X(:,:));
