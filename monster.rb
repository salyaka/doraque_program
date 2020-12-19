require "./character.rb"

class Monster < Character
  def attack(brave)
    puts "#{@name}の攻撃！"
    offensive_power = @offense - brave.defense / 2
    puts "#{brave.name}は#{offensive_power}のダメージを受けた！"
    brave.hp -= offensive_power

    brave.hp = 0 if brave.hp < 0
  end
end