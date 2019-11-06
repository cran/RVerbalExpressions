## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

library(RVerbalExpressions)

## ------------------------------------------------------------------------
# find something that must contain two words
rx() %>% 
  rx_find("cat") %>% 
  rx_anything() %>% 
  rx_find("dog") %>% 
  print() %>% 
  grepl(c("cat dog", "cat", "dog"))

## ------------------------------------------------------------------------
# find something between two words
rx() %>% 
  rx_seek_prefix("cat") %>% 
  rx_something() %>% 
  rx_seek_suffix("dog") %>% 
  print() %>% 
  grepl(c("cat something dog", "catdog"), perl = TRUE)

## ------------------------------------------------------------------------
# find something that starts with word
rx() %>% 
  rx_start_of_line() %>% 
  rx_find("cat") %>% 
  print() %>% 
  grepl(c("cat", "cat dog", "dog cat"))

## ------------------------------------------------------------------------
# find something that ends with word
rx() %>% 
  rx_find("cat") %>% 
  rx_end_of_line() %>% 
  print() %>% 
  grepl(c("cat", "cat dog", "dog cat"))

## ------------------------------------------------------------------------
# find something that starts with and ends with words
rx() %>% 
  rx_start_of_line() %>% 
  rx_find("cat") %>% 
  rx_anything() %>% 
  rx_find("dog") %>% 
  rx_end_of_line() %>% 
  print() %>% 
  grepl(c("cat", "cat dog", "dog cat"))

## ------------------------------------------------------------------------
# find something regardless of case
rx() %>% 
  rx_find("cat") %>% 
  rx_with_any_case() %>% 
  print() %>% 
  grepl(c("cat", "CAT"))

