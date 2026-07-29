import HautevilleHouse.ComputerSecurityCanonicalLaneLean.SecurityFinalTheorem

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure SecurityRouteObligations where
  confidentiality : Prop
  integrity : Prop
  availability : Prop
  formalVerification : Prop

structure SecurityRouteEvidence (R : SecurityRouteObligations) where
  confidentialityClosed : R.confidentiality
  integrityClosed : R.integrity
  availabilityClosed : R.availability
  formalVerificationClosed : R.formalVerification

def SecurityRouteClosed (R : SecurityRouteObligations) : Prop :=
  R.confidentiality ∧ R.integrity ∧ R.availability ∧ R.formalVerification

theorem security_route_closed_from_evidence (R : SecurityRouteObligations) (E : SecurityRouteEvidence R) :
    SecurityRouteClosed R := by
  exact And.intro E.confidentialityClosed
    (And.intro E.integrityClosed
      (And.intro E.availabilityClosed E.formalVerificationClosed))

structure SecurityCanonicalLaneRoute (A : AdmissibleClass) where
  obligations : SecurityRouteObligations
  evidence : SecurityRouteEvidence obligations
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem security_route_yields_constrained_security_closure
    (A : AdmissibleClass) (R : SecurityCanonicalLaneRoute A) :
    ConstrainedSecurityClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse