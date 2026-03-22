# Duplicate Record Matching Portfolio Project

**Author:** Keegan Blakely  
**Date:** 2026-03-19

---

## Project Overview
This project demonstrates an end-to-end approach to identifying potential duplicate student records in a database. It includes database design, data preparation, data pipeline, duplicate scoring, and visualization.

---

## Database Design
- Designed a relational student database from scratch using an ER diagram.
- Forward-engineered in MySQL and added constraints to the schema script.
- Includes 11 tables such as students, emails, courses, enrolments, etc.
- Populated with synthetic data for testing, including messy data and duplicate records.
- Supports staging for potential duplicates and provides the foundation for scoring logic.

---

## Pipeline & Analysis
- SQL pipeline to stage and standardize messy data for Python analysis.
- Extracts staged student data from the database.
- Generates candidate pairs grouped by alternate IDs.
- Calculates match scores using:
  - First and last names (including preferred names)
  - Birth dates
  - Address (lines, city, state, zip, country)
  - Emails
  - Phone numbers
  - Gender identity mismatch penalties
- Produces a weighted composite score for each pair.
- Categorizes each pair as **Very Likely**, **Likely**, **Possible**, or **Not Likely** match.
- Determines a “parent record” based on enrolment count and first enrolment date.

---

## Visualization
Includes a simple dashboard with:
- Summary tiles for total matches and breakdown by match likelihood.
- Horizontal bar chart showing counts per match likelihood.
- Conditional formatting to highlight match likelihood in the final output table.

---

## Tools & Technologies
- **MySQL** – database design, ER diagram, data insertion, staging pipeline  
- **Python** – data extraction, cleaning, scoring  
- **Pandas** – data manipulation  
- **FuzzyWuzzy** – text similarity scoring  
- **Power BI** – dashboard visualization  

---

## How to Run
1. Clone the repository using the provided SQL dump.
2. Update the MySQL connection parameters in the Jupyter notebook.
3. Optional: adjust parameters (scoring weights and thresholds).
4. Run the notebook to extract data, calculate match scores, and produce the final output table.
