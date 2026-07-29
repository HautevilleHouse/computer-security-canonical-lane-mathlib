import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure FormalVerificationPackage where
  specificationLanguage : Type
  proofAssistant : Type
  verifiedImplementations : Prop
  securityAssertionsProved : Prop
  toolchainTrusted : Prop

structure FormalVerificationEvidence (F : FormalVerificationPackage) where
  verifiedImplementationsClosed : F.verifiedImplementations
  securityAssertionsProvedClosed : F.securityAssertionsProved
  toolchainTrustedClosed : F.toolchainTrusted

def FormalVerificationClosed (F : FormalVerificationPackage) : Prop :=
  F.verifiedImplementations ∧ F.securityAssertionsProved ∧ F.toolchainTrusted

theorem formal_verification_closed_from_evidence
    (F : FormalVerificationPackage) (E : FormalVerificationEvidence F) :
    FormalVerificationClosed F := by
  exact And.intro E.verifiedImplementationsClosed
    (And.intro E.securityAssertionsProvedClosed E.toolchainTrustedClosed)

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse