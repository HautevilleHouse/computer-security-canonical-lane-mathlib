import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure AccessControlModelPackage where
  policyDefinition : Prop
  authorizationLogic : Prop
  securityProperty : Prop
  enforcementMechanism : Prop
  correctnessProof : Prop

structure AccessControlModelEvidence (A : AccessControlModelPackage) where
  policyDefinitionClosed : A.policyDefinition
  authorizationLogicClosed : A.authorizationLogic
  securityPropertyClosed : A.securityProperty
  enforcementMechanismClosed : A.enforcementMechanism
  correctnessProofClosed : A.correctnessProof

def AccessControlModelClosed (A : AccessControlModelPackage) : Prop :=
  A.policyDefinition ∧ A.authorizationLogic ∧ A.securityProperty ∧ A.enforcementMechanism ∧ A.correctnessProof

theorem access_control_model_closed_from_evidence (A : AccessControlModelPackage) (E : AccessControlModelEvidence A) :
    AccessControlModelClosed A := by
  exact And.intro E.policyDefinitionClosed
    (And.intro E.authorizationLogicClosed
      (And.intro E.securityPropertyClosed
        (And.intro E.enforcementMechanismClosed E.correctnessProofClosed)))

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse