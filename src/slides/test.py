import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Create a point-error plot with random data. X-axis name is time, Y-axis name is Treatment Effect. Make it 5 periods long, going from -2 to 2. Make the treatment effect a random number between 0 and 1. Make the standard error a random number between 0 and 0.5. Treatment effects from periods -2 to 0 are about 0. Treatment effects from periods 1 to 2 are about 0.75.
x = np.linspace(-2, 2, 5)
y = np.random.rand(5)
y[0:3] = 0
y[3:5] = 0.75
yerr = np.random.rand(5) * 0.5

# Do the plot
plt.errorbar(x, y, yerr=yerr, fmt="o")
plt.xlabel("Time")  # Set the x-axis label
plt.ylabel("Treatment Effect")  # Set the y-axis label
# Horizontal line at 0
plt.axhline(y=0, color="black", linestyle="--")
plt.show()


# Create a random data frame with 5 columns and 25 rows. Name the columns as A, B, C, etc. The first one should have categorical values from this list: "A", "B" or "C". Rest of columns are numerical and distributed according to a normal distribution with mean 0 and standard deviation 2.
df = pd.DataFrame(
    {
        "A": np.random.choice(["A", "B", "C"], 25),
        "B": np.random.normal(0, 2, 25),
        "C": np.random.normal(0, 2, 25),
        "D": np.random.normal(0, 2, 25),
        "E": np.random.normal(0, 2, 25),
    }
)

# Add a column called "Y" that is Y=A+2*B+1*C+e, where e is a random number from a normal distribution with mean 0 and standard deviation 1 and the value of A is 0 if A is "A", 1 if A is "B" and 2 if A is "C".
df["Y"] = (
    df["A"].map({"A": 0, "B": 1, "C": 2})
    + 2 * df["B"]
    + 1 * df["C"]
    + np.random.normal(0, 1, 25)
)

# Import the statsmodels package to run a linear regression. Make sure to use the formula API. Also import the statsmodels.api package to get the summary.
import statsmodels.formula.api as smf
import statsmodels.api as sm

# Run a linear regression of Y on all other columns. Understand that column A is categorical and use the formula api. Standard errors should be heteroscedastic robust. Print the summary.
model = smf.ols("Y ~ A + B + C + D + E", data=df)
results = model.fit(cov_type="HC1")
print(results.summary())
