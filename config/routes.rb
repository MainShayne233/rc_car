Rails.application.routes.draw do
  root 'controls#index'

  get 'controls/forward' => 'controls#forward'
  get 'controls/backward' => 'controls#backward'
  get 'controls/left' => 'controls#left'
  get 'controls/right' => 'controls#right'

  get 'controls/kill_movement' => 'controls#kill_movement'
  get 'controls/kill_turn' => 'controls#kill_turn'


end
