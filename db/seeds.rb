# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Branch.destroy_all
Department.destroy_all
Employee.destroy_all

scranton = Branch.create(name: "Dunder Mifflin Scranton", city: "Scranton", state: "PA")
coorporate = Branch.create(name: "Dunder Mifflin Coorporate", city: "NYC", state: "NYC")
nashua = Branch.create(name: "Dunder Mifflin Nashua", city: "Nashua", state: "NY")

sales = Department.create(name: "Sales")
accounting = Department.create(name: "Accounting")
hr = Department.create(name: "Human Resources")
customer_support = Department.create(name: "Customer Support")
executive = Department.create(name: "Executives")

employees = Employee.create([
    {
        name: "Pam Beesly",
        title: "Receptionist",
        department_id: customer_support.id,
        branch_id: scranton.id
    },
    {
        name: "Dwight Schrute",
        title: "Salesman",
        department_id: sales.id,
        branch_id: scranton.id
    },
    {
        name: "Jan Levinson",
        title: "VP of Sales",
        department_id: executive.id,
        branch_id: coorporate.id
    },
    {
        name: "Holly Flax",
        title: "HR Representative",
        department_id: hr.id,
        branch_id: nashua.id
    },
    {
        name: "Oscar Martinez",
        title: "Accountant",
        department_id: accounting.id,
        branch_id: scranton.id
    },
])