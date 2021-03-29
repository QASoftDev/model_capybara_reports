

module Actions

    def login_with(email, password)
        find("input[type='email']").set email
        find("input[type='password']").set password
        click_on "Acessar sistema"
    end
end