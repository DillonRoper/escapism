#include "being.h"

Being::Being(Form form, Will will) {
  this->form = form;
  this->will = will;
  Exist();
}

void Being::Exist() {
  while (true) {
    vector<Action> actionSequence = NewActionSequence();
    for (Action action : actionSequence) {
      doAction(action);
    }
  } 
}

vector<Action> Being::NewActionSequence() {
  
}

void Being::doAction(Action action) {
  
}

int16_t Being::getDesire(Action action) {

}
