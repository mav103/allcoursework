json.extract! survey, :id, :card_id, :ward_id, :cause, :entered, :ended, :epicrisis, :created_at, :updated_at
json.url survey_url(survey, format: :json)
