# Test cases and sample outcomes

| Case | Action | Expected result |
|---|---|---|
| Normal booking | Register `KA01AB1234`, owner `Asha`, Car | A free slot is assigned; dashboard and CSV update |
| Duplicate active vehicle | Park `KA01AB1234` a second time | “This vehicle is already parked.”; no second slot consumed |
| Full facility | Fill all 12 slots and request one more vehicle | “Parking is full.” |
| Exit | Exit `KA01AB1234` | Slot becomes available; fee is at least ₹40 for a car |
| Unknown exit | Exit a registration not currently parked | Clear error dialog; state unchanged |
| Concurrent contention | Run 16 concurrent requests against 12 empty slots | Exactly 12 successes and 4 full responses; no duplicate slots |
| Persistence | Restart after parking and after exit | Active occupancy and completed ticket history reload |
| Invalid form | Submit blank owner or registration | Validation error; no booking |

Simulation output example (thread order varies):

```text
Booking-3 — SIM-003 booked slot 1
Booking-1 — SIM-001 booked slot 2
...
Booking-16 — SIM-016: Parking is full.
```

The run order is nondeterministic; counts and unique slot allocation are the correctness criteria.
