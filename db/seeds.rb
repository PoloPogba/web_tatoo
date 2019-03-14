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
  

  },
  {
    title: "Vêtements/Textile",
  
  },
  {
    title: "Plomberie",
  
  },
  {
    title: "Electricité",
  
  },
  {
    title: "Serrurerie",
  
  },
  {
    title: "Cordonnerie",
  
  },
  {
    title: "Start-up",
  
  },
  {
    title: "Alimentaire",
  
  },
  {
    title: "B2B",
  
  },
  {
    title: "Musique",
  
  },
  {
    title: "Design",
  
  },
  {
    title: "Beauté",
  
  },
  {
    title: "Bien-être",
  
  },
  {
    title: "Evènementiel",
  
  },
  {
    title: "Hôtelerie",
  
  },
  {
    title: "Sportive",
  
  },
  {
    title: "Culture/Loisirs",
  
  },
  {
    title: "Action Social/Santé/Humanitaire",
  
  },
  {
    title: "Défense des droits",
  
  },
  {
    title: "Education/Formation/Insertion",
  
  },
  {
    title: "Education/Formation/Insertion",
  
  },
  {
    title: "Autres",
  
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