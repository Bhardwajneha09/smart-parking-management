# PPT content — 10 slides

1. **Title:** Parkwise — Smart Parking Management System; student, course, guide.
2. **Problem:** Manual records, uncertain availability, inconsistent charging.
3. **Objectives:** Automatic allocation, entry/exit tracking, fee calculation, persistence.
4. **Technology:** Core Java, Swing, ArrayList, Runnable/Thread, synchronized, CSV.
5. **Architecture:** Swing UI → ParkingManager → model classes and RecordStore.
6. **OOP:** Vehicle abstraction; Car/Bike/Truck inheritance and overridden rates; private data.
7. **Concurrency:** Multiple BookingTask threads share one manager; synchronized `park` protects check-and-assign.
8. **Application demo:** Dashboard, registration form, slot indicators, history table.
9. **Testing:** Normal, duplicate, full, exit, persistence, and 16-request/12-slot contention.
10. **Conclusion:** Demonstrated safe allocation; future work: configurable facility and database.
