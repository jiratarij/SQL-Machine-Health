# SQL Machine Health Monitoring – Temperature Risk Analysis

## Overview
This mini project demonstrates how SQL can be used to monitor machine operating conditions
by analyzing temperature data from factory machines.
The focus is on identifying machines that may be at risk of breakdown or safety issues due to high temperature.

## Objective
- Track machine temperature records
- Identify machines operating above a defined temperature threshold
- Support early risk detection related to machine breakdown or safety concerns

## Analysis Result (Health Status)
The following table demonstrates the classification of machine health based on temperature sensor data:

| machine_id | temperature | status |
| :--- | :--- | :--- |
| MC-002 | 92.0 | Warning |
| MC-002 | 95.5 | Critical |
| MC-002 | 98.0 | Critical |
| MC-002 | 92.0 | Warning |
| MC-002 | 95.5 | Critical |
| MC-002 | 98.0 | Critical |

## SQL Concepts Used
- CREATE DATABASE / CREATE TABLE
- INSERT INTO
- WHERE filtering with multiple conditions
- Basic safety-oriented data analysis logic

## Insight
Machines operating at high temperatures may indicate:
- Incorrect operating parameters
- Increased risk of machine breakdown
- Potential safety concerns in production environments

This type of analysis can be used as an early warning signal
to support maintenance planning and safer factory operations.

## Notes
This project was created as part of self-study following the Alex The Analyst YouTube channel.
The logic, queries, and interpretation were written independently as hands-on SQL practice.
