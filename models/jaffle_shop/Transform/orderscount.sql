select * from{{ metrics.calculate(
    metric('total_orders'),dimensions =['status']
)}}