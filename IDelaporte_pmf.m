function [res]=IDelaporte_pmf(mMax,a,p,rho,r)
    if (a<=0) || (p<0) || (p>1) || (rho<0) || (rho>1) || (r<=0) ...
              || (mod(mMax,1)~=0) || (mMax<0)
        res=0;
    else
        res=zeros(1,mMax+1);
        res(1)=IDelaporte_pmf_rec(0,a,p,rho,r,0);
        for m=1:mMax
           res(1:(m+1))=IDelaporte_pmf_rec(m,a,p,rho,r,res(1:m));
        end
    end
end