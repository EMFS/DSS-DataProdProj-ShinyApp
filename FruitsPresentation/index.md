---
title       : Fruits App in Shiny
subtitle    : 5 slides to pitch the Fruits app
author      : EMFS
job         : 
framework   : html5slides   # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft, selfcontained}
knit        : slidify::knit2slides
---

## Fruits App in Shiny

This is a pitch for the Fruits app developed in R using Shiny, an application framework that makes it easy to create server/client interaction and thus reactive applications.  


### What is the Fruits app

The Fruits app is a somewhat contrived example that has no direct practical use.  
The app does no fancy analysis, but the code can be reused to show diferent input/output methods, thus showing the capability of Shiny apps.

There are several input objects in the app. 
Each input is then used to generate at least an output that can be viewd on the results section.

---

## Pie Chart of fruits (code)

The main ploting result is a pie chart of the proportion of bananas and oranges that were selected by the user through several input options: [I had to use a link to the image on github as I didn't manage to make RPubs refer directly to the image]



```r
require(ggplot2)
df <- data.frame(c("Bananas", "Oranges"), c(3, 5))
names(df) <- c('fruits', 'quantity')

ggplot(df, aes(x=1, y=quantity, fill=fruits)) +
      geom_bar(stat = "identity", color='black') + coord_polar(theta = 'y') +
      ggtitle("Pie Chart of fruits") + 
      theme(axis.ticks=element_blank(),
            axis.title=element_blank(), 
            axis.text.y=element_blank()) +
      guides(fill=guide_legend(override.aes=list(colour=NA)))
```

---

## Pie Chart of Fruits (Image)

![pie char image](http://raw.githubusercontent.com/EMFS/DSS-DataProdProj-ShinyApp/master/FruitsPresentation/assets/fig/unnamed-chunk-1-1.png "Pie Chart Image")

---

## How to make the app work?

Head over to the [Shiny apps web site](http://www.shinyapps.io) or directly to the app itself:

[Fruits app](http://emfs.shinyapps.io/DSS-DataProdProj-ShinyApp)

Every input already has a default value so that every output has initial values when the app is loaded.
For example, the final pie chart is drawn with the initial default values.

Then the user simply changes any of the initial default values and watch the results!

--- 

## How can I reuse this app?

Just use the code as a template:

* change the inputs in the ``io.R`` file
* change the processing code in the ``server.r`` file
* make sure the results are adequately rendered in a local web server
* publish it to the world on the [RPubs](https://rpubs.com/) web site or directly with the R command:

``publish(title = 'mytitle', 'index.html', host = 'rpubs')``




