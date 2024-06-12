# Advanced SQL - Aggregate functions

## Description

In this exercise, we will practice the basic usage of aggregate functions.

##

## Tasks

###

### Task 1

Create a new database and execute the file [src/data/task1.sql](src/data/task1.sql). This will create the following table:

- **webinar**
    - **id**. Identifier. `serial`, `PRIMARY KEY`
    - **name**. Name of the webinar. `varchar(200)`
    - **teacher**. The person who conducted the webinar. `varchar(100)`
    - **visibility**. Whether it is public or private. `enum('Public', 'Private')`
    - **starts_on**. Date and time the seminar started. `timestamp`
    - **ends_on**. Date and time the seminar ended. `timestamp`
    - **audience**. Number of people who attended the webinar. `integer`

This table contains all webinars conducted in the past.

Your task is to write **a single SQL statement** to answer the following questions:

1. How many webinars have we done?
1. When started the first one?
2. When finished the last one?
3. What is the total amount of people who attended them?
1. What is the average number of people attending a single webinar?

- Your result should look like this:

| Total | First started on       | Last ended on          | Total audience | Average audience |
|-------|------------------------|------------------------|----------------|------------------|
| 234   | 2005-01-11 18:40:32+01 | 2021-06-16 22:26:16+02 | 5753           | 24.5854700854701 |

### Task 2

With the same data from the previous task, now write another SQL statement that will let us track the popularity of a particular teacher.

Find out the same statistics as before but now only for the teacher **Julius Maxim**. Check the total amount of webinars conducted by this teacher, the starting date and time of his first webinar, the ending date and time of his last, the total audience reached and the average amount of people attending his webinars.

- Your result should look like this:

| Total | First started on       | Last ended on          | Total audience | Average audience |
|-------|------------------------|------------------------|----------------|------------------|
| 24    | 2006-09-29 10:31:53+02 | 2020-04-03 17:49:29+02 | 710            | 29.5833333333333 |

- Now, change the teacher's name to **Julia Vila** and your result should look like this:

| Total | First started on       | Last ended on          | Total audience | Average audience |
|-------|------------------------|------------------------|----------------|------------------|
| 24    | 2006-05-01 18:39:19+02 | 2017-06-29 10:51:31+02 | 529            | 22.0416666666667 |

### Task 3

Do the same as before, but this time check for the popularity of topics. Find the total number of webinars, first starting time, last ending time, total audience and average audience of the webinars named **Introduction to Django ORM** and **Introduction to Databases**.

- Your result for **Introduction to Django ORM** should look like this:

| Total | First started on       | Last ended on          | Total audience | Average audience |
|-------|------------------------|------------------------|----------------|------------------|
| 17    | 2005-07-29 23:57:26+02 | 2021-02-10 17:24:10+01 | 406            | 23.8823529411765 |

- Your result for **Introduction to Databases** should look like this:

| Total | First started on       | Last ended on          | Total audience | Average audience |
|-------|------------------------|------------------------|----------------|------------------|
| 3     | 2005-12-02 04:42:52+01 | 2019-06-04 00:24:06+02 | 78             | 26.0000000000000 |

### Task 4

Execute the file [src/data/task4.sql](src/data/task4.sql). The SQL statements in this file will create the following table:

- **teacher**
    - **id**. Identifier. `serial`, `PRIMARY KEY`
    - **name**. Name of the teacher. `varchar(25)`
    - **city**. City where the teacher lives. `varchar(25)`

It already has some records with names matching those in the `webinar` table.

Joining tables by using text fields is not optimal, so the file you just executed also adds a new field to the `webinar` table named `teacher_id`, defined as a foreign key to the `teacher.id` field.

First, you will have to write and execute an SQL statement to update the `teacher_id` field with the primary key of its corresponding teacher.

Then, remove the old `teacher` field with:

```
ALTER TABLE webinar DROP COLUMN teacher;
```

Then, calculate the same statistics as before but this time for the city of **Berlin**. We want to know how many webinars were conducted from Berlin and their statistics.

- Your result should look like this:

| Total | First started on       | Last ended on          | Total audience | Average audience |
|-------|------------------------|------------------------|----------------|------------------|
| 50    | 2006-02-15 01:43:28+01 | 2020-06-10 15:15:28+02 | 1378           | 27.5600000000000 |

- To compare, change the city to **Barcelona** and your result should look like this:

| Total | First started on       | Last ended on          | Total audience | Average audience |
|-------|------------------------|------------------------|----------------|------------------|
| 24    | 2006-05-01 18:39:19+02 | 2017-06-29 10:51:31+02 | 529            | 22.0416666666667 |
