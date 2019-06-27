
#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
revenue
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
expenses

#Solution
profit <- revenue - expenses
profit
profitaftertax <- round(profit * 0.3,2)
profitaftertax
profitmargin <- profitaftertax / revenue
profitmargin
mean <- mean(profitaftertax)
mean
goodmonths <- profitaftertax < mean
goodmonths
badmonths <- profitaftertax > mean 
badmonths
bestmonth <- max(profitaftertax)
bestmonth
worstmonth <- min(profitaftertax)
worstmonth

M <-cbind(
  revenue,
  expenses,
  profit,
  profitaftertax,
  goodmonths,
  badmonths,
  bestmonth,
  worstmonth
)
M

