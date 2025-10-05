# symptom_checker.jac
"""MediReach — tiny symptom checker (demo)."""

def check_symptom(symp: str) -> str {
    if symp == "fever" {
        return "Possible causes: Malaria or infection. Seek medical advice.";
    }
    if symp == "cough" {
        return "Possible causes: Cold or respiratory infection. If severe, see a clinician.";
    }
    if symp == "headache" {
        return "Possible causes: Migraine, tension headache, or dehydration. Rest and hydrate; seek care if severe.";
    }
    return "Symptom not recognized in demo. Try: fever, cough, headache.";
}

# an entrypoint you can call with arguments
def main(symp: str) -> None {
    print(check_symptom(symp));
}

# default demo that runs when you do `jac run`
with entry {
    print("MediReach Symptom Checker — demo");
    print("Try: jac enter symptom_checker.jac main fever");
    print("Demo run (fever):");
    print(check_symptom("fever"));
}
