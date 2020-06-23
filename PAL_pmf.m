function [res]=PAL_pmf(mMax,rho,theta)
    if (rho<0) || (rho>1) || (theta<0) || (theta>1) || (mod(mMax,1)~=0) || (mMax<0)
        res=0;
    else
        res=zeros(1,mMax+1);
        res(1)=PAL_pmf_rec(0,rho,theta,0);
        for m=1:mMax
           res(1:(m+1))=PAL_pmf_rec(m,rho,theta,res(1:m));
        end
    end
end