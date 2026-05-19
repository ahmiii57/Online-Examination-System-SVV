# Requirement Defect Taxonomy - Online Examination System

Yeh table un defects (maslon) ko track karti hai jo requirement engineering ke dauran mile aur formal models ke zariye solve kiye gaye.

| Defect ID | Requirement | Defect Type | Description / Issue | Resolution (Sukhna/Fix) | GitHub Issue |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **DEF-01** | FR-04 (Time Limit) | Ambiguity | Yeh clear nahi tha ki time limit har exam ki alag hogi ya poore system ki ek hogi. | Exam Schema mein individual `duration` field add ki gayi. | `#issue-1` |
| **DEF-02** | FR-08 (Submission) | Inconsistency | Internet disconnect hone par re-attempt aur Single Submission rule aapas mein takra rahe the. | Alloy model mein constraint lagaya ki `attempts` double na hon. | `#issue-2` |
| **DEF-03** | NFR-02 (Security) | Vagueness | "System secure hona chahiye" bohot vague tha, test kaise karein? | OWASP ZAP tool automated testing benchmark set kiya gaya. | `#issue-3` |