# Shiny_interactive_web_plots
Uses R's new 'Shiny' app to create interactive plots, here of many humidity trend figures 

To run, first unzip the plot figures (n=108) and keep them in the 'plots' directory. Then, simply run the 'ui.R' script, which will attempt to connect with R's servers. Opening 'ui.R' in RStudio and then clicking 'Run App' next to the green arrow in the top right should also work. If successful, a browser window should automatically open with the interactive graphics, which I set up to give the user options to select maps based on the month of the year and choice of dataset.
The 'ui.R' code primarily makes changes to the app layout, while the 'server.R' code deals with importing the appropriate figures.
Shiny is still in active development so see shiny.rstudio.com or contact me @ tballard@stanford.edu for any issues.
