// Kelly Criterion Risk Management Tool for Trading Portfolio

calcKelly:{[e;p] ((e*p)-1+p)%e}

calcExpectedReturn:{[r;p] sum r*p}

calcPortfolioRisk:{[r;w] sqrt sum (w*dev[r])xexp 2}

optimizePortfolio:{[r;p;rf]
    e:calcExpectedReturn[r;p];
    k:calcKelly[e-rf;p];
    n:k%sum abs k;
    risk:calcPortfolioRisk[r;n];
    `weights`expectedReturn`risk!(n;e;risk)
 };

// Example usage
r:0.1 0.05 0.15 -0.02;
p:0.4 0.3 0.2 0.1;
rf:0.02;

res:optimizePortfolio[r;p;rf];

-1 "Optimized Portfolio Allocation:";
show res`weights;
-1 "Expected Portfolio Return: ",string res`expectedReturn;
-1 "Portfolio Risk: ",string res`risk;
