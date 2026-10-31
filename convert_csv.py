import pandas as pd

# Read the original SMS dataset
df = pd.read_csv(
    "data/SMSSpamCollection",
    sep="\t",
    header=None,
    names=["label", "message"]
)

# Save it as a proper CSV file
df.to_csv("data/dataset.csv", index=False)

# Display information to verify conversion
print("Dataset converted successfully!")
print("\nFirst 5 rows:")
print(df.head())

print("\nDataset shape:")
print(df.shape)

print("\nLabel distribution:")
print(df["label"].value_counts())
