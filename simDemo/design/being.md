# Being
**Overview**
- A *being* can be broadly defined as anything that possesses *will* and *form*.

**Components**
## Will

**Overview**
- Describes the capacity to make decisions on *actions* that are informed by *objectives* and dependent on *checks*.

**Components**

### Actions

**Overview**
- Anything that qualifies as an *action* must perform a strictly defined, algorithmic script that has some kind of external impact on the game world (external = outside the *will* not necessarily outside the *being*).
- For example, a pathfinding algorithm for an NPC to reach their home would be considered an *action*.

### Checks

**Overview**
- Broadly speaking, the purpose of a *check* is to reference an aspect of the *being*'s *form* to determine if other *actions* need to be added to the *action sequence*.
- Notable examples would be knowledge checks and ability checks, which rely on the *knowledge* and *body_part* structs respectively.
- Each *check* is binary in that it has pass and fail conditions. Passing a test will usually result in continuing the *action sequence* without modification, while failing may result in more *actions* being added or it may make the action in question completely impossible.

## Form

**Overview**
- Describes the physical traits of the *being*, seperate from metaphysical concepts.

**Components**

### Body Parts

**Overview**
- These structs will help determine whether a *being* is physically capable of doing certain *actions*
- Each body part will have associations with objects in the physics engine such that striking a particular body part will effect its status accurately.

### Knowledge

**Overview**

### Persona

**Overview**
- The aspects of a *being* that are part of their metaphysical indentity.
- Some *beings* will have more primitive *personas* but even the most basic *being* will have some kind of *persona*.
- Components of the *persona* that might be excluded for certain primitive *beings* are marked as "nullable."

**Components**

#### Personality

**Overview**
- Every *being* will have a *personality* regardless of how "primitive" they are.
- For simplicity, the conception of personality will be encapsulated by the "OCEAN" model.
- Each of the five personality categories will be assigned a random value on [0, 100]% (represented with a float normalized between [0, 100]).

#### Culture (nullable)

#### 

