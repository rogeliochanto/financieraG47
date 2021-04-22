json.extract! loan, :id, :amount, :interest, :term, :fee, :created_at, :updated_at
json.url loan_url(loan, format: :json)
