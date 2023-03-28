import Adam.Metadata

set_option tactic.hygienic false

Game "Adam"
World "Implication"
Level 2

Title "Revert"

Introduction
"Jemand aus der Gruppe gibt dir ein Blatt Papier mit einer Zeile Text:"

Statement (A B : Prop) (ha : A) (h : A → B) : B := by
  Hint "**Robo**: Mit `revert {ha}` kann man die Annahme `ha` als
  Implikationsprämisse vorne ans Goal anhängen, dann ist das Goal `{A} → {B}`.

  **Du**: Das wirkt etwas unnatürlich.

  **Robo**: Schon, ja. Aber als Tool kann das manchmal nützlich sein."
  revert ha
  assumption

Conclusion "**Du**: Aber das müsste doch auch anders gehen, ich hätte jetzt intuitiv
die Implikation $A \\Rightarrow B$ angewendet und behauptet, dass es genügt $A$ zu zeigen…

Daraufhin lächelt der Fragende nur vorahnend."

NewTactic revert
DisabledTactic tauto