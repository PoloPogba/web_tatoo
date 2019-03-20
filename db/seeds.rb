# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
guest = Guest.create

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
    category:2

  },
  {
    title: "Vêtements/Textile",
  category:2
  },
  {
    title: "Plomberie",
  category:2
  },
  {
    title: "Electricité",
  category:2
  },
  {
    title: "Serrurerie",
  category:2
  },
  {
    title: "Cordonnerie",
  category:2
  },
  {
    title: "Start-up",
  category:2
  },
  {
    title: "Alimentaire",
  category:2
  },
  {
    title: "B2B",
  category:2
  },
  {
    title: "Musique",
  category:7
  },
  {
    title: "Design",
  category:7
  },
  {
    title: "Beauté",
  category:4
  },
  {
    title: "Bien-être",
  category:7
  },
  {
    title: "Evènementiel",
  category:5
  },
  {
    title: "Hôtelerie",
  category:2
  },
  {
    title: "Sportive",
  category:7
  },
  {
    title: "Culture/Loisirs",
  category:6
  },
  {
    title: "Action Social/Santé/Humanitaire",
  category:3
  },
  {
    title: "Défense des droits",
  category:5
  },
  {
    title: "Education/Formation/Insertion",
  category:5
  },
  {
    title: "Elève",
  category:1
  },
  {
    title: "Entrepreneur",
  category:1
  },
  {
    title: "Blogging",
  category:1
  },
  {
    title: "Donnations",
  category:3
  },
  {
    title: "Autres",
  category:7
}


])



type = Type.create!([
  {
    title: "Blog",


  },
  {
    title: "CV",


  },
  {
    title: "Portfolio",


  },
  {
    title: "Pour le Fun",


  },
  {
    title: "Vitrine",


  },
  {
    title: "E-Commerce",


  },
  {
    title: "Demande-nous un truc créatif ou une fonctionnalité spécifique ",


  },
  {
    title: "Propose moi un truc créatif ou une fonctionnalité spécifique",


  },
  {
    title: "Application Mobile",


  }
])


function = Function.create!([
  {
    title: "Commentaires",
    price: 20,


  },
  {
    title: "Likes",
    price: 20,


  },
  {
    title: "Espace admin/client",
    price: 20,

  },
  {
    title: "Blog post",
    price: 20,

  },
  {
    title: "CV editable",
    price: 20,

  },
  {
    title: "Galerie de Porfolio",
    price: 20,

  },
  {
    title: "Catalogue Produits",
    price: 20,

  },
  {
    title: "A propos de nous",
    price: 20,

  },
  {
    title: "Carte (google map)",
    price: 20,

  },
  {
    title: "Paiement",
    price: 20,

  },
  {
    title: "Panier",
    price: 20,

  },
  {
    title: "Produits",
    price: 20,

  },
  {
    title: "Espace Clients",
    price: 20,

  },
  {
    title: "Espace Admin",
    price: 20,

  },
  {
    title: "Chat-bot",
    price: 20,

  },
  {
    title: "Service/Fonctionnalité personnalisée",
    price: 20,

  },
  {
    title: "Mise en page et graphisme adapté",
    price: 20,

  },
  {
    title: "Logo Professionnel",
    price: 20,

  }

])
