require "./brave.rb"
require "./monster.rb"

brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)


while  brave.hp > 0 && monster.hp > 0
  brave.attack(monster)
  monster.attack(brave) if monster.hp > 0

  puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
  TEXT
end

if brave.hp > 0
  puts "#{monster.name}をやっつけた！"
else
  puts "#{brave.name}は死んでしまった！"
end