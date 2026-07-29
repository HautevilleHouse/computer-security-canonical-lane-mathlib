import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure NetworkSecurityProtocolPackage where
  protocolSpecification : Prop
  attackerModel : Prop
  authenticationGoal : Prop
  secrecyGoal : Prop
  formalVerification : Prop

structure NetworkSecurityProtocolEvidence (N : NetworkSecurityProtocolPackage) where
  protocolSpecificationClosed : N.protocolSpecification
  attackerModelClosed : N.attackerModel
  authenticationGoalClosed : N.authenticationGoal
  secrecyGoalClosed : N.secrecyGoal
  formalVerificationClosed : N.formalVerification

def NetworkSecurityProtocolClosed (N : NetworkSecurityProtocolPackage) : Prop :=
  N.protocolSpecification ∧ N.attackerModel ∧ N.authenticationGoal ∧ N.secrecyGoal ∧ N.formalVerification

theorem network_security_protocol_closed_from_evidence (N : NetworkSecurityProtocolPackage) (E : NetworkSecurityProtocolEvidence N) :
    NetworkSecurityProtocolClosed N := by
  exact And.intro E.protocolSpecificationClosed
    (And.intro E.attackerModelClosed
      (And.intro E.authenticationGoalClosed
        (And.intro E.secrecyGoalClosed E.formalVerificationClosed)))

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse