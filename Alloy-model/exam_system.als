sig Student {}
sig Exam {}

sig Attempt {
    student: Student,
    exam: Exam
}

one sig ExamSystem {
    attempts: set Attempt,
    submitted: Student -> Exam
}

-- Fact: Har attempt record system mein map hona chahiye
fact AttemptMapping {
    all a: Attempt | a.student -> a.exam in ExamSystem.submitted
}

-- Invariant: Single Submission Rule (Ek student ek exam ek hi baar submit karega)
fact SingleSubmission {
    all s: Student, e: Exam |
        (s -> e in ExamSystem.submitted) => (lone a: Attempt | a.student = s and a.exam = e)
}

-- Assertion: Check duplicate submissions safety
assert NoDuplicateSubmissions {
    all s: Student, e: Exam | 
        not (some disj a1, a2: Attempt | a1.student = s and a1.exam = e and a2.student = s and a2.exam = e)
}

run show for 5
check NoDuplicateSubmissions for 5