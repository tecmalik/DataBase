USE LagosRide;

CREATE TABLE Drivers(
	DriverID			Integer		NOT NUll,
	Name				Char(35)	NOT NULL,
	Rating				Decimal		NULL,
	TotalRides			Integer		NOT NULL,
	CONSTRAINT 			DriverID_PK 	PRIMARY KEY(DriverID)
				
	);

CREATE TABLE Riders(
	RiderID				Integer		NOT NULL,
	Name				Char(35)  	NOT NULL,
	City				Char(35)	NOT NULL,
	CONSTRAINT      		RiderID_PK	PRIMARY KEY(RiderID)
		
	);	
	
CREATE TABLE Rides(
	RideID				Integer 	NOT NULL,
	DriverID			Integer		NOT NULL,
	RiderID				Integer		NOT NULL,
	Fare				Numeric(9,2)	NOT NULL,
	Rating				Decimal	(5,2)	NOT NULL,
	DistanceKM			Integer		NOT NULL,
	CONSTRAINT			Rides_PK	PRIMARY KEY (RideID)
	CONSTRAINT			Rides_FK	FOREIGN KEY (DriverID)
							REFERENCES Drivers(DriverID) 
	CONSTRAINT 			Rides_Riders_FK	FOREIGN KEY (RiderID)
							REFERENCES Riders(RiderID)
	);
CREATE TABLE Payments(
	PaymentID			Integer 	NOT NULL,
	RideID				Integer		NOT NULL,
	Amount				Numeric(9,2)	NOT NULL,
	PaymentMethod			char(35)	NOT NULL,
	CONSTRAINT 			PaymentID_PK	PRIMARY kEY(PaymentID)
	CONSTRAINT 			FK_Payments_Rides FOREIGN KEY (RideID) 
							REFERENCES Rides(RideID)
	);
