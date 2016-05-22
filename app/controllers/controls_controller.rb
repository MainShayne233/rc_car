class ControlsController < ApplicationController

  before_action :unexport_all

  def index
  end

  def forward
    [17,22].each do |pin|
      export(pin)
      set_out(pin)
      turn_on(pin)
    end
    render_nothing
  end

  def backward
    [18,27].each do |pin|
      export(pin)
      set_out(pin)
      turn_on(pin)
    end
    render_nothing
  end

  def left
    [17].each do |pin|
      export(pin)
      set_out(pin)
      turn_on(pin)
    end
    render_nothing
  end

  def right
    [22].each do |pin|
      export(pin)
      set_out(pin)
      turn_on(pin)
    end
    render_nothing
  end

  def kill_forward
    render_nothing
  end

  def kill_backward
    render_nothing
  end

  def kill_left
    render_nothing
  end

  def kill_right
    render_nothing
  end

  private

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

  def unexport_all
    [17,18,27,22].each {|pin| `echo #{pin} > /sys/class/gpio/unexport`}
  end

end
