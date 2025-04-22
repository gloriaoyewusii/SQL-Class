CREATE DATABASE lagos_rides;
USE lagos_rides;

CREATE TABLE DRIVERS (
		DriverID 	Int 			NOT NULL auto_increment,
        DriverName 	Char(50) 		NOT NULL,
        Rating		decimal (2, 1) 	NOT NULL,
        TotalRides	Int				NOT NULL,
        constraint DriverPK			PRIMARY KEY(DriverID)
		);
        
CREATE TABLE RIDERS	(
			RiderID		Int 		NOT NULL auto_increment,
            RiderName	Char(50)	NOT NULL,
            City		Char(25)	NOT NULL,
            CONSTRAINT	RiderPK		PRIMARY KEY(RiderID)
			);
            
	CREATE TABLE RIDES	(
				RideID 		Int 			NOT NULL auto_increment,
                DriverID	Int				NOT NULL,
                RiderID		Int				NOT NULL,
                Fare		Int				NOT NULL,
                Rating		decimal(2, 1)	NOT NULL,
                DistanceKM	Int				NOT NULL,
                CONSTRAINT	RidesPK				PRIMARY	KEY	(RideID),
                CONSTRAINT	Rides_Drivers_FK	FOREIGN KEY	(DriverID)	REFERENCES	DRIVERS	(DriverID),
                CONSTRAINT	Rides_Riders_FK		FOREIGN	KEY	(RiderID)	REFERENCES	RIDERS	(RiderID)
				);
                
	CREATE TABLE PAYMENTS	(
				PaymentID		Int			NOT NULL auto_increment,
                RideID			Int			NOT NULL,
                Amount			Int			NOT NULL,
                PaymentMethod	Char(35)	NOT NULL,
                CONSTRAINT		PaymentsPK	PRIMARY	KEY	(PaymentID),
                CONSTRAINT		Payments_Rides_FK	FOREIGN KEY (RideID)	REFERENCES	RIDES(RideID)
                );