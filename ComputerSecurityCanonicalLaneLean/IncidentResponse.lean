import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSecurityCanonicalLaneLean

structure IncidentResponsePackage where
  detectionMethods : Type
  containmentPolicies : Prop
  eradicationProcedures : Prop
  recoverySteps : Prop
  postIncidentAnalysis : Prop

structure IncidentResponseEvidence (I : IncidentResponsePackage) where
  containmentPoliciesClosed : I.containmentPolicies
  eradicationProceduresClosed : I.eradicationProcedures
  recoveryStepsClosed : I.recoverySteps
  postIncidentAnalysisClosed : I.postIncidentAnalysis

def IncidentResponseClosed (I : IncidentResponsePackage) : Prop :=
  I.containmentPolicies ∧ I.eradicationProcedures ∧ I.recoverySteps ∧ I.postIncidentAnalysis

theorem incident_response_closed_from_evidence
    (I : IncidentResponsePackage) (E : IncidentResponseEvidence I) :
    IncidentResponseClosed I := by
  exact And.intro E.containmentPoliciesClosed
    (And.intro E.eradicationProceduresClosed
      (And.intro E.recoveryStepsClosed E.postIncidentAnalysisClosed))

end ComputerSecurityCanonicalLaneLean
end HautevilleHouse