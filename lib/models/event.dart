class Event {
  final String imagePath,
      title,
      description,
      location,
      duration,
      punchLine1,
      punchLine2;
  final List categoryIds, galleryImages;

  Event({
    this.imagePath,
    this.title,
    this.description,
    this.location,
    this.duration,
    this.punchLine1,
    this.punchLine2,
    this.categoryIds,
    this.galleryImages,
  });
}

final corrida5Km = Event(
  imagePath: "lib/assets/event_images/corrida3.jpg",
  title: "Corrida de 5Km",
  description:
      "O dia está lindo! Vamos correr?\nData: 15/11\nSaída: Às 14:00h, Parque Central",
  location: "Parque Central",
  duration: "2h",
  punchLine1: "Maratona!",
  punchLine2: "Venha entrar em forma conosco!",
  categoryIds: [0, 4],
  galleryImages: [
    "lib/assets/event_images/corrida1.jpg",
    "lib/assets/event_images/corrida2.jpg",
    "lib/assets/event_images/corrida3.jpg",
  ],
);

final cursoChurrascoIniciante = Event(
  imagePath: "lib/assets/event_images/churrasco4.jpg",
  title: "Curso de Churrasqueiro para iniciantes",
  description:
      "Ensinaremos os principais cortes para churrasco.\nData: 18/11\nHorário: 8:30h\nEntrada: R\$ 30,00",
  location: "Clube Centenário",
  duration: "3h",
  punchLine1: "Fogo nela!",
  punchLine2: "Aprenda o básico para ser um churrasqueiro.",
  categoryIds: [0, 2],
  galleryImages: [
    "lib/assets/event_images/churrasco1.jpg",
    "lib/assets/event_images/churrasco2.jpg",
    "lib/assets/event_images/churrasco3.jpg",
    "lib/assets/event_images/churrasco4.jpg",
    "lib/assets/event_images/churrasco5.jpg",
  ],
);

final cursoSopa = Event(
  imagePath: "lib/assets/event_images/sopa1.jpg",
  title: "Curso de Sopas",
  description:
      "Aprenda a fazer 3 tipos de sopa para aquecer seu inverno.\n- Canjica\n- Sopa de Galinha\n- Sopa de Agnolini\nData: 20/11\nHorário: 9:30h\nEntrada: R\$ 20,00",
  location: "Clube Centenário",
  duration: "2h",
  punchLine1: "Está com frio?",
  punchLine2: "Aprenda a fazer sopa.",
  categoryIds: [0, 2],
  galleryImages: [
    "lib/assets/event_images/sopa5.png",
    "lib/assets/event_images/sopa1.jpg",
    "lib/assets/event_images/sopa2.jpg",
    "lib/assets/event_images/sopa3.jpg",
    "lib/assets/event_images/sopa4.jpg",
  ],
);

final plantarArvores = Event(
  imagePath: "lib/assets/event_images/planta1.jpg",
  title: "Arborizar o Parque",
  description:
      "Ajude-nos a arborizar o querido parque da nossa cidade e melhorar nossa qualidade de vida =)\nData: 30/11\nHorário: 14:00h",
  location: "Parque Saldanha",
  duration: "4h",
  punchLine1: "Mais verde!",
  punchLine2: "Venha ajudar a arborizar a nossa cidade.",
  categoryIds: [0, 3],
  galleryImages: [
    "lib/assets/event_images/planta1.jpg",
    "lib/assets/event_images/planta2.jpg",
    "lib/assets/event_images/planta3.jpg",
  ],
);

final limparBeiraLago = Event(
  imagePath: "lib/assets/event_images/lago3.png",
  title: "Limpeza do Lago Sereno",
  description:
      "O Lago Sereno está em mal estado. Precisamos retirar o lixo deixado pelos campistas!\nData: 02/12\nHorário: 13:30h",
  location: "Lago Sereno - Linha Azul",
  duration: "3h",
  punchLine1: "Vamos limpar?",
  punchLine2: "Ajude-nos recolher o lixo do lago da cidade.",
  categoryIds: [0, 3],
  galleryImages: [
    "lib/assets/event_images/lago1.jpg",
    "lib/assets/event_images/lago2.jpg",
    "lib/assets/event_images/lago3.png",
  ],
);

final torneioVolei = Event(
  imagePath: "lib/assets/event_images/volei1.jpg",
  title: "Torneio de Vôlei",
  description:
      "O Brasil não é feito só de futebol!\nEstamos organizando um torneio de vôlei para incentivar a prática do esporte em nossa cidade.\nCategorias: Infantil (até 12 anos) e Adulto.\nOs vencedores receberão medalhas.\nData: 19/11\nHorário: 7:30h\nVamos jogar?",
  location: "Centro Desportivo Bonifácio",
  duration: "8h",
  punchLine1: "Vôlei!",
  punchLine2: "Monte seu time e venha competir!",
  categoryIds: [0, 4],
  galleryImages: [
    "lib/assets/event_images/volei1.jpg",
  ],
);

final events = [
  corrida5Km,
  cursoChurrascoIniciante,
  cursoSopa,
  plantarArvores,
  limparBeiraLago,
  torneioVolei,
];
