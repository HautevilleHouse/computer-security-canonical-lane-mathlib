import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

def ConstrainedSecurityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_security_endgame (A : AdmissibleClass) :
    ConstrainedSecurityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse