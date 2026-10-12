#include <vector>
#include "health.h"
#include "action.h"
#include "form.h"
#include "will.h"

#ifndef BEING_H_
  #define BEING_H_

  class Being {
    public:
    Being() = delete;

    Being(Form form, Will will);

    virtual void Exist();

    virtual vector<Action> NewActionSequence();

    void doAction(Action action);

    int16_t getDesire(Action action);

    private:
    Form form;
    Will will;
  };  // Being

#endif  // BEING_H_
