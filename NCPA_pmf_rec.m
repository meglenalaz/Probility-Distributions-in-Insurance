function [prob]=NCPA_pmf_rec(m,l1,l2,rho,probvec)
    if (m==0)
        prob=exp(-l1-l2);
    else if (m==1)
            prob=zeros(1,2);
            prob(1)=exp(-l1-l2);
            prob(2)=(l1+l2*(1-rho))*prob(1);
        else if (m==2)
                prob=zeros(1,3);
                prob(1)=exp(-l1-l2);
                prob(2)=(l1+l2*(1-rho))*prob(1);
                prob(3)=(rho+(l1+l2*(1-rho))/2)*prob(2)-l1*rho*prob(1);
            else prob=zeros(1,m+1);
                prob(1:m)=probvec;
                prob(m+1)=(2*rho+(l1+l2*(1-rho)-2*rho)/m)*probvec(m)...
                     -rho*(rho+2*(l1-rho)/m)*probvec(m-1)...
                     +(l1*rho*rho/m)*probvec(m-2);
            end
        end
    end
end