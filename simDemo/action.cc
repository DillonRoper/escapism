#include "action.h"

template <typename... Args>
Action<Args...>::Action(void (*alg)(int, Args...)) {

}


// Action List: contains all possible actions that a Being can do
std::vector<Action> action_list = {
  Action(),
  Action(),
};
