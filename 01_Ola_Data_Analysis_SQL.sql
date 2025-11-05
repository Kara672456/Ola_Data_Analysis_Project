-- SQL Questions:

-- 1. Retrieve all successful bookings:
	  select * FROM bookings
	  Where Booking_Status = 'Success';

-- 2. Find the average ride distance for each vehicle type:
	  Select Vehicle_Type, AVG(Ride_Distance)
	  as avg_distance From bookings
	  Group By Vehicle_Type;
	  
-- 3. Get the total number of cancelled rides by customers:
	  Select COUNT(*) AS total_cancelled_rides
	  From bookings
	  Where Booking_Status = 'Canceled by Customer';

-- 4. List the top 5 customers who booked the highest number of rides:
	  Select TOP 5 Customer_ID, COUNT(Booking_ID) as total_rides
	  From bookings
	  Group By Customer_ID
	  Order By total_rides DESC;

-- 5. Get the number of rides cancelled by drivers due to Change of Plans:
	  Select 
	  COUNT(Canceled_Rides_by_Customer)
	  FROM bookings
	  Where Canceled_Rides_by_Customer = 'Change of Plans';
	  
-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
	  select MAX(Driver_Ratings) as max_rating,
	         MIN(Driver_Ratings) as min_ratings
	  From bookings
	  Where Vehicle_Type = 'Prime Sedan';

-- 7. Retrieve all rides where payment was made using UPI:
	  Select *
	  From bookings
	  Where Payment_Method = 'UPI';

-- 8. Find the average customer rating per vehicle type:
	  Select AVG(Customer_Rating) AS avg_rating,
		     Vehicle_Type
	  From bookings
	  Group By Vehicle_Type;

-- 9. Calculate the total booking value of rides completed successfully:
	   SELECT SUM(Booking_Value) as total_successful_value
	   from bookings
	   Where Booking_Status = 'Success';

-- 10. List all incomplete rides along with the reason:	   Select 	   Booking_ID,	   Incomplete_Rides_Reason
	   From bookings
	   Where Incomplete_Rides = 1;




