danielle = User.create(name: "Danielle", city: "Jersey City", state: "New Jersey", email: "danielle@danielle.com", password: "pw")

wylie = User.create(name: "Wylie", city: "Saint Augustine", state: "Florida", email: "wylie@wylie.com", password: "pw")

Collectable.create(name: "New Mutants #98", description: "First Appearance of Deadpool", image_url: "https://www.sellmycomicbooks.com/images/New-Mutants-98-600px.jpg)", initial_cost: 50, current_appraisel: 90, user_id: danielle.id)

Collectable.create(name: "X force #11", description: "First Appearance of Domino", image_url: "https://vignette.wikia.nocookie.net/marveldatabase/images/0/03/X-Force_Vol_1_11.jpg/revision/latest?cb=20180113052157", initial_cost: 80, current_appraisel: 165, user_id: wylie.id)

Collectable.create(name: "X force #1", description: "First Appearance of Cable", image_url: "http://3.bp.blogspot.com/-_zC8cEFqnzo/TrMv23PkzjI/AAAAAAAADFg/MuwXlh_dCmE/s1600/X-Force%25231+front.jpg", initial_cost: 35, current_appraisel: 70, user_id: wylie.id)