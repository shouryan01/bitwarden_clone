# Bitwarden Password Manager Clone

I built an open-source password manager that aims to replicate the core functionality of Bitwarden, built using Ruby on Rails. It provides a secure and convenient way to store, manage, and share your passwords and sensitive information. The main goal of this repository was to learn Ruby on Rails and then build a full-stack app using it.
- Secure Encryption: Uses state-of-the-art encryption to ensure your data is protected
- CRUD logins and personal accounts easily
- Securely share logins with trusted contacts

## Demo
[Here is a YouTube demo!](https://www.youtube.com/watch?v=r7y6w5B0i5c)

## Getting Started

Clone the repository:
```
git clone https://github.com/shouryan01/bitwarden_clone.git
```
Install and start a Postgres database. I recommend [this one](https://postgresapp.com/).

Open the cloned repo and then run these commands one by one:
```
bundle install
rails db:create
rails db:migrate
bin/dev
```

Open your web browser and go to http://localhost:3000

# Screenshots
## Landing Page
![image](https://github.com/shouryan01/bitwarden_clone/assets/32345320/09918f27-0a8b-4525-91d9-2c360b1cd6fa)

## Authentication & User Management
![image](https://github.com/shouryan01/bitwarden_clone/assets/32345320/b5750659-6d44-4acd-a09d-0bf7c607119e)
![image](https://github.com/shouryan01/bitwarden_clone/assets/32345320/5cb45595-43ec-4c4f-9597-34a62430017c)
![image](https://github.com/shouryan01/bitwarden_clone/assets/32345320/1d5af75d-2b3b-4994-9c93-9437ace605dd)

## Adding Login
![image](https://github.com/shouryan01/bitwarden_clone/assets/32345320/4d5ba540-0c28-4897-828e-06248d87268f)

## Login Details
![image](https://github.com/shouryan01/bitwarden_clone/assets/32345320/c3d2ec3e-95cd-4084-b603-643c530058ca)

## Edit Login
![image](https://github.com/shouryan01/bitwarden_clone/assets/32345320/1f1b5975-ee56-4964-b949-dd28bb21963f)

## Share Login
<img width="1463" alt="image" src="https://github.com/shouryan01/bitwarden_clone/assets/32345320/3cd29f79-2844-4a2b-a512-3b03c9a027f8">

## Login Details
![image](https://github.com/shouryan01/bitwarden_clone/assets/32345320/5ec3086a-cfff-4e79-bd20-d57999735f8e)


Credits: I'd like to thank Go Rails and their excellent resources that helped me learn Ruby on Rails and build this app.
