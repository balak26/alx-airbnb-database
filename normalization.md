# Database Normalization: Achieving 3NF

## Goal  
Normalize the relational schema to **Third Normal Form (3NF)** to eliminate redundancy and maintain data integrity throughout the system.

---

## Normalization Breakdown

### 1. **First Normal Form (1NF)**  
**Requirement:** All attributes must hold atomic values; every row must be uniquely identifiable.

✅ **Status:**  
- Fields like `email`, `pricepernight`, and `phone_number` are already atomic.  
- Each table includes a primary key (typically a UUID), ensuring record uniqueness.

---

### 2. **Second Normal Form (2NF)**  
**Requirement:** Must be in 1NF, and all non-key attributes should fully depend on the entire primary key (no partial dependencies).

✅ **Status:**  
- All primary keys are single-column UUIDs.  
- Every non-key field is fully dependent on its respective primary key — no issues here.

---

### 3. **Third Normal Form (3NF)**  
**Requirement:** Must be in 2NF, and there should be no transitive dependencies — meaning, all attributes must depend **only** on the primary key, not on other non-key attributes.

✅ **Status:**  
Most tables are already well-structured. Here's a quick review and cleanup where necessary:

---

## Table Review

### **User**
- Clean and in 3NF.
- All fields (e.g., `email`, `role`) directly relate to the `user_id`.

---

### **Property**
- Already in 3NF.
- All columns describe the property itself.
- `host_id` is a foreign key and doesn’t introduce transitive dependency.

---

### **Booking**
- No normalization issues.
- Every field — like `start_date`, `total_price`, and `status` — depends directly on `booking_id`.

---

### **Payment**
- Fully normalized.
- Fields like `amount`, `payment_method`, and `payment_status` are tied directly to `payment_id`.
- `booking_id` is a foreign key and doesn’t violate 3NF.

---

### **Review**
- Normalized.
- `review_id` is the primary key, and all attributes like `rating` and `comment` relate directly to it.

---

### **Message**
- No issues.
- Each message is identified by `message_id`, and sender/recipient IDs are foreign keys with no transitive dependencies.

---

## Suggested Improvements (Beyond 3NF)

- Add `UNIQUE(property_id, user_id)` in the **Review** table to prevent users from submitting multiple reviews for the same property.
- If only one payment per booking is allowed, enforce `UNIQUE(booking_id)` in **Payment**.

---

## Final Notes

✅ **Final Status:**  
All tables are now in **Third Normal Form (3NF)**.  
The schema is clean, efficient, and reliable — designed for scalability and ease of maintenance without compromising data quality.
