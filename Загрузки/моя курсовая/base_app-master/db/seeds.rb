if (u1 = User.find_by_email('admin@localhost')).nil?
  u1 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'admin@localhost')
  u1.activate!
end
if (u2 = User.find_by_email('user@localhost')).nil?
  u2 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'user@localhost')
  u2.activate!
end
r1, r2 = Role.create_main_roles
ru1 = RoleUser.create(role: r1, user: u1)
ru2 = RoleUser.create(role: r2, user: u2)


Card.delete_all; Result.delete_all; Survey.delete_all; Ward.delete_all
Card.create(second_name: "Иванович",first_name: "Иван",last_name: "Иванов",passport: "12312321",insurance: 7777,residence: "besplatnoe", created: "12.12.1990",allergy: "None",cart_number: "1")
Card.create(second_name: "Иванович2",first_name: "Иван2",last_name: "Иванов2",passport: "123132321",insurance: 4444,residence: "platnoe", created: "19.7.1998",allergy: "Honey",cart_number: "2")
Ward.create(department: 1, floor: 2, capacity: 3, number: 21, num_of_pacients: 1)
Ward.create(department: 2, floor: 4, capacity: 4, number: 44, num_of_pacients: 3)
Result.create(conclusion: "conclusion 1", title: "title 1", rdate: "11.10.1999", appointment: "appointment 1", causes: "causes 1", first_inspection: "first_inspection 1", results: "results 1")
Result.create(conclusion: "conclusion 2", title: "title 2", rdate: "21.10.1999", appointment: "appointment 2", causes: "causes 2", first_inspection: "first_inspection 2", results: "results 2")
Survey.create(result_id: 1, card_id: 1, ward_id: 1, cause: "cause 1", entered: "10.10.2000", ended: "20.10.2000", epicrisis: "epicrisis 1")
Survey.create(result_id: 2, card_id: 2, ward_id: 2, cause: "cause 2", entered: "12.10.2000", ended: "30.10.2000", epicrisis: "epicrisis 2")
