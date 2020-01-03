##PRT 001. Financial Ratio - Portfolio

#1) User defined function - ratio : ROA/ROE/Profit Margin

#Assumption
#x1=net_income 
#x2=total_assets 
#x3=shareholders_equity 
#x4=net_sales 

my_function1 <- function(x1, x2, x3, x4){
  roa <- round(x1/x2, digits = 2)
  roe <- round(x1/x3, digits = 2)
  profitmargin <- round(x1/x4, digits = 2)
  ratios <- c(roa,roe,profitmargin)
  names <- c("ROA", "ROE", "ProfitMargin")
  final <- cbind(names, ratios)
}

#2) Calculating ratios

#net_income <- 20000
#total_assets <- 80000
#shareholders_equity <- 30000
#net_sales <- 3000000

function_output <- my_function1(x1=20000, x2=80000, 
                               x3=30000, x4=3000000)
print(function_output) 

#3)Addtional investment
#x1=net_income <- 20000 
#x2=total_assets <- 80000
#x3=shareholders_equity <- 30000
#x4=net_sales <- 3000000 
#x5=addiotional equity investment <- 10000  

my_function2 <- function(x1,x2,x3,x4,x5){
  x2 <- x2+x5
  x3 <- x3+x5
  roa1 <-round(x1/x2, digits = 2)
  roe1 <-round(x1/x3, digits = 2)
  profmargin1 <- round(x1/x4, digits = 2)
  ratios <- c(roa1,roe1,profitmargin1)
  names <- c("ROA1", "ROE1", "Profit margin1")
  final <- cbind(names, ratios)
  return(final)
}
function_output2 <- my_function2(x1=20000, x2=80000, 
                             x3=30000, x4=3000000, x5=-20000)
print(function_output2) 

table <- cbind(function_output,function_output2)

mytable <- as.data.frame(table)
mytable