class DeviseCreateOffices < ActiveRecord::Migration[5.0]
  def change
    create_table :offices do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string   :business_category,       null: false, default: ""
      t.string   :business_name,       null: false, default: ""
      t.string   :first_name,       null: false, default: ""
      t.string   :last_name,        null: false, default: ""
      t.string   :address,          null: false, default: ""
      t.string   :apt_num,          null: false, default: ""
      t.string   :state,            null: false, default: ""
      t.string   :city,             null: false, default: ""
      t.string   :zip_code,          null: false, default: ""
      t.date     :dob,              null: false, default: ""
      t.string   :card_name,         null: false, default: ""   
      t.integer  :card_number,      :limit => 25, null: false, default: ""
      t.integer  :exp_month,         null: false, default: ""
      t.integer  :exp_year,          null: false, default: ""
      t.integer  :cvv,               null: false, default: ""
      t.string   :billing_address,   null: false, default: ""    
      t.string   :billing_apt_num,   null: false, default: ""
      t.string   :billing_state,     null: false, default: ""
      t.string   :billing_city,      null: false, default: ""
      t.string   :billing_zip_code,  null: false, default: "" 
      t.integer  :routing_number,      :limit => 20,  null: false, default: ""
      t.integer  :account_number,       :limit => 20, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :offices, :email,                unique: true
    add_index :offices, :reset_password_token, unique: true
    # add_index :offices, :confirmation_token,   unique: true
    # add_index :offices, :unlock_token,         unique: true
  end
end
