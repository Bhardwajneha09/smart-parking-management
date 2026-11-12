# Viva questions and answers

1. **What is the purpose of the project?** Manage parking slot allocation, vehicle stays, fees, and history.
2. **What is a class?** A blueprint describing state and behavior for objects.
3. **What is an object?** A concrete instance of a class, such as one `Car`.
4. **What is encapsulation?** Keeping fields private and controlling access through methods.
5. **What is inheritance here?** `Car`, `Bike`, and `Truck` extend `Vehicle`.
6. **What is abstraction?** `Vehicle` defines shared behavior while leaving type and rate to subclasses.
7. **What is polymorphism?** A `Vehicle` reference can hold a `Car` and call its overridden rate method.
8. **Why use `ArrayList`?** It provides a simple resizable collection for slots and ticket history.
9. **What does `Runnable` represent?** A unit of work that can run on a thread.
10. **Why use multiple threads?** To model booking requests arriving concurrently.
11. **What is a race condition?** An incorrect result caused by timing-dependent access to shared state.
12. **Why synchronize `park`?** Availability check and slot reservation must happen as one protected operation.
13. **Can two threads book the same slot?** Not through this manager; synchronized access serializes allocation.
14. **What happens when parking is full?** `ParkingException` is raised and displayed as a user-friendly message.
15. **How are charges calculated?** Duration rounds up to an hour, with a one-hour minimum, times the vehicle rate.
16. **Why store entry and exit times?** They provide an auditable stay record and support billing.
17. **How is data persisted?** `RecordStore` writes ticket history to a CSV file.
18. **What is exception handling?** Catching and responding to errors without abruptly terminating the workflow.
19. **What does `synchronized` lock?** The monitor associated with the manager object for an instance synchronized method.
20. **Does this protect against two application processes?** No; Java object locks are process-local. Shared transactional storage would be needed.
21. **What does Swing's EDT do?** It handles GUI events and painting; updates from booking workers are posted with `invokeLater`.
22. **Why use an abstract parent class?** It shares common vehicle identity and requires each subtype to provide its type and rate.
