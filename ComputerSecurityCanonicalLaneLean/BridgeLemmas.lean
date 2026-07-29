import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ComputerSecurityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse