Mat_A=rand(3,3,"single");
Mat_I=[1 0 0;0 1 0;0 0 1];
Mat_B=rand(3,3,"single");

Mat_Sum=Mat_A+Mat_B;
Mat_Product=Mat_A.*Mat_B;
Mat_Diff=Mat_A-Mat_B;
Mat_Div=Mat_A./Mat_B;
invr=randi(5);

for m=1
    i=randi(3);
    k=randi(3);
    true_Sum=Mat_A(i,k)+Mat_B(i,k);
    true_Product=Mat_A(i,k)*Mat_B(i,k);
    true_Diff=Mat_A(i,k)-Mat_B(i,k);
    true_Div=Mat_A(i,k)/Mat_B(i,k);
    if true_Sum==Mat_Sum(i,k)
        Mat_Sum=true
    end
    if true_Product==Mat_Product(i,k)
        Mat_Product=true
    end
    if true_Diff==Mat_Diff(i,k)
        Mat_Diff=true
    end
    if true_Div==Mat_Div(i,k)
        Mat_Div=true
    end
end
l1=int8(Mat_A*inv(Mat_A))
l2=int8(Mat_B*inv(Mat_B))
if l1==Mat_I | l2==Mat_I
    invr=true;
end

