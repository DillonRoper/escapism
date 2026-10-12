#include <cstdint>

#ifndef DESIRE_H_
  #define DESIRE_H_

  #define DTYPE_CONST 0
  #define DTYPE_LINEAR 1
  #define DTYPE_EXPOGROW 2
  #define DTYPE_EXPODECAY 3

  class Desire {
    public:

    private:
      uint8_t type_;
      uint8_t weight_;
  };  // Desire

  class HealthDesire : public Desire {
    private:
      
  };  // HealthDesire

#endif  // DESIRE_H_