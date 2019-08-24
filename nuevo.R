#hola 
b = 4
b = b+1
b
y = 1.5
typeof(y)
x <- factor(c(1,1 ,1, 1 , 2, 2 ,2))
x
x = c(1, NA, 'juan', TRUE, FALSE)
x
class(x)
as.numeric('ian')
matrix(1:12)
matrix(1:6, nrow = 3, ncol= 4)
vec_1 = 1:4
vec_2 = 5:8
vec_3=9:12
vec_4=13:16
matrix=rbind(vec_1, vec_2, vec_3, vec_4)
matrix
mi_df <- data.frame(
  "entero " = 1:3
  "factor"
)

help()
help(help)              # the same

help(lapply)

help("for")             # or ?"for", but quotes/backticks are needed

try({# requires working TeX installation:
  help(dgamma, help_type = "pdf")
  ## -> nicely formatted pdf -- including math formula -- for help(dgamma):
  system2(getOption("pdfviewer"), "dgamma.pdf", wait = FALSE)
})

help(package = "splines") # get help even when package is not loaded

topi <- "women"
help(topi)

try(help("bs", try.all.packages = FALSE)) # reports not found (an error)
help("bs", try.all.packages = TRUE)       # reports can be found
# in package 'splines'

## For programmatic use:
topic <- "family"; pkg_ref <- "stats"
help((topic), (pkg_ref))

