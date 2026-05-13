# Supply Chain Inventory Optimization & Performance Analysis

This project analyzes supply chain inventory data to identify optimization opportunities, improve stock management efficiency, and reduce operational costs through data-driven insights.

## Problem Statement
Supply chain inefficiencies lead to increased holding costs, stockouts, and lost revenue. This analysis examines inventory turnover patterns, supplier performance, and demand fluctuations to recommend actionable strategies for supply chain optimization.

## Business Questions
- What are the inventory turnover rates across different product categories?
- Which suppliers have the highest lead time variability and how does it impact stock levels?
- What is the optimal reorder point for high-demand vs. low-demand products?
- How can holding costs be minimized while maintaining service levels?
- What seasonal patterns exist in demand that affect inventory planning?

## Technologies Used
- **Python** – Data processing, analysis, and visualization
- **Pandas & NumPy** – Data manipulation and statistical analysis
- **Jupyter Notebook** – Interactive analysis and documentation
- **SQL** – Data cleaning, transformation, and querying
- **Excel** – Data reporting and supplementary analysis
- **Matplotlib & Seaborn** – Data visualization

## Data Cleaning & Preparation
- Removed duplicate records and handled missing values across inventory and supplier datasets
- Standardized date formats for accurate time-series analysis
- Corrected data types for numerical fields (quantities, costs, lead times)
- Created calculated fields: turnover rate, days of inventory on hand, stockout frequency
- Merged inventory data with supplier performance data for holistic analysis
- Exported cleaned data to Excel and SQL for cross-platform analysis

## Analysis Performed
- **Inventory Turnover Analysis** – Calculated turnover ratios by product category to identify slow-moving vs. fast-moving inventory
- **ABC Classification** – Segmented inventory based on value contribution to prioritize management focus
- **Supplier Lead Time Analysis** – Measured lead time variability and its correlation with stockout events
- **Demand Forecasting** – Identified seasonal demand patterns and calculated safety stock requirements
- **Cost Optimization Modeling** – Analyzed trade-offs between holding costs and stockout risks
- **Excel Dashboard Creation** – Built interactive reports for stakeholder review

## Key Insights
- **20% of products** account for **80% of inventory value**, confirming the Pareto principle in inventory distribution
- Lead time variability from key suppliers causes **15-20% of avoidable stockouts**
- Optimizing reorder points could reduce holding costs by **12-18%** while maintaining **95%+ service levels**
- Seasonal demand patterns show a **30% spike** in Q4 requiring proactive inventory buildup
- **ABC classification** reveals C-category items occupy disproportionate warehouse space relative to their value

## Business Recommendations
- Implement a tiered inventory management strategy based on ABC classification
- Establish safety stock buffers for suppliers with high lead time variability
- Automate reorder point calculations using demand forecasting models
- Reduce holding costs by rightsizing inventory for C-category items
- Develop quarterly review cycles for inventory performance against KPIs

## Excel Analysis
Supplementary Excel-based analysis focused on:
- **Pivot table summaries** – Category-wise inventory and supplier performance metrics
- **Conditional formatting dashboards** – Visual alerts for low-stock and overstock items
- **What-if scenarios** – Sensitivity analysis on holding costs vs. order quantities
- **KPI tracking sheets** – Monthly inventory turnover, fill rate, and accuracy metrics
