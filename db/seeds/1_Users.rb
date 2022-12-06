User.destroy_all if User.count.positive?

User.create(email: 'podilkaroman@gmail.com', password: '123456', role: :admin)
