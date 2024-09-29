# Kelly Criterion Portfolio Optimizer

## Description
This project implements a [Kelly Criterion](https://en.wikipedia.org/wiki/Kelly_criterion)-based portfolio optimization tool using KDB+/q. It calculates optimal portfolio weights based on expected returns, probabilities, and a risk-free rate.

## Features
- Calculates Kelly Criterion for individual assets
- Computes expected portfolio return
- Estimates portfolio risk using standard deviation
- Optimizes portfolio allocation based on Kelly Criterion

## Requirements
- KDB+/q environment (version 3.0 or higher recommended)

## Usage
1. Save the script as `kelly_optimizer.q`
2. Run the script in q:
   ```
   q kelly_optimizer.q
   ```

## Function Descriptions
- `calcKelly`: Calculates Kelly Criterion for an asset
- `calcExpectedReturn`: Computes expected return of the portfolio
- `calcPortfolioRisk`: Estimates portfolio risk
- `optimizePortfolio`: Main function that optimizes portfolio allocation

## Example Output

```
Optimized Portfolio Allocation:
-0.2784687 -0.2594896 -0.2405104 -0.2215313
Expected Portfolio Return: 0.083
Portfolio Risk: 0.0315375
```

## License
This project is open source and available under the [MIT License](LICENSE).

## Contributing
Contributions, issues, and feature requests are welcome. Feel free to check [issues page](../../issues) if you want to contribute.

## Author
Thomas Johnston

## Acknowledgments
- Inspired by the work of John L. Kelly Jr. on optimal betting strategies
- Developed as part of a quantitative finance learning journey
