# Validation and Testing Checklist

## 1. Formal Verification Status
- [x] Z-Notation syntax checked and type-verified.
- [x] VDM-SL pre/post conditions executed in Overture Tool without warnings.
- [x] Alloy assertion `NoDuplicateSubmissions` verified with no counterexamples found.

## 2. Security Testing (OWASP ZAP Target Summary)
- **SQL Injection:** Mitigated via parameterized input fields in prototype login.
- **Broken Authentication:** Session tokens expire automatically after exam duration ends.
- **Data Integrity:** Database rules strictly enforce that `scores` cannot be updated once written.