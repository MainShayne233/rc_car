class ControlsController < ApplicationController

  before_action :kill_all_turn, only: [:left, :right]

  before_action :kill_all_movement, only: [:forward, :backward]

  def index
  end

  def forward
    export 27
    set_out 27
    turn_on 27
    render_nothing
  end

  def backward
    export 22
    set_out 22
    turn_on 22
    render_nothing
  end

  def left
    export 18
    set_out 18
    turn_on 18
    render_nothing
  end

  def right
    export 17
    set_out 17
    turn_on 17
    render_nothing
  end

  def kill_movement
    kill_all_movement
    render_nothing
  end

  def kill_turn
    kill_all_turn
    render_nothing
  end

  private

  def kill_all_turn
    [17,18].each {|pin| unexport(pin)}
  end

  def kill_all_movement
    [22,27].each {|pin| unexport(pin)}
  end

  def render_nothing
    render json: nil, status: :ok
  end

  def export(pin)
    `echo #{pin} > /sys/class/gpio/export`
  end

  def set_out(pin)
    `echo out > /sys/class/gpio/gpio#{pin}/direction`
  end

  def turn_on(pin)
    `echo 1 > /sys/class/gpio/gpio#{pin}/value`
  end

  def unexport(pin)
    `echo #{pin} > /sys/class/gpio/unexport`
  end

end

