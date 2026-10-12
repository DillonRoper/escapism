#include <cstdint>
#include <vector>
#include <string>

template <typename... args>
class Action {
  public:
  Action(void (*alg)(int, args));

  private:

};  // Action

template <typename... args>
extern std::vector<Action<args>> action_list;