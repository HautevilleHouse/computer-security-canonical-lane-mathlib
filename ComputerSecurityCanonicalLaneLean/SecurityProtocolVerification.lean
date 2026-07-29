import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputerSecurityCanonicalLaneLean.DolevYaoModel

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure SecurityProtocol where
  initiatorState : Prop
  responderState : Prop
  sessionKeyDerivation : Prop
  authenticationGuarantee : Prop

structure SecurityProtocolEvidence (P : SecurityProtocol) where
  initiatorStateClosed : P.initiatorState
  responderStateClosed : P.responderState
  sessionKeyDerivationClosed : P.sessionKeyDerivation
  authenticationGuaranteeClosed : P.authenticationGuarantee

def SecurityProtocolClosed (P : SecurityProtocol) : Prop :=
  P.initiatorState ∧ P.responderState ∧ P.sessionKeyDerivation ∧ P.authenticationGuarantee

theorem security_protocol_closed_from_evidence
    (P : SecurityProtocol) (E : SecurityProtocolEvidence P) :
    SecurityProtocolClosed P := by
  exact And.intro E.initiatorStateClosed
    (And.intro E.responderStateClosed
      (And.intro E.sessionKeyDerivationClosed E.authenticationGuaranteeClosed))

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse
