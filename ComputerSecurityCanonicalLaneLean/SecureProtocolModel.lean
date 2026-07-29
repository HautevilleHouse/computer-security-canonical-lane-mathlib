import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure SecureProtocolPackage where
  protocolDefinition : Prop
  threatModel : Prop
  securityProof : Prop
  computationalAssumptions : Prop
  protocolCorrect : Prop

structure SecureProtocolEvidence (P : SecureProtocolPackage) where
  protocolDefinitionClosed : P.protocolDefinition
  threatModelClosed : P.threatModel
  securityProofClosed : P.securityProof
  computationalAssumptionsClosed : P.computationalAssumptions
  protocolCorrectClosed : P.protocolCorrect

def SecureProtocolClosed (P : SecureProtocolPackage) : Prop :=
  P.protocolDefinition ∧ P.threatModel ∧ P.securityProof ∧ P.computationalAssumptions ∧ P.protocolCorrect

theorem secure_protocol_closed_from_evidence (P : SecureProtocolPackage) (E : SecureProtocolEvidence P) :
    SecureProtocolClosed P := by
  exact And.intro E.protocolDefinitionClosed
    (And.intro E.threatModelClosed
      (And.intro E.securityProofClosed
        (And.intro E.computationalAssumptionsClosed E.protocolCorrectClosed)))

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse