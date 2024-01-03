-- Creating Room Information table
CREATE TABLE Room_Information (
                                  RoomNumber INT PRIMARY KEY,
                                  RoomType VARCHAR(50),
                                  Capacity INT,
                                  PricePerNight INT
);

-- Creating Guest Information table
CREATE TABLE Guest_Information (
                                   GuestID INT PRIMARY KEY,
                                   Name VARCHAR(100),
                                   ContactDetails VARCHAR(100)
);

-- Creating Reservation Information table
CREATE TABLE Reservation_Information (
                                         ReservationID INT PRIMARY KEY,
                                         GuestID INT,
                                         RoomNumber INT,
                                         CheckInDate DATE,
                                         CheckOutDate DATE,
                                         FOREIGN KEY (GuestID) REFERENCES Guest_Information(GuestID),
                                         FOREIGN KEY (RoomNumber) REFERENCES Room_Information(RoomNumber)
);

-- Creating Payment Information table
CREATE TABLE Payment_Information (
                                     PaymentID INT PRIMARY KEY,
                                     ReservationID INT,
                                     PaymentAmount INT,
                                     PaymentDate DATE,
                                     PaymentMethod VARCHAR(50),
                                     FOREIGN KEY (ReservationID) REFERENCES Reservation_Information(ReservationID)
);
