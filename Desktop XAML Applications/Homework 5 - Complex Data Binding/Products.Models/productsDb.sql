USE [master]
GO
/****** Object:  Database [ProductsDb]    Script Date: 9/12/2013 10:48:35 AM ******/
CREATE DATABASE [ProductsDb]
GO
USE [ProductsDb]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/12/2013 10:48:35 AM ******/
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/12/2013 10:48:35 AM ******/
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductNumber] [nvarchar](10) NULL,
	[UnitCost] [money] NOT NULL,
	[Description] [ntext] NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1, N'Beverages')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (2, N'Condiments')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (3, N'Confections')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (4, N'Dairy Products')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (5, N'Grains/Cereals')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (6, N'Meat/Poultry')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (7, N'Produce')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (8, N'Seafood')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (1, N'Chai', N'BVRGS01', 18.0000, N'Hindi-Urdu, Arabic, Persian, Russian, Slovene, Ukrainian, Bulgarian language term for the beverage, derived from Mandarin chá for tea. Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the tea plant, Camellia sinensis. After water, tea is the most widely consumed beverage in the world. It has a cooling, slightly bitter, and astringent flavour that many people enjoy.', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (2, N'Chang', N'BVRGS02', 19.0000, N'Chhaang is a relative of the more universally known beer. Barley, millet (finger-millet) or rice grains are used to brew the drink. Semi-fermented seeds of millet are served, stuffed in a barrel of bamboo called a dhungro. Boiling water is then poured in and sipped through a narrow-bore bamboo tube called a pipsing. When the boiled barley has cooled, some yeast or dried barm is added and it is left to stand for two or three days when fermentation begins; this concoction is called glum. The barm consists of flour and, in Balti, at least, often has ginger and aconite added to it. After fermentation is complete, water is added to the brew and is then ready for consumption.', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (3, N'Aniseed Syrup', NULL, 10.0000, NULL, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (4, N'Chef Anton''s Cajun Seasoning', NULL, 22.0000, NULL, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (5, N'Chef Anton''s Gumbo Mix', NULL, 21.3500, NULL, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (6, N'Grandma''s Boysenberry Spread', NULL, 25.0000, NULL, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (7, N'Uncle Bob''s Organic Dried Pears', NULL, 30.0000, NULL, 7)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (8, N'Northwoods Cranberry Sauce', NULL, 40.0000, NULL, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (9, N'Mishi Kobe Niku', NULL, 97.0000, NULL, 6)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (10, N'Ikura', NULL, 31.0000, NULL, 8)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (11, N'Queso Cabrales', NULL, 21.0000, NULL, 4)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (12, N'Queso Manchego La Pastora', NULL, 38.0000, NULL, 4)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (13, N'Konbu', NULL, 6.0000, NULL, 8)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (14, N'Tofu', NULL, 23.2500, NULL, 7)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (15, N'Genen Shouyu', NULL, 15.5000, NULL, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (16, N'Pavlova', NULL, 17.4500, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (17, N'Alice Mutton', NULL, 39.0000, NULL, 6)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (18, N'Carnarvon Tigers', NULL, 62.5000, NULL, 8)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (19, N'Teatime Chocolate Biscuits', NULL, 9.2000, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (20, N'Sir Rodney''s Marmalade', NULL, 81.0000, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (21, N'Sir Rodney''s Scones', NULL, 10.0000, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (22, N'Gustaf''s Knäckebröd', NULL, 21.0000, NULL, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (23, N'Tunnbröd', NULL, 9.0000, NULL, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (24, N'Guaraná Fantástica', N'BVRGS03', 4.5000, N'Guaraná is a guaraná-flavoured soft drink, originating in Brazil and manufactured and distributed by Anheuser-Busch InBev. It was created in 1921 by Pedro Baptista de Andrade for Companhia Antarctica Paulista, now part of Anheuser-Busch InBev. The drink is produced only in three countries (Portugal, Brazil, and Japan). It is the second best-selling soft drink brand in Brazil, behind only Coca-Cola, an absolute leader in its segment. Currently, it is one of the 15 best-selling soft drink brands in the world.', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (25, N'NuNuCa Nuß-Nougat-Creme', NULL, 14.0000, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (26, N'Gumbär Gummibärchen', NULL, 31.2300, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (27, N'Schoggi Schokolade', NULL, 43.9000, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (28, N'Rössle Sauerkraut', NULL, 45.6000, NULL, 7)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (29, N'Thüringer Rostbratwurst', NULL, 123.7900, NULL, 6)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (30, N'Nord-Ost Matjeshering', NULL, 25.8900, NULL, 8)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (31, N'Gorgonzola Telino', NULL, 12.5000, NULL, 4)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (32, N'Mascarpone Fabioli', NULL, 32.0000, NULL, 4)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (33, N'Geitost', NULL, 2.5000, NULL, 4)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (34, N'Sasquatch Ale', N'BVRGS04', 14.0000, N'Sasquatch has a deep mahogany color and a body that is toasty-sweet. Outrageous quantities of (Willamette, Cascade, Centennial, Chinook and Saaz) hops give an incredibly rich and complex herbal flavor and crisp bitterness that remind you that this is “beer”.', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (35, N'Steeleye Stout', N'BVRGS05', 18.0000, N'Stout is a dark beer made using roasted malt or roasted barley, hops, water and yeast. Stouts were traditionally the generic term for the strongest or stoutest porters, typically 7% or 8%, produced by a brewery. In this sense a stout is not necessarily dark in colour because there are also blonde stouts. There are a number of variations including Baltic porter, dry stout and imperial stout. The name porter was first used in 1721 to describe a dark brown beer popular with street and river porters of London that had been made with roasted malts.', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (36, N'Inlagd Sill', NULL, 19.0000, NULL, 8)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (37, N'Gravad lax', NULL, 26.0000, NULL, 8)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (38, N'Côte de Blaye', N'BVRGS06', 263.5000, N'Cotes de Blaye is the appellation for dry white wines from about 40 parishes around the town of Blaye, at the western end of the right bank of Bordeaux. Introduced in September 1936, the Cotes de Blaye title has always exclusively covered dry white wines.', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (39, N'Chartreuse verte', N'BVRGS07', 18.0000, N'Chartreuse is a French liqueur made by the Carthusian Monks since 1737 according to the instructions set out in the secret manuscript given to them by François Annibal d''Estrées in 1605. It is composed of distilled alcohol aged with 130 herbs, plants and flowers.', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (40, N'Boston Crab Meat', NULL, 18.4000, NULL, 8)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (41, N'Jack''s New England Clam Chowder', NULL, 9.6500, NULL, 8)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (42, N'Singaporean Hokkien Fried Mee', NULL, 14.0000, NULL, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (43, N'Ipoh Coffee', N'BVRGS08', 46.0000, N'Ipoh "white" coffee is a popular coffee drink which originated in Ipoh, Perak, Malaysia. The coffee beans are roasted with palm-oil margarine, and the resulting coffee is served with condensed milk.', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (44, N'Gula Malacca', NULL, 19.4500, NULL, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (45, N'Rogede sild', NULL, 9.5000, NULL, 8)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (46, N'Spegesild', NULL, 12.0000, NULL, 8)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (47, N'Zaanse koeken', NULL, 9.5000, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (48, N'Chocolade', NULL, 12.7500, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (49, N'Maxilaku', NULL, 20.0000, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (50, N'Valkoinen suklaa', NULL, 16.2500, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (51, N'Manjimup Dried Apples', NULL, 53.0000, NULL, 7)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (52, N'Filo Mix', NULL, 7.0000, NULL, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (53, N'Perth Pasties', NULL, 32.8000, NULL, 6)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (55, N'Tourtière', NULL, 7.4500, NULL, 6)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (56, N'Pâté chinois', NULL, 24.0000, NULL, 6)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (57, N'Gnocchi di nonna Alice', NULL, 38.0000, NULL, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (58, N'Ravioli Angelo', NULL, 19.5000, NULL, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (59, N'Escargots de Bourgogne', NULL, 13.2500, NULL, 8)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (60, N'Raclette Courdavault', NULL, 55.0000, NULL, 4)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (61, N'Camembert Pierrot', NULL, 34.0000, NULL, 4)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (62, N'Sirop d''érable', NULL, 28.5000, NULL, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (63, N'Tarte au sucre', NULL, 49.3000, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (64, N'Vegie-spread', NULL, 43.9000, NULL, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (65, N'Wimmers gute Semmelknödel', NULL, 33.2500, NULL, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (66, N'Louisiana Fiery Hot Pepper Sauce', NULL, 21.0500, NULL, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (67, N'Louisiana Hot Spiced Okra', NULL, 17.0000, NULL, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (68, N'Laughing Lumberjack Lager', N'BVRGS09', 14.0000, N'Lumberjack is a traditional style American Pale Ale brewed with 100% malted barley. Lumberjack is full bodied with a perfect citrus hop aroma and smooth hop flavor. Although brewed with plenty of hops, Lumberjack also has plenty of malt character. This traditional style ale is crisp and refreshing presenting a smooth and enjoyable drinking experience for any time of the year.', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (69, N'Scottish Longbreads', NULL, 12.5000, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (70, N'Gudbrandsdalsost', NULL, 36.0000, NULL, 4)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (71, N'Outback Lager', N'BVRGS10', 15.0000, N'A symphony of complex flavours using three varieties of Tasmanian hops & two types of grain to create a beer.', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (72, N'Flotemysost', NULL, 21.5000, NULL, 4)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (73, N'Mozzarella di Giovanni', NULL, 34.8000, NULL, 4)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (74, N'Röd Kaviar', NULL, 15.0000, NULL, 8)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (75, N'Longlife Tofu', NULL, 10.0000, NULL, 7)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (76, N'Rhönbräu Klosterbier', N'BVRGS11', 7.7500, N'The "Anti-Aging-Bier", which, in addition to the four cardinal ingredients of beer, adds spirulina and flavonoids in order to, supposedly, increase health and longevity, was first marketed in February 2004, and claims to have double the anti-oxidant effect of other beers.', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (77, N'Lakkalikööri', N'BVRGS12', 18.0000, N'Lakka or Lakkalikööri is a liqueur produced in Finland which derives its flavor from the cloudberry fruit. The word "Lakka" means cloudberry in Finnish.
The beverage is produced by soaking the berries in alcohol anywhere between two to six months until sweetened.', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (78, N'Original Frankfurter grüne Soße', NULL, 13.0000, NULL, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [UnitCost], [Description], [CategoryId]) VALUES (79, N'Coca-cola', N'BVRGS13', 12.0000, N'Coca-Cola is a carbonated soft drink sold in stores, restaurants, and vending machines throughout the world. Originally intended as a patent medicine when it was invented in the late 19th century by John Pemberton.', 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
USE [master]
GO
ALTER DATABASE [ProductsDb] SET  READ_WRITE 
GO
