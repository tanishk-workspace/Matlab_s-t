mssg="enter the degree of polynomial";
mssg1="enter corresponding cofficient values";
Degree=int8(input(mssg))
for i=1:Degree+1
    Coff_=input(mssg1);
    X(1,i)=Coff_
end
K=roots(X)