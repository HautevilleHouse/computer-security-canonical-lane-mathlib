import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure AccessControlPackage where
  subjects : Type
  objects : Type
  readPolicy : subjects → objects → Prop
  writePolicy : subjects → objects → Prop
  authorizationClosed : Prop
  auditTrail : Prop

structure AccessControlEvidence (A : AccessControlPackage) where
  authorizationClosedClosed : A.authorizationClosed
  auditTrailClosed : A.auditTrail

def AccessControlClosed (A : AccessControlPackage) : Prop :=
  A.authorizationClosed ∧ A.auditTrail

theorem access_control_closed_from_evidence (A : AccessControlPackage)
    (E : AccessControlEvidence A) : AccessControlClosed A := by
  exact And.intro E.authorizationClosedClosed E.auditTrailClosed

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse