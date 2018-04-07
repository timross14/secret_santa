json.extract! item, :id, :list_id, :text, :intend_to_purchase, :purchased, :created_at, :updated_at
json.url item_url(item, format: :json)
