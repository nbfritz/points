seed_email, seed_password = ENV.values_at("SEED_EMAIL", "SEED_PASSWORD")

if seed_email && seed_password
  Rails.logger.info "Seeding Admin User"
  User.create(
    first_name: "Admin",
    last_name: "User",
    email: seed_email,
    password_digest: BCrypt::Password.create(seed_password)
  )
else
  Rails.logger.info "Skipping Admin User (SEED_EMAIL and SEED_PASSWORD not set)"
end
