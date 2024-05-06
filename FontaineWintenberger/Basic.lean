import Mathlib.Tactic

variable {a b : ℕ}

namespace List
/--
this should be a doc string.
-/
lemma aux : a + b = b + a := add_comm a b

namespace Nat

/--Here is a doc string-/
theorem Ex:a + b = b + a := aux

end Nat

lemma test : 1 + 1 = 2 := sorry



theorem Test : 1 + 1 = 2 := test

end List
