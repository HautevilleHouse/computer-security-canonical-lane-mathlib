import HautevilleHouse.ComputerSecurityCanonicalLaneLean.SecurityAdmissibleClass

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure AttackerCapability where
  eavesdrop : Prop
  tamper : Prop
  spoof : Prop

structure SecurityProtocol where
  participants : Nat
  messages : Type
  securityGoal : String
  formalAnalysis : Prop

structure SecurityEvidence where
  protocol : SecurityProtocol
  capability : AttackerCapability
  proofTerm : formalAnalysis

def securityProtocolClosed (P : SecurityProtocol) : Prop :=
  P.formalAnalysis

theorem security_protocol_closed_from_evidence (P : SecurityProtocol) (E : SecurityEvidence) :
    securityProtocolClosed P := by
  exact E.proofTerm

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse