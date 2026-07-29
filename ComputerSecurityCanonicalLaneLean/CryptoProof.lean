import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputerSecurityCanonicalLaneLean.AdmissibleObject

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure CryptographicPrimitive where
  encryptionScheme : Prop
  decryptionScheme : Prop
  correctness : Prop
  securityReduction : Prop

structure CryptographicEvidence (P : CryptographicPrimitive) where
  encryptionSchemeClosed : P.encryptionScheme
  decryptionSchemeClosed : P.decryptionScheme
  correctnessClosed : P.correctness
  securityReductionClosed : P.securityReduction

def CryptographicPrimitiveClosed (P : CryptographicPrimitive) : Prop :=
  P.encryptionScheme ∧ P.decryptionScheme ∧ P.correctness ∧ P.securityReduction

theorem cryptographic_primitive_closed_from_evidence
    (P : CryptographicPrimitive) (E : CryptographicEvidence P) :
    CryptographicPrimitiveClosed P := by
  exact And.intro E.encryptionSchemeClosed
    (And.intro E.decryptionSchemeClosed
      (And.intro E.correctnessClosed E.securityReductionClosed))

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse
