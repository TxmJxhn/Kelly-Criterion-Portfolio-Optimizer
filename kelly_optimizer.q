// Kelly Criterion Risk Management Tool for Trading Portfolio

// Function to calculate Kelly Criterion
// e: Expected return (decimal form, e.g., 0.1 for 10% return)
// p: Probability of success (decimal form, e.g., 0.6 for 60% chance)
calcKelly:{[e;p] ((e*p)-1+p)%e}

// Function to calculate expected return of the portfolio
// r: List of possible returns for each asset
// p: List of probabilities corresponding to each return
calcExpectedReturn:{[r;p] sum r*p}

// Function to calculate portfolio risk (using standard deviation)
// r: List of possible returns for each asset
// w: List of weights allocated to each asset
calcPortfolioRisk:{[r;w] sqrt sum (w*dev[r])xexp 2}

// Function to optimize portfolio allocation using Kelly Criterion
// r: List of possible returns for each asset
// p: List of probabilities corresponding to each return
// rf: Risk-free rate (decimal form, e.g., 0.02 for 2% risk-free rate)
optimizePortfolio:{[r;p;rf]
    e:calcExpectedReturn[r;p];
    k:calcKelly[e-rf;p];
    
    // Normalize Kelly fractions to ensure they sum to 1
    n:k%sum abs k;
    
    // Calculate portfolio risk
    risk:calcPortfolioRisk[r;n];
    
    // Return optimized weights and portfolio metrics
    `weights`expectedReturn`risk!(n;e;risk)
 };

// Example usage
// r: Example returns for 4 assets
// p: Corresponding probabilities for each asset's return
// rf: Risk-free rate
r:0.1 0.05 0.15 -0.02;
p:0.4 0.3 0.2 0.1;
rf:0.02;

res:optimizePortfolio[r;p;rf];

-1 "Optimized Portfolio Allocation:";
show res`weights;
-1 "Expected Portfolio Return: ",string res`expectedReturn;
-1 "Portfolio Risk: ",string res`risk;
