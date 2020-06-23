function [res]=OrderK_pmf(mMax,lambda,rho,k)
    if (lambda<=0) || (rho<0) || (rho>1) || (mod(k,1)~=0) || (k<3)...
            || (mod(mMax,1)~=0) || (mMax<0)
        res=0;
    else
        res=zeros(1,mMax+1);
        res(1)=OrderK_pmf_rec(0,lambda,rho,k,0);
        for m=1:mMax
           res(1:(m+1))=OrderK_pmf_rec(m,lambda,rho,k,res(1:m));
        end
    end
end