import pandas as pd

df = pd.read_excel("C:\\Users\\Owner\\OneDrive\\Capstone\\Capstone Input Files\\File1-Spring-2025-TA-Graders-PhD_Master-information.xlsx")

if __name__ == "__main__":
    print("This is the main module.")
    print(df.head())