cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  hernia---primary:
    run: hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  irreducible-abdominal-hernia---primary:
    run: irreducible-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: hernia---primary/output
  abdominal-hernia---primary:
    run: abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: irreducible-abdominal-hernia---primary/output
  abdominal-hernia-excision---primary:
    run: abdominal-hernia-excision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: abdominal-hernia---primary/output
  primary-abdominal-hernia---primary:
    run: primary-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-excision---primary/output
  natural-abdominal-hernia---primary:
    run: natural-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: primary-abdominal-hernia---primary/output
  prosthetic-abdominal-hernia---primary:
    run: prosthetic-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: natural-abdominal-hernia---primary/output
  abdominal-hernia-suture---primary:
    run: abdominal-hernia-suture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: prosthetic-abdominal-hernia---primary/output
  inguinal-abdominal-hernia---primary:
    run: inguinal-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-suture---primary/output
  abdominal-hernia-reduction---primary:
    run: abdominal-hernia-reduction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: inguinal-abdominal-hernia---primary/output
  endoscopic-abdominal-hernia---primary:
    run: endoscopic-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-reduction---primary/output
  bilateral-abdominal-hernia---primary:
    run: bilateral-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: endoscopic-abdominal-hernia---primary/output
  abdominal-hernia-specified---primary:
    run: abdominal-hernia-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: bilateral-abdominal-hernia---primary/output
  abdominal-hernia-recurr---primary:
    run: abdominal-hernia-recurr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-specified---primary/output
  abdominal-hernia-herniorrhaphy---primary:
    run: abdominal-hernia-herniorrhaphy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-recurr---primary/output
  abdominal-hernia-remov---primary:
    run: abdominal-hernia-remov---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-herniorrhaphy---primary/output
  femoral-abdominal-hernia---primary:
    run: femoral-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-remov---primary/output
  paraumbilical-abdominal-hernia---primary:
    run: paraumbilical-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: femoral-abdominal-hernia---primary/output
  abdominal-hernia-incision---primary:
    run: abdominal-hernia-incision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: paraumbilical-abdominal-hernia---primary/output
  other-abdominal-hernia---primary:
    run: other-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-incision---primary/output
  ventral-abdominal-hernia---primary:
    run: ventral-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: other-abdominal-hernia---primary/output
  epigastric-abdominal-hernia---primary:
    run: epigastric-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ventral-abdominal-hernia---primary/output
  abdominal-hernia-cavity---primary:
    run: abdominal-hernia-cavity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: epigastric-abdominal-hernia---primary/output
  abdominal-hernia-bubonocele---primary:
    run: abdominal-hernia-bubonocele---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-cavity---primary/output
  indirect-abdominal-hernia---primary:
    run: indirect-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-bubonocele---primary/output
  abdominal-hernia-gangrene---primary:
    run: abdominal-hernia-gangrene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: indirect-abdominal-hernia---primary/output
  abdominal-hernia-obstruction---primary:
    run: abdominal-hernia-obstruction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-gangrene---primary/output
  simple-abdominal-hernia---primary:
    run: simple-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-obstruction---primary/output
  abdominal-hernia-lumbar---primary:
    run: abdominal-hernia-lumbar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: simple-abdominal-hernia---primary/output
  abdominal-hernia-obturator---primary:
    run: abdominal-hernia-obturator---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-lumbar---primary/output
  retroperitoneal-abdominal-hernia---primary:
    run: retroperitoneal-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-obturator---primary/output
  spigelian-abdominal-hernia---primary:
    run: spigelian-abdominal-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: retroperitoneal-abdominal-hernia---primary/output
  abdominal-hernia-procedure---primary:
    run: abdominal-hernia-procedure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: spigelian-abdominal-hernia---primary/output
  abdominal-hernia---secondary:
    run: abdominal-hernia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-procedure---primary/output
  abdominal-hernia-excision---secondary:
    run: abdominal-hernia-excision---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: abdominal-hernia---secondary/output
  abdominal-hernia-herniotomy---secondary:
    run: abdominal-hernia-herniotomy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-excision---secondary/output
  inguinal-abdominal-hernia---secondary:
    run: inguinal-abdominal-hernia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-herniotomy---secondary/output
  natural-abdominal-hernia---secondary:
    run: natural-abdominal-hernia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: inguinal-abdominal-hernia---secondary/output
  prosthetic-abdominal-hernia---secondary:
    run: prosthetic-abdominal-hernia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: natural-abdominal-hernia---secondary/output
  abdominal-hernia-suture---secondary:
    run: abdominal-hernia-suture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: prosthetic-abdominal-hernia---secondary/output
  abdominal-hernia-unspecified---secondary:
    run: abdominal-hernia-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-suture---secondary/output
  previous-abdominal-hernia---secondary:
    run: previous-abdominal-hernia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: abdominal-hernia-unspecified---secondary/output
  femoral-abdominal-hernia---secondary:
    run: femoral-abdominal-hernia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: previous-abdominal-hernia---secondary/output
  umbilical-abdominal-hernia---secondary:
    run: umbilical-abdominal-hernia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: femoral-abdominal-hernia---secondary/output
  incisional-abdominal-hernia---secondary:
    run: incisional-abdominal-hernia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: umbilical-abdominal-hernia---secondary/output
  other-abdominal-hernia---secondary:
    run: other-abdominal-hernia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: incisional-abdominal-hernia---secondary/output
  ventral-abdominal-hernia---secondary:
    run: ventral-abdominal-hernia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: other-abdominal-hernia---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: ventral-abdominal-hernia---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
