require "./character.rb"

class Brave < Character
  def attack(monster)
    puts "#{@name}の攻撃！"
    offensive_power = @offense - monster.defense / 2
    puts "#{monster.name}に#{offensive_power}のダメージを与えた！"
    monster.hp -= offensive_power

    if monster.hp < 0
      monster.hp = 0
    end
  end
end
