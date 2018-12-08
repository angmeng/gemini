json.extract! student, :id, :name, :ic, :gender, :nationality, :birthday, :enrollment_date, :status_enrollment, :address, :classroom_id, :created_at, :updated_at
json.url student_url(student, format: :json)
