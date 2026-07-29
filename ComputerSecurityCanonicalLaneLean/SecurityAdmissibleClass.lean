import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure SecurityAdmittedObject where
  system : Type
  attackerModel : Prop
  securityProperty : Prop
  propertyHolds : securityProperty

structure AdmissibleClass where
  object : SecurityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SecurityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def SecurityWitnessClosed (O : SecurityAdmittedObject) : Prop :=
  O.securityProperty

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse