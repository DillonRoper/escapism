This is a demo for the general purpose NPC AI that I am trying to design.

-- Overview --
Every single AI in the game should be operating from the same "Being" foundation
which will allow for the most flexible and immersive experience for players.
This template operates on the ideas of "State", "Desire", and "Task". The 
state of an NPC is described within its own variables (e.g. health, items).
The desires of an NPC are formed from its state based on the stats that it wants
to improve. The tasks available to NPC are hardcoded based on a variety of
state factors. From the instantiation of an NPC, it enters a threaded behavioral
loop that goes like this:

1. Assess state to judge/rank desires
2. Choose the most "urgent" desire
3. Find all tasks that have that desire in their effects
4. Compute all task paths to find the path of least cost and greatest advantage
5. Complete task path and repeat above steps

In this way, we can ensure that in a well-balanced system the AI will always
complete tasks in order of their true importance to ensure the survival of all
NPCs (assuming ideal circumstances).

I still have some concerns regarding computational efficiency, especially with
the Task graphs since I am unsure how to minimize memory use.

-- Being --
Defines any NPC in the game.