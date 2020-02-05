function [res]=NCPA_pmf(mMax,l1,l2,rho)
    if (l1<=0) || (l2<=0) || (rho<0) || (rho>1) || (mod(mMax,1)~=0) || (mMax<0)
        res=0;
    else
        res=zeros(1,mMax+1);
        res(1)=NCPA_pmf_rec(0,l1,l2,rho,0);
        for m=1:mMax
           res(1:(m+1))=NCPA_pmf_rec(m,l1,l2,rho,res(1:m));
        end
    end
end