class Card < ActiveRecord::Base
  has_many :survey, dependent: :destroy


  validates :second_name, presence:true, length: {maximum: 30}
  validates :first_name, presence:true, length: {maximum: 30}
  validates :last_name, presence:true, length: {maximum: 30}
  validates :passport, presence:true, length: {maximum: 30},
  uniqueness:true
  validates :insurance, presence:true, uniqueness:true
  validates :residence, presence:true, inclusion:
  { in: ['besplatnoe', 'platnoe'] }
  validates :created, presence:true
  validates :allergy, presence:true, length: {maximum: 128}
  validates :cart_number, presence:true, uniqueness:true, numericality:
  {only_integer: true, greater_than_or_equal_to: 0}

  def self.search(params)
     result = Card.includes(:survey).includes(:survey => :ward).includes(:survey => :result).references(:survey).references(:survey => :ward).references(:survey => :result)
     if params['second_name'].present?
       result = result.where(second_name: params['second_name'])
     end
     if params['first_name'].present?
       result = result.where(first_name: params['first_name'])
     end
     if params['last_name'].present?
       result = result.where(last_name: params['last_name'])
     end
     if params['passport'].present?
       result = result.where(passport: params['passport'])
     end
     if params['insurance'].present?
       result = result.where(insurance: params['insurance'])
     end
     if params['residence'].present?
       result = result.where(residence: params['residence'])
     end
     if params['created'].present?
       result = result.where(created: params['created'])
     end
     if params['allergy'].present?
       result = result.where(allergy: params['allergy'])
     end
     if params['cart_number'].present?
       result = result.where(cart_number: params['cart_number'])
     end


     if params['survey'].present?
       result = result.where(survey: params['survey'])
     end


     #Wards

     if params['department'].present?
       result = result.where(wards: {department: params['department']})
     end
     if params['floor'].present?
       result = result.where(wards: {floor: params['floor']})
     end
     if params['capacity'].present?
       result = result.where(wards: {capacity: params['capacity']})
     end
     if params['number'].present?
       result = result.where(wards: {number: params['number']})
     end
     if params['num_of_pacients'].present?
       result = result.where(wards: {num_of_pacients: params['num_of_pacients']})
     end


     #Results

     if params['conclusion'].present?
       result = result.where(results: {conclusion: params['conclusion']})
     end
     if params['title'].present?
       result = result.where(results: {title: params['title']})
     end
     if params['rdate'].present?
       result = result.where(results: {rdate: params['rdate']})
     end
     if params['appointment'].present?
       result = result.where(results: {appointment: params['appointment']})
     end
     if params['causes'].present?
       result = result.where(results: {causes: params['causes']})
     end
     if params['first_inspection'].present?
       result = result.where(results: {first_inspection: params['first_inspection']})
     end
     if params['results'].present?
       result = result.where(results: {results: params['results']})
     end

     #Surveys

     if params['cause'].present?
       result = result.where(surveys: {cause: params['cause']})
     end
     if params['entered'].present?
       result = result.where(surveys: {entered: params['entered']})
     end
     if params['ended'].present?
       result = result.where(surveys: {ended: params['ended']})
     end
     if params['epicrisis'].present?
       result = result.where(surveys: {epicrisis: params['epicrisis']})
     end


     result.all
  end
end
