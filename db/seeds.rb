# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Tag.create([{name: 'trade_union'},{name: 'self_government'},{name: 'decanat'}])
ScheduleType.create([{name: 'up'},{name: 'down'}])
Group.create({name: '', course: 0})
Schedule.create({schedule_type_id: 1, group_id: 1})
Schedule.create({schedule_type_id: 2, group_id: 1})