INSERT INTO StockInfo (StockID, Name, Description) VALUES
(1, 'Tech Innovate', 'A leading technology solutions provider specializing in innovative products.'),
(2, 'Healthcare United', 'Offers a broad range of healthcare services and products.'),
(3, 'GreenTech Energy', 'Focuses on renewable energy solutions and sustainable practices.'),
(4, 'Global Finance', 'Provides financial services, including banking, investments, and insurance.'),
(5, 'Eco Foods', 'Distributes organic and non-GMO food products to various markets.'),
(6, 'NextGen Telecom', 'A telecommunications giant offering a wide array of services and products.'),
(7, 'AutoWorks', 'A global leader in automotive manufacturing and innovation.'),
(8, 'Urban Developments', 'Specializes in real estate development, focusing on urban and suburban residential projects.'),
(9, 'Fashion Forward', 'A trendsetting fashion retail company offering the latest in clothing and accessories.'),
(10, 'CyberSecure', 'Provides cutting-edge cybersecurity solutions to protect businesses and individuals.');

-- Anshika
INSERT INTO Investor (InvestorID, FirstName, LastName, ContactNumber, DOB, [Password]) VALUES 
(1, 'Alice', 'Baker', '857-398-7654', '1984-03-15', '432443'),
(2, 'Bob', 'Carter', '857-398-7655', '1976-06-24', '4343543'),
(3, 'Carol', 'Dennison', '857-398-7656', '1991-08-05', '7543gdr'),
(4, 'David', 'Ellis', '857-398-7657', '1986-01-28', '432532gd'),
(5, 'Eve', 'Foster', '857-398-7658', '1979-09-12', 'gdfdg433'),
(6, 'Frank', 'Gibson', '857-398-7659', '1973-10-17', '352345s'),
(7, 'Grace', 'Harris', '857-398-7660', '1996-02-13', '464345yhh'),
(8, 'Henry', 'Ingram', '857-398-7661', '1971-11-25', 'gdr44543'),
(9, 'Isabel', 'Jennings', '857-398-7662', '1989-10-30', 'hgft44753'),
(10, 'Jason', 'Keller', '857-398-7663', '1978-07-22', 'yy5445');

INSERT INTO PaymentMethod (PaymentMethodID, InvestorID, CardNumber, CardHolderName, CVV, ExpiryDate, CardType, BillingAddress) VALUES
(1, 1, '4485627483643747', 'Alice Baker', '342', '2027-05-01', 'Visa', '123 Elm St'),
(2, 2, '5523445555554444', 'Bob Carter', '543', '2028-08-01', 'MasterCard', '456 Pine St'),
(3, 3, '374282246310005', 'Carol Dennison', '654', '2027-07-01', 'American Express', '789 Maple St'),
(4, 4, '6011556711111117', 'David Ellis', '456', '2028-09-01', 'Discover', '101 Oak St'),
(5, 5, '5125105105105100', 'Eve Foster', '433', '2029-12-01', 'MasterCard', '123 Birch St'),
(6, 6, '4111178911111111', 'Frank Gibson', '453', '2027-04-01', 'Visa', '456 Cedar St'),
(7, 7, '4032888888881881', 'Grace Harris', '345', '2028-11-01', 'Visa', '789 Spruce St'),
(8, 8, '4222555522222', 'Henry Ingram', '872', '2027-06-01', 'Visa', '101 Ash St'),
(9, 9, '5099717010103742', 'Isabel Jennings', '375', '2028-01-01', 'Discover', '123 Fir St'),
(10, 10, '6391101999990016', 'Jason Keller', '843', '2027-03-01', 'Switch', '456 Elm St');

INSERT INTO [Notification] (NotificationID, InvestorID, Message, Date) VALUES
(1, 1, 'Alice Baker, your watchlist stock Tech Innovate has moved 5%', '2023-03-22'),
(2, 2, 'Bob Carter, your account balance has been updated', '2023-03-23'),
(3, 3, 'Carol Dennison, a new stock has been added to your sector of interest: Healthcare', '2023-03-24'),
(4, 4, 'David Ellis, reminder: Your portfolio review is due next week', '2023-03-25'),
(5, 5, 'Eve Foster, Eco Foods has reached a new high! It might be time to review your position.', '2023-03-26'),
(6, 6, 'Frank Gibson, your order for NextGen Telecom has been successfully executed', '2023-03-27'),
(7, 7, 'Grace Harris, AutoWorks’ latest quarterly earnings have exceeded expectations', '2023-03-28'),
(8, 8, 'Henry Ingram, Urban Developments has seen a 10% decrease this month', '2023-03-29'),
(9, 9, 'Isabel Jennings, Fashion Forward has announced an increase in its dividend', '2023-03-30'),
(10, 10, 'Jason Keller, CyberSecure will be featured at the upcoming technology security conference', '2023-03-31');

INSERT INTO [Platform] (PlatformID, Name, ServiceFee, MinimumDeposit) VALUES 
(1, 'QuickTrade', 0.05, 1500.00),
(2, 'StockStream', 0.05, 2500.00),
(3, 'MarketMate', 0.04, 3000.00),
(4, 'TradeHub', 0.06, 4000.00),
(5, 'AlphaInvest', 0.05, 3000.00),
(6, 'BetaBrokers', 0.03, 5000.00),
(7, 'GammaTrades', 0.03, 6500.00),
(8, 'DeltaDeals', 0.03, 5500.00),
(9, 'EpsilonExchange', 0.03, 4500.00),
(10, 'ZetaMarkets', 0.07, 500.00);

INSERT INTO Employee (EmployeeID, FirstName, LastName, PlatformID, PhoneNumber) VALUES
(1,'Karly','Bradshaw', 1,'1-851-489-2211'),
(2,'Armando','Garrett', 2,'1-383-749-8662'),
(3,'Hayley','Monroe', 3,'1-394-232-6546'),
(4,'Tate','Bass', 4,'1-778-866-6783'),
(5,'Dai','Cross', 5,'1-745-161-1876'),
(6,'Astra','Martinez', 6,'1-894-613-8764'),
(7,'Barry','Monroe', 7,'1-631-277-3511'),
(8,'Piper','Hunter', 8,'1-889-623-8329'),
(9,'Kane','Dalton', 9,'1-252-639-1077'),
(10,'Octavius','Ball', 10,'1-738-737-6181'),
(11,'Graham','Guthrie',1,'1-410-588-9791'),
(12,'Cairo','Osborn',2,'1-483-138-2672'),
(13,'Drew','Kirkland',3,'1-395-773-0751'),
(14,'Castor','Clay',4,'1-445-338-8175'),
(15,'Hashim','Travis',5,'1-803-668-2717');

-- Sai
INSERT INTO Account (AccountID, PlatformID, Balance, InvestorID) VALUES
(101, 1, 0.00, 1),
(102, 2, 0.00, 2),
(103, 3, 0.00, 3),
(104, 4, 0.00, 4),
(105, 5, 0.00, 5),
(106, 6, 0.00, 6),
(107, 7, 0.00, 7),
(108, 8, 0.00, 8),
(109, 9, 0.00, 9),
(110, 10, 0.00, 10);

INSERT INTO Policy (PolicyID, [PlatformID], Description) VALUES
(1, 1, 'No trading fee on your birthday'),
(2, 2, '1% cashback on trades over $10,000'),
(3, 3, 'Zero commission on the first trade each month'),
(4, 4, 'Free trading course for new users'),
(5, 5, 'VIP customer support for accounts over $50,000'),
(6, 6, 'Extended trading hours for premium members'),
(7, 7, 'Automatic tax optimization for trades'),
(8, 8, 'Exclusive webinars with market experts'),
(9, 9, 'Priority access to new stock listings'),
(10, 10, 'Customized news feed based on your interests');

INSERT INTO Watchlist (WatchlistID, InvestorID, ListName) VALUES
(1, 1, 'Tech Titans'),
(2, 2, 'Healthcare Innovators'),
(3, 3, 'Energy Pioneers'),
(4, 4, 'Financial Leaders'),
(5, 5, 'Consumer Champions'),
(6, 6, 'Telecom Giants'),
(7, 7, 'Automotive Adventurers'),
(8, 8, 'Real Estate Moguls'),
(9, 9, 'Fashion Forward'),
(10, 10, 'Cybersecurity Specialists');

-- Shivani
INSERT INTO WatchlistRecord (WatchlistID, StockID, AddDate) VALUES
(1, 1, '2023-02-01'),
(2, 2, '2023-02-02'),
(3, 3, '2023-02-03'),
(4, 4, '2023-02-04'),
(5, 5, '2023-02-05'),
(6, 6, '2023-02-06'),
(7, 7, '2023-02-07'),
(8, 8, '2023-02-08'),
(9, 9, '2023-02-09'),
(10, 10, '2023-02-10');

-- Jilson
INSERT INTO StockPriceInfo (StockID, Date, [Open], [Current], [Close], Volume) VALUES
(1, '2023-03-01', 100.00, 107.00, 105.00, 5000),
(2, '2023-03-01', 200.00, 205.00, 210.00, 3000),
(3, '2023-03-01', 50.00, 60.00, 55.00, 8000),
(4, '2023-03-01', 75.00, 90.00, 80.00, 6000),
(5, '2023-03-01', 150.00, 153.00, 155.00, 4000),
(6, '2023-03-01', 154.00, 147.00, 130.00, 7000),
(7, '2023-03-01', 180.00, 187.00, 185.00, 5500),
(8, '2023-03-01', 235.00, 236.00, 225.00, 3500),
(9, '2023-03-01', 95.00, 97.00, 100.00, 4500),
(10, '2023-03-01', 105.00, 101.00, 90.00, 6500);

INSERT INTO [Order] (AccountID, StockID, Quantity, [Date]) VALUES
(101, 1, 10, '2023-03-01'),
(102, 2, 5, '2023-03-01'),
(103, 3, 10, '2023-03-01'),
(104, 4, 10, '2023-03-01'),
(105, 5, 10, '2023-03-01'),
(106, 6, 15, '2023-03-01'),
(107, 7, 10, '2023-03-01'),
(108, 8, 15, '2023-03-01'),
(109, 9, 15, '2023-03-01'),
(110, 10, 5, '2023-03-01');

INSERT INTO TransactionHistory (TransactionID, source_AccountID, money_amount, transaction_date, destination_AccountID) VALUES
(1, 105, 500.00, '2024-04-01', 106),
(2, 105, 100.50, '2024-04-02', 106),
(3, 108, 750.25, '2024-02-03', 104),
(4, 104, 300.75, '2024-02-01', 103),
(5, 102, 450.00, '2024-02-25', 105),
(6, 110, 350.00, '2024-02-22', 109),
(7, 105, 200.00, '2024-02-15', 104),
(8, 106, 100.00, '2024-04-05', 102),
(9, 105, 700.00, '2024-04-05', 110),
(10, 105, 310.00, '2024-04-05', 107);









