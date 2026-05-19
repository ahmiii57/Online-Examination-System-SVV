# Z-Notation Specification for Online Examination System

## 1. State Space Schema
[Student, Exam, Score]

|--- ExamSys -----------------------------
| students: 𝔽 Student
| exams: 𝔽 Exam
| registered: Student ↔ Exam
| appeared: Student ↔ Exam
| scores: (Student × Exam) ⇛ Score
|-----------------------------------------
| dom registered ⊆ students
| ran registered ⊆ exams
| appeared ⊆ registered
| dom scores = appeared
|---|

## 2. Operation Schema: StartExam
|--- StartExam ---------------------------
| ΔExamSys
| s?: Student
| e?: Exam
|-----------------------------------------
| s? ∈ students
| e? ∈ exams
| (s? ↦ e?) ∈ registered
| (s? ↦ e?) ∉ appeared
| appeared' = appeared ∪ {s? ↦ e?}
| students' = students
| exams' = exams
| registered' = registered
| scores' = scores
|---|