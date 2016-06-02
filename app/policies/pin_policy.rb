class PinPolicy

  attr_reader :user, :pin

  def initialize user, pin
    @user = user
    @pin = pin
  end

  def edit?
    pin.user == user
  end

  def update?
    pin.user == user
  end

  def destroy?
    pin.user == user
  end
end
