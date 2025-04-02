use Northwind

select * from Shippers
select * from Orders
-- Speedy Express firmasi ile tasinan urun listesi
Select
Distinct

P.ProductName,
S.CompanyName

From Orders O
inner join [Order Details] OD on O.OrderID = OD.OrderID

inner join Products P on OD.ProductID = P.ProductID

inner join Shippers S on O.ShipVia = S.ShipperID

where S.CompanyName = 'Speedy Express'