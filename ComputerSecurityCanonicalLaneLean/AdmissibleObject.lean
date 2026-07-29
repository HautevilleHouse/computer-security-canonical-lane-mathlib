import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure SecurityAdmittedObject where
  systemModel : Type
  securityProperty : Prop
  adversaryModel : Prop
  propertyHolds : Prop
  conclusion : propertyHolds

def SecurityWitnessClosed (O : SecurityAdmittedObject) : Prop :=
  O.propertyHolds

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse
