USE db_churn;
GO

-- View for ML Model Training (Churned and Stayed customers)
CREATE VIEW vw_ChurnData as
SELECT * FROM prod_Churn WHERE Customer_Status IN ('Churned', 'Stayed');

-- View for Predictions (New joined customers)
CREATE VIEW vw_JoinData as
SELECT * FROM prod_Churn WHERE Customer_Status = 'Joined';
