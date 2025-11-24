import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load dataset
df = pd.read_csv('data/train.csv')

# Dashboard Visualizations

# Purchase Distribution
plt.figure(figsize=(10,5))
sns.histplot(df['Purchase'], bins=50)
plt.title('Purchase Amount Distribution')
plt.tight_layout()
plt.show()

# Gender vs Purchase
plt.figure(figsize=(8,4))
sns.boxplot(data=df, x='Gender', y='Purchase')
plt.title('Purchase by Gender')
plt.tight_layout()
plt.show()

# Age Group Spending
plt.figure(figsize=(8,5))
sns.barplot(data=df, x='Age', y='Purchase', estimator='mean')
plt.title('Average Purchase by Age Group')
plt.tight_layout()
plt.show()

# Product Category Analysis
plt.figure(figsize=(10,5))
sns.countplot(data=df, x='Product_Category_1')
plt.title('Product Category 1 Distribution')
plt.tight_layout()
plt.show()

# City Category Purchase
plt.figure(figsize=(8,5))
sns.barplot(data=df, x='City_Category', y='Purchase', estimator='mean')
plt.title('Avg Purchase by City Category')
plt.tight_layout()
plt.show()
