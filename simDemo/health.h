#include <vector>
#include <cstdint>
#include "Body_Part.h"

#ifndef HEALTH_H_
  #define HEALTH_H_

  using std::vector;

  class Health {
    public:
    Health();
    
    // Adjust variables based on environmental, new, and preexisting factors
    virtual void CalculateTick();
      
    private:
    uint32_t hp_, max_hp_;
    uint32_t rest_, max_rest_;
    uint32_t stamina_, max_stamina_;
    uint32_t hunger_, max_hunger_;
    uint32_t thirst_, max_thirst_;
    uint16_t temp_, min_temp_, max_temp_;  // in kelvin (all values >= 0)
    uint8_t oxygen_, max_oxygen_;
    vector<Body_Part> body_parts_;
  };  // Health

#endif  // HEALTH_H_