
title:
date:
format:
  html:
    self-contained: true
    grid: 
      sidebar-width: 0px
      margin-width: 0px
      body-width: 1000px
      gutter-width: 1.5rem
  params:
      



Recommendation for images (https://r4ds.hadley.nz/quarto#sec-figures):

- Plots tend to be more aesthetically pleasing if they have consistent width. To enforce this, set fig-width: 6 (6”) and fig-asp: 0.618 (the golden ratio) in the defaults. Then in individual chunks, only adjust fig-asp.
- Control the output size with out-width and set it to a percentage of the body width of the output document. We suggest to out-width: "70%" and fig-align: center.
  That gives plots room to breathe, without taking up too much space.
- To put multiple plots in a single row, set the layout-ncol to 2 for two plots, 3 for three plots, etc. This effectively sets out-width to “50%” for each of your plots if layout-ncol is 2, “33%” if layout-ncol is 3, etc. Depending on what you’re trying to illustrate (e.g., show data or show plot variations), you might also tweak fig-width, as discussed below.
