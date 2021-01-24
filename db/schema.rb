ActiveRecord::Schema.define(version: 2021_01_21_091720) do

  enable_extension "plpgsql"

  create_table "tubuyakis", force: :cascade do |t|
    t.text "content"
  end

end
