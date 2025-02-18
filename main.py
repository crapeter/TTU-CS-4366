import pandas as pd
import column_names
import os
from dotenv import load_dotenv
load_dotenv()

# f1_
grader_preferences = pd.read_excel(os.getenv('FILE1')).dropna(how="all")

# f2_
grader_info = pd.read_excel(os.getenv('FILE2')).dropna(how="all")

# f3_
classes = pd.read_excel(os.getenv('FILE3')).dropna(how="all")

def format_courses_taught(courses: str) -> list[str]:
    return [course.strip() for course in courses.split("\n") if course.strip()]

def print_preferences():
    for idx, row in grader_preferences.iterrows():
       print(f"idx: {idx}, Grader: {row[column_names.f1_grader_name]}, Advisor: {row[column_names.f1_advisor]}, Course Preferences: {row[column_names.f1_course_pref]}")

def print_info():
    for idx, row in grader_info.iterrows():
        print(f"idx: {idx}, Grader: {row[column_names.f2_grader_name]}, Class Times: {row[column_names.f2_class_times]}, Courses: {row[column_names.f2_grader_courses]}, Taught Courses: {format_courses_taught(row[column_names.f2_taught_courses])}, Notes: {row[column_names.f2_notes]}")

def print_classes():
    for idx, row in classes.iterrows():
        print(f"idx: {idx}, Class: {row[column_names.f3_crn]}, Department: {row[column_names.f3_department]}, Course Name: {row[column_names.f3_course_title]}, Days: {row[column_names.f3_days]}, Time: {row[column_names.f3_times]}")

if __name__ == "__main__":
    print_preferences()
    print()
    print_info()
    print()
    print_classes()