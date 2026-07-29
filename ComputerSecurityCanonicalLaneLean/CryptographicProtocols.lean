import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure CryptographicProtocolPackage where
  encryptionScheme : Type
  decryptionScheme : Type
  keyDistribution : Prop
  semanticSecurity : Prop
  chosenPlaintextSecurity : Prop

structure CryptographicProtocolEvidence (C : CryptographicProtocolPackage) where
  keyDistributionClosed : C.keyDistribution
  semanticSecurityClosed : C.semanticSecurity
  chosenPlaintextSecurityClosed : C.chosenPlaintextSecurity

def CryptographicProtocolClosed (C : CryptographicProtocolPackage) : Prop :=
  C.keyDistribution ∧ C.semanticSecurity ∧ C.chosenPlaintextSecurity

theorem cryptographic_protocol_closed_from_evidence
    (C : CryptographicProtocolPackage) (E : CryptographicProtocolEvidence C) :
    CryptographicProtocolClosed C := by
  exact And.intro E.keyDistributionClosed
    (And.intro E.semanticSecurityClosed E.chosenPlaintextSecurityClosed)

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse