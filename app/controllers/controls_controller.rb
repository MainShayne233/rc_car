class ControlsController < ApplicationController
  def index

  end

  def forward
    render_nothing
  end

  def backward
    render_nothing
  end

  def left
    render_nothing
  end

  def right
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

end
