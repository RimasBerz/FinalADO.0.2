SELECT I.id, I.Name, SUM(C.Price * C.Count) AS TotalValue
FROM Investors I
LEFT JOIN Cryptocurrencies C ON I.id = C.InvestorId
GROUP BY I.id, I.Name, C.Price, C.Count;