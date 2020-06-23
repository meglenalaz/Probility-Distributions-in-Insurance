function [prob]=PAL_pmf_rec(m,rho,theta,probvec)
    if (m==0)
        prob=theta*theta*(2-theta);
    else if (m==1)
            prob=zeros(1,2);
            prob(1)=theta*theta*(2-theta);
            prob(2)=(1-rho)*(1-theta)*(3-2*theta)*prob(1)/(2-theta);
        else if (m==2)
                prob=zeros(1,3);
                prob(1)=theta*theta*(2-theta);
                prob(2)=(1-rho)*(1-theta)*(3-2*theta)*prob(1)/(2-theta);
                prob(3)=( (3*(2-theta)*(1-theta*(1-rho)))*prob(2)...
                        - ((1-rho)*(1-theta)*(1-theta+(2-theta)*rho))*prob(1) )/(4-2*theta);
                else prob=zeros(1,m+1);
                    prob(1:m)=probvec;
                    prob(m+1)=( ( (3-4*theta+(3+theta)*rho+theta*theta*(1-rho))*(m-1)+ (1-rho)*(1-theta)*(3-2*theta) )*probvec(m)...
                         -( ( (1-theta)^2 + 4*rho*(1-theta) - (theta*theta-3*theta-1)*rho^2 )*(m-2) + (1-rho)*(1-theta)*(1-theta+(2-theta)*rho) )*probvec(m-1)...
                         +(rho*(1-2*theta)+rho*rho*(1-theta*theta)+rho*theta*(theta+rho*rho))*(m-3)*probvec(m-2) )/((2-theta)*m);
            end
        end
    end
end