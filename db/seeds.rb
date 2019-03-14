# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


who = Who.create!([
  {
    title: "Moi-même",

  },
  {
    title: "Mon entreprise",

  },
  {
    title: "Mon association",

  }
])

activity = Activity.create!([
  {
    title: "Restauration",
    who_id: 1

  },
  {
    title: "Vêtements/Textile",
    who_id: 1
  },
  {
    title: "Plomberie",
    who_id: 1
  },
  {
    title: "Electricité",
    who_id: 1
  },
  {
    title: "Serrurerie",
    who_id: 1
  },
  {
    title: "Cordonnerie",
    who_id: 1
  },
  {
    title: "Start-up",
    who_id: 1
  },
  {
    title: "Alimentaire",
    who_id: 1
  },
  {
    title: "B2B",
    who_id: 1
  },
  {
    title: "Musique",
    who_id: 1
  },
  {
    title: "Design",
    who_id: 1
  },
  {
    title: "Beauté",
    who_id: 1
  },
  {
    title: "Bien-être",
    who_id: 1
  },
  {
    title: "Evènementiel",
    who_id: 1
  },
  {
    title: "Hôtelerie",
    who_id: 1
  },
  {
    title: "Sportive",
    who_id: 1
  },
  {
    title: "Culture/Loisirs",
    who_id: 1
  },
  {
    title: "Action Social/Santé/Humanitaire",
    who_id: 1
  },
  {
    title: "Défense des droits",
    who_id: 1
  },
  {
    title: "Education/Formation/Insertion",
    who_id: 1
  },
  {
    title: "Education/Formation/Insertion",
    who_id: 1
  },
  {
    title: "Autres",
    who_id: 1
  }

])



type = Type.create!([
  {
    title: "Blog",
    activity_id: 1

  },
  {
    title: "CV",
    activity_id: 1

  },
  {
    title: "Portfolio",
    activity_id: 1

  },
  {
    title: "Pour le Fun",
    activity_id: 1

  },
  {
    title: "Vitrine",
    activity_id: 1

  },
  {
    title: "E-Commerce",
    activity_id: 1

  },
  {
    title: "Demande-nous un truc créatif ou une fonctionnalité spécifique ",
    activity_id: 1

  },
  {
    title: "Propose moi un truc créatif ou une fonctionnalité spécifique",
    activity_id: 1

  },
  {
    title: "Application Mobile",
    activity_id: 1

  }
])


function = Function.create!([
  {
    title: "Commentaires",
    price: 20,
    type_id: 1

  },
  {
    title: "Likes",
    price: 20,
    type_id: 1

  },
  {
    title: "Espace admin/client",
    price: 20,
    type_id: 1
  },
  {
    title: "Blog post",
    price: 20,
    type_id: 1
  },
  {
    title: "CV editable",
    price: 20,
    type_id: 1
  },
  {
    title: "Galerie de Porfolio",
    price: 20,
    type_id: 1
  },
  {
    title: "Catalogue Produits",
    price: 20,
    type_id: 1
  },
  {
    title: "A propos de nous",
    price: 20,
    type_id: 1
  },
  {
    title: "Carte (google map)",
    price: 20,
    type_id: 1
  },
  {
    title: "Paiement",
    price: 20,
    type_id: 1
  },
  {
    title: "Panier",
    price: 20,
    type_id: 1
  },
  {
    title: "Produits",
    price: 20,
    type_id: 1
  },
  {
    title: "Espace Clients",
    price: 20,
    type_id: 1
  },
  {
    title: "Espace Admin",
    price: 20,
    type_id: 1
  },
  {
    title: "Chat-bot",
    price: 20,
    type_id: 1
  },
  {
    title: "Service/Fonctionnalité personnalisée",
    price: 20,
    type_id: 1
  },
  {
    title: "Mise en page et graphisme adapté",
    price: 20,
    type_id: 1
  },
  {
    title: "Logo Professionnel",
    price: 20,
    type_id: 1
  }
  
])