StateMachine = Class{}

function StateMachine:init(states)
    self.empty = {
        render = function() end,
        update = function() end,
        render = function() end,
        exit = function() end,
    }
    self.states = states or {}
    self.current = self.empty
end

function StateMachine:change(stateName, params)
    assert(self.states[stateName]) --state must exist
    self.current:exit()
    self.current = self.states[stateName]()
    self.current:enter(params)
end

function StateMachine:update(dt)
    self.current:update(dt)
end

function StateMachine:render()
    self.current:render()
end