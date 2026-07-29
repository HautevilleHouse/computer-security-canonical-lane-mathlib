import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure ComputerSecurityAdmittedObject where
  systemModel : Type
  adversaryModel : Prop
  securityStatement : Prop
  proofCarryingCode : Bool

structure AdmissibleClass where
  object : ComputerSecurityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComputerSecurityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse