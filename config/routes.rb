Rails.application.routes.draw do
  root 'controls#index'

  get 'controls/forward' => 'controls#forward'
  get 'controls/backward' => 'controls#backward'
  get 'controls/left' => 'controls#left'
  get 'controls/right' => 'controls#right'

  get 'controls/kill_forward' => 'controls#kill_forward'
  get 'controls/kill_backward' => 'controls#kill_backward'
  get 'controls/kill_left' => 'controls#kill_left'
  get 'controls/kill_right' => 'controls#kill_right'


end
