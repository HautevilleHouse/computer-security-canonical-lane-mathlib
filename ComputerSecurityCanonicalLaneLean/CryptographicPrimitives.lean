import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure CryptographicPrimitivesPackage where
  encryptionScheme : Prop
  signatureScheme : Prop
  hashFunction : Prop
  keyExchange : Prop
  securityReduction : Prop

structure CryptographicPrimitivesEvidence (C : CryptographicPrimitivesPackage) where
  encryptionSchemeClosed : C.encryptionScheme
  signatureSchemeClosed : C.signatureScheme
  hashFunctionClosed : C.hashFunction
  keyExchangeClosed : C.keyExchange
  securityReductionClosed : C.securityReduction

def CryptographicPrimitivesClosed (C : CryptographicPrimitivesPackage) : Prop :=
  C.encryptionScheme ∧ C.signatureScheme ∧ C.hashFunction ∧ C.keyExchange ∧ C.securityReduction

theorem cryptographic_primitives_closed_from_evidence (C : CryptographicPrimitivesPackage) (E : CryptographicPrimitivesEvidence C) :
    CryptographicPrimitivesClosed C := by
  exact And.intro E.encryptionSchemeClosed
    (And.intro E.signatureSchemeClosed
      (And.intro E.hashFunctionClosed
        (And.intro E.keyExchangeClosed E.securityReductionClosed)))

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse