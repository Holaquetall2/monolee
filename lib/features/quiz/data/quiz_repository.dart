import '../domain/question.dart';

class QuizRepository {
  static const Map<String, List<Question>> questionsByStory = {
    'el-zorro-y-las-uvas': [
      Question(
        id: 'zorro_q1',
        text: '¿Qué estaba buscando el zorro al comienzo de la historia?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Un lugar para dormir',
          'Algo para comer',
          'Un amigo',
          'Un río',
        ],
        correctAnswer: 'Algo para comer',
        explanation:
            'El cuento comienza diciendo que el zorro caminaba por el bosque buscando algo para comer.',
      ),
      Question(
        id: 'zorro_q2',
        text: '¿Qué encontró el zorro en el jardín?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Un árbol lleno de manzanas',
          'Un enorme racimo de uvas',
          'Una cesta de pan',
          'Un estanque',
        ],
        correctAnswer: 'Un enorme racimo de uvas',
        explanation:
            'El zorro encontró un enorme racimo de uvas que colgaba de una parra.',
      ),
      Question(
        id: 'zorro_q3',
        text: '¿El zorro logró alcanzar las uvas?',
        type: QuestionType.trueFalse,
        comprehensionType: ComprehensionType.literal,
        options: ['Verdadero', 'Falso'],
        correctAnswer: 'Falso',
        explanation:
            'El zorro intentó alcanzarlas varias veces, pero nunca consiguió llegar hasta ellas.',
      ),
      Question(
        id: 'zorro_q4',
        text:
            '¿Por qué el zorro dijo que las uvas probablemente estaban verdes?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque realmente las había probado',
          'Porque quería convencer a otro animal',
          'Porque no pudo alcanzarlas y buscó una explicación',
          'Porque las uvas eran pequeñas',
        ],
        correctAnswer: 'Porque no pudo alcanzarlas y buscó una explicación',
        explanation:
            'Como no consiguió las uvas, el zorro buscó una excusa para convencerse de que no las quería.',
      ),
      Question(
        id: 'zorro_q5',
        text: '¿Cuál es la principal enseñanza de la historia?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Nunca debemos comer uvas',
          'Debemos aceptar cuando algo no resulta en lugar de inventar excusas',
          'Los zorros son buenos saltando',
          'Las frutas del bosque siempre están verdes',
        ],
        correctAnswer:
            'Debemos aceptar cuando algo no resulta en lugar de inventar excusas',
        explanation:
            'La fábula enseña que a veces despreciamos aquello que no pudimos conseguir.',
      ),
    ],

    'la-liebre-y-la-tortuga': [
      Question(
        id: 'liebre_q1',
        text: '¿De qué se sentía orgullosa la liebre?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'De ser muy fuerte',
          'De ser el animal más rápido',
          'De conocer todo el bosque',
          'De saber nadar',
        ],
        correctAnswer: 'De ser el animal más rápido',
        explanation:
            'La liebre presumía constantemente de ser el animal más rápido del bosque.',
      ),
      Question(
        id: 'liebre_q2',
        text: '¿Qué hizo la liebre cuando llevaba mucha ventaja?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Volvió a la salida',
          'Decidió descansar bajo un árbol',
          'Ayudó a la tortuga',
          'Abandonó la carrera',
        ],
        correctAnswer: 'Decidió descansar bajo un árbol',
        explanation:
            'La liebre creyó que tenía tiempo de sobra y decidió descansar.',
      ),
      Question(
        id: 'liebre_q3',
        text: '¿La tortuga se detuvo durante la carrera?',
        type: QuestionType.trueFalse,
        comprehensionType: ComprehensionType.literal,
        options: ['Verdadero', 'Falso'],
        correctAnswer: 'Falso',
        explanation:
            'La tortuga avanzó lentamente, pero continuó caminando sin detenerse.',
      ),
      Question(
        id: 'liebre_q4',
        text: '¿Por qué perdió la liebre a pesar de ser más rápida?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque se perdió en el bosque',
          'Porque se confió demasiado y se quedó dormida',
          'Porque la tortuga corrió más rápido',
          'Porque comenzó más tarde',
        ],
        correctAnswer: 'Porque se confió demasiado y se quedó dormida',
        explanation:
            'La liebre tenía ventaja, pero su exceso de confianza hizo que dejara de esforzarse.',
      ),
      Question(
        id: 'liebre_q5',
        text: '¿Qué enseñanza transmite principalmente la fábula?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Siempre gana el animal más lento',
          'La constancia puede ser más importante que confiarse en una ventaja',
          'Nunca debemos descansar',
          'Las carreras no son divertidas',
        ],
        correctAnswer:
            'La constancia puede ser más importante que confiarse en una ventaja',
        explanation:
            'La tortuga ganó porque fue constante mientras la liebre se confió demasiado.',
      ),
    ],

    'la-cigarra-y-la-hormiga': [
      Question(
        id: 'cigarra_q1',
        text: '¿Qué hacía la hormiga durante el verano?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Cantaba todo el día',
          'Recolectaba y guardaba comida',
          'Dormía bajo un árbol',
          'Jugaba con la cigarra',
        ],
        correctAnswer: 'Recolectaba y guardaba comida',
        explanation:
            'La hormiga trabajaba durante el verano reuniendo semillas para el invierno.',
      ),
      Question(
        id: 'cigarra_q2',
        text: '¿Qué hacía la cigarra mientras la hormiga trabajaba?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Cantaba y se divertía',
          'Construía una casa',
          'Guardaba semillas',
          'Buscaba agua',
        ],
        correctAnswer: 'Cantaba y se divertía',
        explanation:
            'La cigarra prefería cantar y disfrutar del verano en vez de prepararse.',
      ),
      Question(
        id: 'cigarra_q3',
        text: '¿La hormiga compartió comida con la cigarra?',
        type: QuestionType.trueFalse,
        comprehensionType: ComprehensionType.literal,
        options: ['Verdadero', 'Falso'],
        correctAnswer: 'Verdadero',
        explanation:
            'La hormiga recibió a la cigarra y compartió parte de su comida.',
      ),
      Question(
        id: 'cigarra_q4',
        text: '¿Qué comprendió la cigarra cuando llegó el invierno?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Que nunca debía volver a cantar',
          'Que debía organizar mejor su tiempo y pensar en el futuro',
          'Que el invierno duraría para siempre',
          'Que la hormiga trabajaba demasiado',
        ],
        correctAnswer:
            'Que debía organizar mejor su tiempo y pensar en el futuro',
        explanation:
            'La cigarra comprendió que podía divertirse, pero también debía prepararse para lo que vendría.',
      ),
      Question(
        id: 'cigarra_q5',
        text: '¿Cuál es la idea principal de la historia?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Hay que trabajar sin descansar nunca',
          'Es importante equilibrar el disfrute con la responsabilidad',
          'El verano es mejor que el invierno',
          'Las hormigas siempre tienen comida',
        ],
        correctAnswer:
            'Es importante equilibrar el disfrute con la responsabilidad',
        explanation:
            'La historia muestra que disfrutar es bueno, pero también es necesario ser responsable y prepararse.',
      ),
    ],

    'el-leon-y-el-raton': [
      Question(
        id: 'leon_q1',
        text: '¿Qué hizo el ratón que despertó al león?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Rugió muy fuerte',
          'Corrió sobre el cuerpo del león',
          'Le quitó su comida',
          'Mordió una rama',
        ],
        correctAnswer: 'Corrió sobre el cuerpo del león',
        explanation:
            'El ratón jugaba cerca y terminó corriendo sobre el cuerpo del león dormido.',
      ),
      Question(
        id: 'leon_q2',
        text: '¿Cómo quedó atrapado el león después?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: ['En una cueva', 'En una red', 'En un río', 'En un árbol'],
        correctAnswer: 'En una red',
        explanation:
            'El león quedó atrapado en una red que habían dejado unos cazadores.',
      ),
      Question(
        id: 'leon_q3',
        text: '¿El ratón logró liberar al león?',
        type: QuestionType.trueFalse,
        comprehensionType: ComprehensionType.literal,
        options: ['Verdadero', 'Falso'],
        correctAnswer: 'Verdadero',
        explanation:
            'El ratón rompió las cuerdas de la red usando sus pequeños dientes.',
      ),
      Question(
        id: 'leon_q4',
        text: '¿Por qué se sorprendió el león cuando el ratón lo ayudó?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque pensaba que un animal pequeño no podría ayudarlo',
          'Porque no conocía al ratón',
          'Porque el ratón era más fuerte que él',
          'Porque los cazadores también ayudaron',
        ],
        correctAnswer:
            'Porque pensaba que un animal pequeño no podría ayudarlo',
        explanation:
            'Al principio el león se rió de la idea de que un ratón tan pequeño pudiera ayudarlo.',
      ),
      Question(
        id: 'leon_q5',
        text: '¿Cuál es la enseñanza principal de la fábula?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Los animales grandes siempre necesitan ayuda',
          'Todos podemos ser útiles, sin importar nuestro tamaño',
          'Los ratones deben evitar a los leones',
          'Nunca debemos dormir en el bosque',
        ],
        correctAnswer: 'Todos podemos ser útiles, sin importar nuestro tamaño',
        explanation:
            'La historia muestra que incluso alguien pequeño puede hacer una gran diferencia.',
      ),
    ],

    'el-pastor-mentiroso': [
      Question(
        id: 'pastor_q1',
        text: '¿Cuál era el trabajo del joven pastor?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Cuidar un rebaño de ovejas',
          'Vender frutas',
          'Buscar leña',
          'Cazar lobos',
        ],
        correctAnswer: 'Cuidar un rebaño de ovejas',
        explanation: 'El joven pastor cuidaba las ovejas cerca de su pueblo.',
      ),
      Question(
        id: 'pastor_q2',
        text: '¿Qué mentira decía el pastor para engañar a los habitantes?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Que había una tormenta',
          'Que había encontrado oro',
          'Que un lobo atacaba a las ovejas',
          'Que se había perdido',
        ],
        correctAnswer: 'Que un lobo atacaba a las ovejas',
        explanation:
            'El pastor gritaba que había un lobo aunque no fuera cierto.',
      ),
      Question(
        id: 'pastor_q3',
        text: '¿Los habitantes acudieron cuando apareció realmente el lobo?',
        type: QuestionType.trueFalse,
        comprehensionType: ComprehensionType.literal,
        options: ['Verdadero', 'Falso'],
        correctAnswer: 'Falso',
        explanation:
            'Como el pastor había mentido antes, los habitantes pensaron que estaba engañándolos otra vez.',
      ),
      Question(
        id: 'pastor_q4',
        text: '¿Por qué dejaron de creerle al pastor?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque hablaba demasiado bajo',
          'Porque había mentido repetidas veces',
          'Porque no conocían al pastor',
          'Porque nunca habían visto un lobo',
        ],
        correctAnswer: 'Porque había mentido repetidas veces',
        explanation:
            'Sus mentiras hicieron que los demás perdieran la confianza en él.',
      ),
      Question(
        id: 'pastor_q5',
        text: '¿Qué idea principal transmite la historia?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Los lobos siempre aparecen por la tarde',
          'Mentir repetidamente hace que los demás dejen de confiar en nosotros',
          'Cuidar ovejas es demasiado difícil',
          'Las bromas siempre son divertidas',
        ],
        correctAnswer:
            'Mentir repetidamente hace que los demás dejen de confiar en nosotros',
        explanation:
            'La historia muestra que la confianza puede perderse cuando una persona miente una y otra vez.',
      ),
    ],

    'el-arbol-generoso': [
      Question(
        id: 'arbol_q1',
        text: '¿Qué hacía el niño junto al árbol cuando era pequeño?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Jugaba, trepaba y descansaba bajo su sombra',
          'Construía una casa',
          'Cortaba sus ramas',
          'Vendía sus frutos',
        ],
        correctAnswer: 'Jugaba, trepaba y descansaba bajo su sombra',
        explanation:
            'Cuando era pequeño, el niño disfrutaba jugando junto al árbol.',
      ),
      Question(
        id: 'arbol_q2',
        text: '¿Qué le ofreció el árbol cuando el joven necesitaba dinero?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: ['Sus frutos', 'Sus raíces', 'Una casa', 'Sus hojas'],
        correctAnswer: 'Sus frutos',
        explanation: 'El árbol le permitió recoger sus frutos para venderlos.',
      ),
      Question(
        id: 'arbol_q3',
        text:
            '¿El árbol siguió dispuesto a ayudar incluso cuando ya tenía pocas ramas?',
        type: QuestionType.trueFalse,
        comprehensionType: ComprehensionType.literal,
        options: ['Verdadero', 'Falso'],
        correctAnswer: 'Verdadero',
        explanation:
            'Al final, aunque tenía poco que ofrecer, el árbol todavía le dio al anciano un lugar donde descansar.',
      ),
      Question(
        id: 'arbol_q4',
        text:
            '¿Qué sentimiento demuestra principalmente el árbol hacia el niño?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: ['Enojo', 'Generosidad', 'Miedo', 'Competencia'],
        correctAnswer: 'Generosidad',
        explanation:
            'El árbol comparte una y otra vez lo que tiene para ayudar al niño.',
      ),
      Question(
        id: 'arbol_q5',
        text: '¿Cuál es una idea importante de este cuento?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Debemos valorar y agradecer a quienes nos ayudan',
          'Los árboles deberían estar siempre solos',
          'Los niños nunca deben crecer',
          'Las frutas sirven únicamente para vender',
        ],
        correctAnswer: 'Debemos valorar y agradecer a quienes nos ayudan',
        explanation:
            'Al final, el hombre comprende cuánto recibió del árbol y siente gratitud.',
      ),
    ],
    'el-cuervo-y-la-jarra': [
      Question(
        id: 'cuervo_jarra_q1',
        text: '¿Qué buscaba el cuervo al comienzo de la historia?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: ['Comida', 'Agua', 'Un lugar para dormir', 'Una casa'],
        correctAnswer: 'Agua',
        explanation:
            'El cuervo volaba buscando agua porque era un día muy caluroso.',
      ),
      Question(
        id: 'cuervo_jarra_q2',
        text: '¿Por qué el cuervo no podía beber el agua de la jarra?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'La jarra estaba vacía',
          'El agua estaba demasiado abajo',
          'La jarra estaba cerrada',
          'El agua estaba congelada',
        ],
        correctAnswer: 'El agua estaba demasiado abajo',
        explanation:
            'Había agua dentro de la jarra, pero estaba tan abajo que el cuervo no podía alcanzarla con el pico.',
      ),
      Question(
        id: 'cuervo_jarra_q3',
        text: '¿Qué hizo el cuervo para conseguir alcanzar el agua?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Rompió la jarra',
          'Esperó a que lloviera',
          'Colocó piedras dentro de la jarra',
          'Empujó la jarra hasta el río',
        ],
        correctAnswer: 'Colocó piedras dentro de la jarra',
        explanation:
            'El cuervo fue colocando pequeñas piedras dentro de la jarra hasta que el nivel del agua subió.',
      ),
      Question(
        id: 'cuervo_jarra_q4',
        text: '¿Por qué las piedras ayudaron al cuervo a resolver el problema?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque hicieron subir el nivel del agua',
          'Porque rompieron la jarra',
          'Porque hicieron aparecer más agua',
          'Porque hicieron más largo el pico del cuervo',
        ],
        correctAnswer: 'Porque hicieron subir el nivel del agua',
        explanation:
            'Al ocupar espacio dentro de la jarra, las piedras hicieron que el agua subiera hasta quedar al alcance del cuervo.',
      ),
      Question(
        id: 'cuervo_jarra_q5',
        text: '¿Cuál es la principal enseñanza de esta historia?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'La fuerza siempre resuelve los problemas',
          'Pensar con paciencia e inteligencia puede ayudarnos a resolver problemas',
          'Debemos evitar las jarras',
          'Los cuervos necesitan beber mucha agua',
        ],
        correctAnswer:
            'Pensar con paciencia e inteligencia puede ayudarnos a resolver problemas',
        explanation:
            'El cuervo no pudo resolver el problema usando fuerza, pero encontró una solución gracias a su paciencia e inteligencia.',
      ),
    ],

    'la-zorra-y-el-cuervo': [
      Question(
        id: 'zorra_cuervo_q1',
        text: '¿Qué tenía el cuervo en el pico?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: ['Una nuez', 'Un trozo de queso', 'Una fruta', 'Una piedra'],
        correctAnswer: 'Un trozo de queso',
        explanation:
            'El cuervo estaba sobre una rama sosteniendo un trozo de queso en su pico.',
      ),
      Question(
        id: 'zorra_cuervo_q2',
        text: '¿Qué quería conseguir la zorra?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'El queso',
          'Las plumas del cuervo',
          'La rama',
          'Un lugar en el árbol',
        ],
        correctAnswer: 'El queso',
        explanation:
            'La zorra vio el queso que llevaba el cuervo y quiso conseguirlo.',
      ),
      Question(
        id: 'zorra_cuervo_q3',
        text: '¿Qué ocurrió cuando el cuervo abrió el pico para cantar?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'La zorra huyó',
          'El queso cayó al suelo',
          'El cuervo cayó del árbol',
          'Llegaron otras aves',
        ],
        correctAnswer: 'El queso cayó al suelo',
        explanation:
            'Cuando el cuervo abrió el pico para cantar, dejó caer el queso y la zorra lo tomó.',
      ),
      Question(
        id: 'zorra_cuervo_q4',
        text: '¿Por qué la zorra elogió tanto al cuervo?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque quería hacerse amiga del cuervo',
          'Porque realmente quería escucharlo cantar',
          'Porque quería que abriera el pico y dejara caer el queso',
          'Porque tenía miedo del cuervo',
        ],
        correctAnswer:
            'Porque quería que abriera el pico y dejara caer el queso',
        explanation:
            'Los elogios formaban parte del plan de la zorra para conseguir que el cuervo cantara y soltara el queso.',
      ),
      Question(
        id: 'zorra_cuervo_q5',
        text: '¿Cuál es la principal enseñanza de la historia?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Debemos desconfiar de todos',
          'No debemos dejarnos engañar fácilmente por los halagos',
          'Los cuervos no saben cantar',
          'Nunca debemos compartir comida',
        ],
        correctAnswer: 'No debemos dejarnos engañar fácilmente por los halagos',
        explanation:
            'El orgullo del cuervo hizo que creyera los halagos de la zorra y terminara perdiendo su comida.',
      ),
    ],

    'el-perro-y-su-reflejo': [
      Question(
        id: 'perro_reflejo_q1',
        text: '¿Qué llevaba el perro en el hocico?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: ['Un hueso', 'Un trozo de carne', 'Una rama', 'Una pelota'],
        correctAnswer: 'Un trozo de carne',
        explanation:
            'El perro caminaba llevando un gran trozo de carne en el hocico.',
      ),
      Question(
        id: 'perro_reflejo_q2',
        text: '¿Dónde vio el perro lo que parecía ser otro perro?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Detrás de un árbol',
          'Dentro de una casa',
          'En el agua del río',
          'Al otro lado del camino',
        ],
        correctAnswer: 'En el agua del río',
        explanation:
            'Mientras cruzaba el puente, el perro miró hacia el río y vio su propio reflejo.',
      ),
      Question(
        id: 'perro_reflejo_q3',
        text: '¿Qué ocurrió cuando el perro abrió la boca para ladrar?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Consiguió otro trozo de carne',
          'Su carne cayó al río',
          'El otro perro escapó',
          'El puente se rompió',
        ],
        correctAnswer: 'Su carne cayó al río',
        explanation:
            'Al abrir la boca para ladrar, el perro soltó la carne que llevaba y esta cayó al río.',
      ),
      Question(
        id: 'perro_reflejo_q4',
        text:
            '¿Por qué quiso el perro quitarle la carne al supuesto otro perro?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque tenía hambre y quería tener aún más',
          'Porque quería ayudarlo',
          'Porque conocía al otro perro',
          'Porque no le gustaba su propia carne',
        ],
        correctAnswer: 'Porque tenía hambre y quería tener aún más',
        explanation:
            'El perro creyó que el reflejo tenía un trozo más grande y quiso conseguirlo además del que ya poseía.',
      ),
      Question(
        id: 'perro_reflejo_q5',
        text: '¿Cuál es la principal enseñanza del cuento?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Debemos aprender a nadar',
          'Por querer tener más podemos perder lo que ya tenemos',
          'Los perros no deben cruzar puentes',
          'Es mejor comer rápidamente',
        ],
        correctAnswer: 'Por querer tener más podemos perder lo que ya tenemos',
        explanation:
            'El perro perdió aquello que realmente tenía por intentar conseguir algo que solamente era un reflejo.',
      ),
    ],

    'el-misterio-del-faro-apagado': [
      Question(
        id: 'faro_q1',
        text: '¿Qué observó Martina una noche desde su casa?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Que había una tormenta',
          'Que el faro estaba apagado',
          'Que el barco había desaparecido',
          'Que la colina estaba inundada',
        ],
        correctAnswer: 'Que el faro estaba apagado',
        explanation:
            'Martina estaba acostumbrada a ver la luz del faro, pero aquella noche permaneció completamente oscuro.',
      ),
      Question(
        id: 'faro_q2',
        text: '¿Con quién fue Martina hasta el faro?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Con su hermano',
          'Con su abuelo',
          'Con el encargado del faro',
          'Con una amiga',
        ],
        correctAnswer: 'Con su abuelo',
        explanation:
            'Martina buscó a su abuelo y ambos caminaron hasta la colina llevando linternas.',
      ),
      Question(
        id: 'faro_q3',
        text: '¿Qué descubrió Martina detrás del faro?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Un barco abandonado',
          'Una rama caída sobre unos cables',
          'Una puerta secreta',
          'Un animal escondido',
        ],
        correctAnswer: 'Una rama caída sobre unos cables',
        explanation:
            'Martina observó por una ventana y notó que una rama grande había caído sobre unos cables.',
      ),
      Question(
        id: 'faro_q4',
        text:
            '¿Qué característica de Martina fue importante para solucionar el problema?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Su fuerza',
          'Su rapidez',
          'Su capacidad de observar con atención',
          'Su conocimiento sobre barcos',
        ],
        correctAnswer: 'Su capacidad de observar con atención',
        explanation:
            'Martina detectó algo que los demás todavía no habían visto y eso permitió encontrar la causa del problema.',
      ),
      Question(
        id: 'faro_q5',
        text: '¿Cuál es una de las principales ideas de esta historia?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Todos los misterios son peligrosos',
          'Observar atentamente puede ayudarnos a resolver problemas',
          'Los faros dejan de funcionar todas las noches',
          'Es mejor no investigar los problemas',
        ],
        correctAnswer:
            'Observar atentamente puede ayudarnos a resolver problemas',
        explanation:
            'Martina aprendió que muchas veces encontrar una solución comienza observando cuidadosamente lo que sucede.',
      ),
    ],

    'la-bicicleta-roja': [
      Question(
        id: 'bicicleta_q1',
        text: '¿Qué recibió Tomás para su cumpleaños?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Una bicicleta roja',
          'Un monopatín',
          'Una bicicleta azul',
          'Una pelota',
        ],
        correctAnswer: 'Una bicicleta roja',
        explanation:
            'Tomás recibió para su cumpleaños la bicicleta roja que había imaginado durante meses.',
      ),
      Question(
        id: 'bicicleta_q2',
        text: '¿Quién ayudó a Tomás a aprender a andar en bicicleta?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Su padre',
          'Su amigo',
          'Su hermana Valentina',
          'Su profesor',
        ],
        correctAnswer: 'Su hermana Valentina',
        explanation:
            'Tomás fue al parque con su hermana mayor, Valentina, y le pidió que le enseñara.',
      ),
      Question(
        id: 'bicicleta_q3',
        text: '¿Qué cambió Tomás para conseguir avanzar mejor?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Comenzó a pedalear con los ojos cerrados',
          'Miró hacia adelante en lugar de mirar sus pies',
          'Cambió de bicicleta',
          'Dejó de utilizar los frenos',
        ],
        correctAnswer: 'Miró hacia adelante en lugar de mirar sus pies',
        explanation:
            'En uno de sus intentos, Tomás decidió mirar hacia adelante y consiguió avanzar más lejos.',
      ),
      Question(
        id: 'bicicleta_q4',
        text:
            '¿Por qué Valentina le contó a Tomás que ella también se había caído muchas veces?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Para burlarse de él',
          'Para convencerlo de abandonar',
          'Para mostrarle que equivocarse forma parte de aprender',
          'Para pedirle la bicicleta',
        ],
        correctAnswer: 'Para mostrarle que equivocarse forma parte de aprender',
        explanation:
            'Valentina quería que Tomás comprendiera que aprender requiere varios intentos y que cada error puede servir para mejorar.',
      ),
      Question(
        id: 'bicicleta_q5',
        text: '¿Cuál es la idea principal de la historia?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Aprender algo nuevo requiere práctica y perseverancia',
          'Las bicicletas rojas son mejores',
          'Nunca debemos caernos',
          'Solo podemos aprender con ayuda de otra persona',
        ],
        correctAnswer: 'Aprender algo nuevo requiere práctica y perseverancia',
        explanation:
            'Tomás no aprendió inmediatamente: mejoró poco a poco gracias a la práctica y a no rendirse.',
      ),
    ],

    'por-que-cambian-de-color-las-hojas': [
      Question(
        id: 'hojas_q1',
        text:
            '¿Qué sustancia es la principal responsable del color verde de las hojas?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: ['Clorofila', 'Agua', 'Oxígeno', 'Azúcar'],
        correctAnswer: 'Clorofila',
        explanation:
            'El texto explica que el color verde de muchas hojas se debe principalmente a la clorofila.',
      ),
      Question(
        id: 'hojas_q2',
        text: '¿Qué ocurre con los días cuando llega el otoño?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Se hacen más largos',
          'Se hacen más cortos',
          'No cambia su duración',
          'Dejan de recibir luz completamente',
        ],
        correctAnswer: 'Se hacen más cortos',
        explanation:
            'Cuando llega el otoño, los días comienzan a ser más cortos y las temperaturas disminuyen.',
      ),
      Question(
        id: 'hojas_q3',
        text: '¿Qué sucede cuando disminuye la cantidad de clorofila?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'El verde comienza a desaparecer y se observan otros pigmentos',
          'Todas las hojas se vuelven azules',
          'El árbol produce más clorofila',
          'Las hojas crecen inmediatamente',
        ],
        correctAnswer:
            'El verde comienza a desaparecer y se observan otros pigmentos',
        explanation:
            'Al disminuir la clorofila, el verde deja de dominar y se hacen visibles otros pigmentos de las hojas.',
      ),
      Question(
        id: 'hojas_q4',
        text:
            '¿Por qué algunos árboles dejan caer sus hojas durante los meses fríos?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Para ahorrar agua y energía',
          'Porque ya no necesitan luz nunca más',
          'Para cambiar el color del suelo',
          'Porque todas sus ramas mueren',
        ],
        correctAnswer: 'Para ahorrar agua y energía',
        explanation:
            'El texto indica que perder las hojas ayuda a algunos árboles a ahorrar agua y energía durante los meses fríos.',
      ),
      Question(
        id: 'hojas_q5',
        text: '¿Cuál es la idea principal del texto?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Explicar cómo algunos árboles se adaptan a las estaciones y por qué sus hojas cambian de color',
          'Explicar cómo plantar un árbol',
          'Demostrar que el otoño es la mejor estación',
          'Explicar por qué todas las plantas pierden sus hojas',
        ],
        correctAnswer:
            'Explicar cómo algunos árboles se adaptan a las estaciones y por qué sus hojas cambian de color',
        explanation:
            'El texto explica la relación entre la luz, la clorofila, los pigmentos y la adaptación de algunos árboles a las estaciones.',
      ),
    ],
  };
}
