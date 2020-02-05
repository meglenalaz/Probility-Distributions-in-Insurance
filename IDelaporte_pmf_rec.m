function [prob]=IDelaporte_pmf_rec(m,a,p,rho,r,probvec)
    if (m==0)
        prob=(p^r)*exp(-a);
    else if (m==1)
            prob=zeros(1,2);
            prob(1)=(p^r)*exp(-a);
            prob(2)=(1-rho)*(r*(1-p)+a)*prob(1);
        else if (m==2)
                prob=zeros(1,3);
                prob(1)=(p^r)*exp(-a);
                prob(2)=(1-rho)*(r*(1-p)+a)*prob(1);
                prob(3)=(1+2*rho-p*(1-rho)+((1-rho)*(r*(1-p)+a)-2*rho-1+p*(1-rho))/2)*prob(2)...
                     -((1-rho)/2)*(r*(1-p)*rho+a*(1-p*(1-rho)))*prob(1);
            else prob=zeros(1,m+1);
                prob(1:m)=probvec;
                prob(m+1)=(1+2*rho-p*(1-rho)+((1-rho)*(r*(1-p)+a)-2*rho-1+p*(1-rho))/m)*probvec(m)...
                     -( ((m-2)/m)*rho*(rho+2*(1-p*(1-rho))) + ((1-rho)*(r*(1-p)*rho+a*(1-p*(1-rho))))/m )*probvec(m-1)...
                     +rho*rho*(1-3/m)*(1-p*(1-rho))*probvec(m-2);
            end
        end
    end
end