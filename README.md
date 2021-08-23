# DygraphToHtml


As far as my concern, there is no way to directly export dygraph object to png or pdf format. What we can alternatively do, is exporting dygraph object to html using 
htmlwidgets and then convert html to pdf. 

library(dygraphs)
library(htmlwidgets)
library(webshot)

#create map
m <- dygraph(lungDeaths) %>% dyRangeSelector()

# save html to png
saveWidget(m, "temp.html", selfcontained = FALSE)
width<- 1080
height <- 610
webshot("temp.html", file = "Rplot.png",
        cliprect = c(10,30,width+50,height+50)
        ,vwidth = width, vheight = height )
