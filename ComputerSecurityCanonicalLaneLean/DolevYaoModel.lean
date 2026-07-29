import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputerSecurityCanonicalLaneLean.AdmissibleObject

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure DolevYaoPackage where
  attackerControlsNetwork : Prop
  attackerCanIntercept : Prop
  attackerCanDecryptWithKey : Prop
  attackerCanGenerateFreshNonces : Prop
  protocolMessages : Prop

structure DolevYaoEvidence (D : DolevYaoPackage) where
  attackerControlsNetworkClosed : D.attackerControlsNetwork
  attackerCanInterceptClosed : D.attackerCanIntercept
  attackerCanDecryptWithKeyClosed : D.attackerCanDecryptWithKey
  attackerCanGenerateFreshNoncesClosed : D.attackerCanGenerateFreshNonces
  protocolMessagesClosed : D.protocolMessages

def DolevYaoClosed (D : DolevYaoPackage) : Prop :=
  D.attackerControlsNetwork ∧ D.attackerCanIntercept ∧
  D.attackerCanDecryptWithKey ∧ D.attackerCanGenerateFreshNonces ∧
  D.protocolMessages

theorem dolev_yao_closed_from_evidence (D : DolevYaoPackage) (E : DolevYaoEvidence D) :
    DolevYaoClosed D := by
  exact And.intro E.attackerControlsNetworkClosed
    (And.intro E.attackerCanInterceptClosed
      (And.intro E.attackerCanDecryptWithKeyClosed
        (And.intro E.attackerCanGenerateFreshNoncesClosed
          E.protocolMessagesClosed)))

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse
