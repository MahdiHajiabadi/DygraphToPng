# DygraphToPng
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

