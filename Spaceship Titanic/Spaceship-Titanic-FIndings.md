---
title: "SpaceShip Titanic Findings"
output: github_document
---

# Spaceship Titanic
[Kaggle Project Page](https://www.kaggle.com/competitions/spaceship-titanic)
![Spaceship Titanic Hero Image](https://github.com/somas1/CT/blob/main/Spaceship%20Titanic/joel-filipe-QwoNAhbmLLo-unsplash.jpg)

[Link to my RStudio Analysis Notes](https://github.com/somas1/CT/blob/main/Spaceship%20Titanic/Spaceship-Titanic.Rmd)

---

Welcome to the year 2912, where your data science skills are needed to solve a cosmic mystery. We've received a transmission from four lightyears away and things aren't looking good.

The Spaceship Titanic was an interstellar passenger liner launched a month ago. With almost 13,000 passengers on board, the vessel set out on its maiden voyage transporting emigrants from our solar system to three newly habitable exoplanets orbiting nearby stars.

While rounding Alpha Centauri en route to its first destination—the torrid 55 Cancri E—the unwary Spaceship Titanic collided with a spacetime anomaly hidden within a dust cloud. Sadly, it met a similar fate as its namesake from 1000 years before. Though the ship stayed intact, almost half of the passengers were transported to an alternate dimension!

To help rescue crews and retrieve the lost passengers, you are challenged to predict which passengers were transported by the anomaly using records recovered from the spaceship’s damaged computer system.

Help save them and change history!

---

## Basic Exploration of Data

Loading the training data into RStudio shows us that there are 8693 entries and 14 columns of data about the Spaceship Titanic's passengers.

### Known Transported Passengers

![Transported Passengers](https://github.com/somas1/CT/blob/main/Spaceship%20Titanic/spaceship-titanic/transported_bar_graph.png)

There are 4378 passengers known to have been transported and 4315 who were not. There appears to be a 50/50 chance of being transported looking at this graph.

### Exploring Our Data with Graphs

![Age Histogram](https://github.com/somas1/CT/blob/main/Spaceship%20Titanic/spaceship-titanic/Age%20Histogrampng.png)

![FoodCourt-Histogram](https://github.com/somas1/CT/blob/main/Spaceship%20Titanic/spaceship-titanic/FoodCourt-Histogram.png)

![Spa-Histogram](https://github.com/somas1/CT/blob/main/Spaceship%20Titanic/spaceship-titanic/Spa-Histogram.png)

![VRDeck-Histogram](https://github.com/somas1/CT/blob/main/Spaceship%20Titanic/spaceship-titanic/VRDeck-Histogram.png)

The histogram of passenger ages seems to approach a normal distribution although it does skew slightly more towards 20-30 year olds. 

The histograms of the various luxury amenities offered appears to be very left skewed.

It's worth looking at this to see if there is a relationship between the money spent by a passenger and their transported status.

## Graph Comparison Transported vs Non-Transported

![Mean_Age](https://github.com/somas1/CT/blob/main/Spaceship%20Titanic/spaceship-titanic/Mean_Age.png)

The mean age of the "Not Transported" group is slightly higher but fairly close to the mean age of the "Transported" group,

![Room Service](https://github.com/somas1/CT/blob/main/Spaceship%20Titanic/spaceship-titanic/Room%20Service.png)

![Spa](https://github.com/somas1/CT/blob/main/Spaceship%20Titanic/spaceship-titanic/Spa.png)

![VR](https://github.com/somas1/CT/blob/main/Spaceship%20Titanic/spaceship-titanic/VR.png)

![Food](https://github.com/somas1/CT/blob/main/Spaceship%20Titanic/spaceship-titanic/Food.png)

![Mall](https://github.com/somas1/CT/blob/main/Spaceship%20Titanic/spaceship-titanic/Mall.png)

The passengers transported spent more on food and slightly more at the mall. 

The passengers that were not transported spent considerably more on luxuries.

## Hypothesis: The passengers with less income were more likely to be transported.







