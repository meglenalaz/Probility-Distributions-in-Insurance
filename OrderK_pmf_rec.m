function [prob]=OrderK_pmf_rec(m,lambda,rho,k,probvec)
    if (m==0)
        prob=exp(-lambda);
    else if (m==1)
            prob=zeros(1,2);
            prob(1)=exp(-lambda);
            prob(2)=lambda*(1-rho)*prob(1);
        else if (m<k)
               prob=zeros(1,m+1);
               prob(1:m)=probvec;
               prob(m+1)=(2*rho+(lambda*(1-rho)-2*rho)/m)*probvec(m)...
                          -(1-2/m)*rho*rho*probvec(m-1);
            else if (m==k)
                   prob=zeros(1,m+1);
                   prob(1:m)=probvec;
                   prob(m+1)=(2*rho+(lambda*(1-rho)-2*rho)/m)*probvec(m)...
                             -(1-2/m)*rho*rho*probvec(m-1)...
                             +lambda*(rho^k)*(k/m)*probvec(m-k+1);
                else if (m==(k+1))
                        prob=zeros(1,m+1);
                        prob(1:m)=probvec;
                        prob(m+1)=(2*rho+(lambda*(1-rho)-2*rho)/m)*probvec(m)...
                                    -(1-2/m)*rho*rho*probvec(m-1)...
                                    +lambda*(rho^k)*(k/m)*probvec(m-k+1)...
                                    -lambda*(rho^k)*((k+1)/m+(k-1)*rho/m)*probvec(m-k);
                    else    prob=zeros(1,m+1);
                            prob(1:m)=probvec;
                            prob(m+1)=(2*rho+(lambda*(1-rho)-2*rho)/m)*probvec(m)...
                                       -(1-2/m)*rho*rho*probvec(m-1)...
                                       +lambda*(rho^k)*(k/m)*probvec(m-k+1)...
                                       -lambda*(rho^k)*((k+1)/m+(k-1)*rho/m)*probvec(m-k)...
                                       +lambda*(rho^(k+1))*(k/m)*probvec(m-k-1);
                    end
                end
            end
        end
    end
end