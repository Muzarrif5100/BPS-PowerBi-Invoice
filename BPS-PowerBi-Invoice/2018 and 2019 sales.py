import matplotlib.pyplot as plt

# Data for 2018 and 2019
years = [2018, 2019]
total_profit = [883130.88, -270124.02]
total_discount = [331807.53, 486324.02]
total_sales = [8833983.87, 12544208.16]

# Create a bar chart
fig, ax = plt.subplots()
bar_width = 0.25
bar1 = ax.bar(years, total_profit, bar_width, label='Total Profit', color='blue')
bar2 = ax.bar([year + bar_width for year in years], total_discount, bar_width, label='Total Discount', color='orange')
bar3 = ax.bar([year + 2*bar_width for year in years], total_sales, bar_width, label='Total Sales', color='green')

# Add labels, title, and legend
ax.set_xlabel('Year')
ax.set_ylabel('Amount ($)')
ax.set_title('Comparison of Total Profit, Total Discount, and Total Sales (2018 vs 2019)')
ax.set_xticks([year + bar_width for year in years])
ax.set_xticklabels(years)
ax.legend()

# Display the chart
plt.show()
