SELECT 
  ROUND(SUM(Quantity_Sold * Unit_Price), 2) AS Przychody_Razem,
  ROUND(SUM(Quantity_Sold * Unit_Cost), 2) AS Koszt_Produkcji_Razem,
  ROUND(SUM(Quantity_Sold * Unit_Price) - SUM(Quantity_Sold * Unit_Cost), 2) AS Zysk_Brutto,
  ROUND((SUM(Quantity_Sold * Unit_Price) - SUM(Quantity_Sold * Unit_Cost))/SUM(Quantity_Sold * Unit_Price)*100, 2) AS Marza_Procentowa
FROM sales_data;

SELECT 
  Product_Category,
  ROUND(SUM(Quantity_Sold * Unit_Price), 2) AS Przychody_Kategorii,
  ROUND(SUM(Quantity_Sold * Unit_Cost), 2) AS Koszt_Produkcji_Kategorii,
  ROUND(SUM(Quantity_Sold * Unit_Price) - SUM(Quantity_Sold * Unit_Cost), 2) AS Zysk_Brutto_Kategorii,
  ROUND((SUM(Quantity_Sold * Unit_Price) - SUM(Quantity_Sold * Unit_Cost))/SUM(Quantity_Sold * Unit_Price)*100, 2) AS Marza_Procentowa
FROM sales_data
GROUP BY Product_Category
ORDER BY Marza_Procentowa DESC;

SELECT
  REGION,
  Sales_Rep,
  ROUND(SUM(Quantity_Sold * Unit_Price), 2) AS Przychody_Handlowca,
  ROUND(SUM(Quantity_Sold * Unit_Price) - SUM(Quantity_Sold * Unit_Cost), 2) AS Zysk_Handlowca,
  DENSE_RANK() OVER (PARTITION BY Region ORDER BY SUM(Quantity_Sold * Unit_Price) - SUM(Quantity_Sold * Unit_Cost) DESC) AS Pozycja_W_Regionie
FROM sales_data
GROUP BY Region, Sales_REP
