# MechaCar_Analysis
## Project Overview
Vehicle prototype 'MechaCar' has just been released by automotive manufacturer AutosRUs! However, production troubles are stalling progress; therefore we completed data analysis in R to provide insights to the manufacturing team to get back on track.

## Linear Regression to Predict MPG

To start, we examine the miles-per-gallon feature of the MechaCar: 

![mecha_model_summary](https://user-images.githubusercontent.com/87148145/169380079-182ebd7d-fe2c-4414-b4ed-6f87c97f6168.JPG)

Both vehicle length and ground clearance serve as non-random variance in the mpg discussion. In other words, these two features are otherwise controllable factors that negatively impact optimal vehicle design specs. Furthermore, the linear model above shows a p-value of 5.35e-11, or 0.0000000000545. This is well below the threshold of what we consider significant (0.05) and is, along with an F-statistic value of 22.07, enough to confirm a non-zero model slope and an relatively accurate prediction model of for our dependent variable (mpg) given the independent variables (vehicle features). 

## Summary Statistics on Suspension Coils

Next, we consider the design specifications of the suspension coils using a dataframe. The three production lots as a whole fall within tolerance for the 100-lb coil threshold:

![suspension_summary](https://user-images.githubusercontent.com/87148145/169381777-a43b0cb0-7de2-40e0-a7a6-0a984e6d6682.JPG)

However, the summaries by lot provides an interesting pattern:

![lot_summary](https://user-images.githubusercontent.com/87148145/169436819-1815e088-b9d1-40f8-9163-5379b70c6a0a.JPG)

We see how utterly out-of-place Lot 3 is compared to the others: 70% beyond the tolerated threshold and a standard deviation of 13 -- that's right, <em>THIRTEEN!</em> Meanwhile, lots #1 and #2 are well within specification. 

## T-Tests on Suspension Coils

As a final analysis of R calculations, we examine the mean variance of PSI across car lots using t-tests: 

![suspension_t_test](https://user-images.githubusercontent.com/87148145/169381794-c7b953a7-961a-4035-b198-5f80dde38964.JPG)

Broken down by lot, we get the following:

### <strong>Lot 1: </strong>

![lot1_t_test](https://user-images.githubusercontent.com/87148145/169445453-7408e18c-f01e-4f50-874f-2cc9e1376d1d.JPG)

### <strong>Lot 2:</strong>

![lot2_t_test](https://user-images.githubusercontent.com/87148145/169445471-808665ca-05c8-42be-ad1c-55fa177beb85.JPG)

### <strong>Lot 3:</strong>

![lot3_t_test](https://user-images.githubusercontent.com/87148145/169445479-9d4259f0-8456-4138-be20-13d20228aedb.JPG)

The t-tests above are revealing. First, the p-value of lots #1 and #2 are > 0.05, showing that the null hypothesis (there is no significant d ifference between our populations) is likely true. 

So what gives?

Enter stage left: Lot #3. 

The t-test for this third lot, with a significant p-value (**0.0417** < 0.05), allows us to REJECT the null hypothesis and conclude that the PSI variation for these vehicles is significant. 

## Study Design: MechaCar vs Competition
So how does the MechaCar perform against the competition? A statistical study may provide some insights in quantifying this. Below are additional suggestions for a follow-up study.

AutosRUs might start by adding to to the study metrics beyond spoiler and ground clearance, and digging deeper into consumer preferences like affordability, aesthetics (*this is important for prototypes!*) and maintenance costs. For example, no consumer would be happy to learn the closest dealership is 300 miles away. How do these factors impact user preference?

The null hypothesis might state that MechaCar is no more desirable than its competition. In other words, it should be priced the same as its competitors. Whereas the alternative hypothesis to this would be that the gamut of consumer preferences will significantly impact the otherwise level-playing field of consumer appeal. 

A healthy sample of data is always a pre-requisite for any good analysis. For the suspension coils, we had 151 records. Perhaps 100-200 survey responses from consumers who fit marketing demographics would suffice. This data could then be applied to both linear regression models (to add color to how consumer preferences predict purchasing behavior) and t-tests (to confirm or reject our hypotheses). An ANOVA test might also prove useful. 