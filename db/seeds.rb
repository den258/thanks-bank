#coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

give_you = []
give_you << "車の送迎"
give_you << "買い物の手伝い"
give_you << "灯油の購入"
give_you << "庭の草むしり"
give_you << "子供の勉強を見る"
give_you << "パソコンの使い方を教える"
give_you << "夕飯を作る"
give_you << "犬の散歩"
give_you << "重いものを運ぶ"
give_you << "お昼御飯作る"
give_you << "話し相手になる"

give_me = []
give_me << "野菜"
give_me << "お米"
give_me << "味噌"
give_me << "醤油"
give_me << "衣料品"
give_me << "薬"

def get_count_random(gives)
  return (0..gives.length).to_a.shuffle.first
end

def get_gives(gives)
  return gives.shuffle[0, get_count_random(gives)].join(" ")
end

user = User.new
user.account_no = '001'
user.name = '佐藤順その一'
user.area = '宇都宮市宝木町その一'
user.memo = 'プログラマその一'
user.give_me = get_gives(give_me)
user.give_you = get_gives(give_you)
user.save!

user = User.new
user.account_no = '002'
user.name = '佐藤順その二'
user.area = '宇都宮市宝木町その二'
user.memo = 'プログラマその二'
user.give_me = get_gives(give_me)
user.give_you = get_gives(give_you)
user.save!

user = User.new
user.account_no = '003'
user.name = '佐藤順その三'
user.area = '宇都宮市宝木町その三'
user.memo = 'プログラマその三'
user.give_me = get_gives(give_me)
user.give_you = get_gives(give_you)
user.save!

user = User.new
user.account_no = '004'
user.name = '佐藤順その四'
user.area = '宇都宮市宝木町その四'
user.memo = 'プログラマその四'
user.give_me = get_gives(give_me)
user.give_you = get_gives(give_you)
user.save!

user = User.new
user.account_no = '005'
user.name = '佐藤順その五'
user.area = '宇都宮市宝木町その五'
user.memo = 'プログラマその五'
user.give_me = get_gives(give_me)
user.give_you = get_gives(give_you)
user.save!

user = User.new
user.account_no = '006'
user.name = '佐藤順その六'
user.area = '宇都宮市宝木町その六'
user.memo = 'プログラマその六'
user.give_me = get_gives(give_me)
user.give_you = get_gives(give_you)
user.save!

user = User.new
user.account_no = '007'
user.name = '佐藤順その七'
user.area = '宇都宮市宝木町その七'
user.memo = 'プログラマその七'
user.give_me = get_gives(give_me)
user.give_you = get_gives(give_you)
user.save!

user = User.new
user.account_no = '008'
user.name = '佐藤順その八'
user.area = '宇都宮市宝木町その八'
user.memo = 'プログラマその八'
user.give_me = get_gives(give_me)
user.give_you = get_gives(give_you)
user.save!

user = User.new
user.account_no = '009'
user.name = '佐藤順その九'
user.area = '宇都宮市宝木町その九'
user.memo = 'プログラマその九'
user.give_me = get_gives(give_me)
user.give_you = get_gives(give_you)
user.save!

user = User.new
user.account_no = '010'
user.name = '佐藤順その十'
user.area = '宇都宮市宝木町その十'
user.memo = 'プログラマその十'
user.give_me = get_gives(give_me)
user.give_you = get_gives(give_you)
user.save!

user = User.new
user.account_no = '011'
user.name = '佐藤順その十一'
user.area = '宇都宮市宝木町その十一'
user.memo = 'プログラマその十一'
user.give_me = get_gives(give_me)
user.give_you = get_gives(give_you)
user.save!

user = User.new
user.account_no = '012'
user.name = '佐藤順その十二'
user.area = '宇都宮市宝木町その十二'
user.memo = 'プログラマその十二'
user.give_me = get_gives(give_me)
user.give_you = get_gives(give_you)
user.save!

user = User.new
user.account_no = '013'
user.name = '佐藤順その十三'
user.area = '宇都宮市宝木町その十三'
user.memo = 'プログラマその十三'
user.give_me = get_gives(give_me)
user.give_you = get_gives(give_you)
user.save!

