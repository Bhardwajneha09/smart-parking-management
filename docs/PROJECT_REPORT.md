# Smart Parking Management System — Project Report

## Synopsis
Parkwise is a desktop parking facility application built with Core Java and Swing. It registers cars, bikes, and trucks; assigns a free slot automatically; records entry and exit; calculates charges; and saves transaction history in CSV. A concurrent booking view demonstrates multiple independent Java threads competing for a finite set of slots while synchronized manager operations prevent double booking.

## Problem statement and objectives
Manual parking records are difficult to keep current, duplicate reservations can occur, and fee calculation is inconsistent. This project provides a small digital workflow to allocate slots, track stays, calculate fees, and demonstrate safe shared-state updates.

## Design
The Swing interface calls `ParkingManager`, which owns the slots and ticket history. Domain objects live under `parking.model`; persistence is isolated in `RecordStore`. `BookingTask` uses `Runnable` to make independent booking requests. The shared manager serializes allocation and exit operations with `synchronized` methods.

## Functional requirements
Dashboard counts; registration and automatic parking; duplicate prevention; vehicle search; exit and fee calculation; available/occupied slot display; transaction history; CSV persistence; concurrent booking simulation.

## Fee algorithm
Elapsed minutes are rounded up to hours, with a one-hour minimum. The number of hours is multiplied by the vehicle's hourly rate: bike ₹20, car ₹40, truck ₹60.

## Synchronization rationale
Checking for a free slot and reserving it must be one indivisible action. If independent threads checked availability outside a lock, two could observe the same free slot. `synchronized park` uses the manager object's monitor around both the check and assignment, so the second thread sees the first thread's reservation.

## Verification plan
Use the test cases in `TEST_CASES.md`. In particular, run more requests than the available slots and confirm the number of successful unique assignments never exceeds capacity.

## Conclusion and future scope
The application demonstrates a complete, approachable Java desktop workflow and core OOP/concurrency concepts. Future improvements could include slot classes by vehicle size, configurable rates and capacity, CSV recovery validation, and a database-backed multi-user service.
