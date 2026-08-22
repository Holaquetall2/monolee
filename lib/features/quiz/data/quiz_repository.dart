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
    'el-reloj-de-la-estacion': [
      Question(
        id: 'reloj_q1',
        text:
            '¿Qué hizo que Emilia pensara inicialmente que el reloj estaba averiado?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Marcaba la misma hora durante varios días',
          'Las agujas habían desaparecido',
          'El encargado dijo que el mecanismo estaba roto',
          'El reloj avanzaba demasiado rápido',
        ],
        correctAnswer: 'Marcaba la misma hora durante varios días',
        explanation:
            'Emilia observó que desde la entrada parecía marcar las cuatro y diecisiete durante varios días seguidos.',
      ),
      Question(
        id: 'reloj_q2',
        text:
            '¿Qué información hizo que Emilia tuviera que buscar otra explicación?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'El encargado aseguró que el mecanismo funcionaba',
          'El hombre mayor llevaba una libreta',
          'La estación tenía pocos pasajeros',
          'El reloj era muy antiguo',
        ],
        correctAnswer: 'El encargado aseguró que el mecanismo funcionaba',
        explanation:
            'Si el mecanismo había sido revisado y funcionaba, la aparente detención del reloj debía tener otra causa.',
      ),
      Question(
        id: 'reloj_q3',
        text:
            '¿Por qué el reloj parecía detenido solamente desde ciertos lugares?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Una sombra cubría parte de las agujas desde ciertos ángulos',
          'Las agujas solo se movían cuando nadie las observaba',
          'El vidrio reflejaba otro reloj',
          'El mecanismo se detenía al caer la tarde',
        ],
        correctAnswer:
            'Una sombra cubría parte de las agujas desde ciertos ángulos',
        explanation:
            'La estructura metálica proyectaba una sombra que ocultaba parte del movimiento de las agujas desde la entrada.',
      ),
      Question(
        id: 'reloj_q4',
        text: '¿Qué estaba investigando realmente el hombre mayor?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Cómo cambiaba la posición de la sombra',
          'Por qué se atrasaban los trenes',
          'Quién había construido el reloj',
          'Cuántas personas miraban el reloj',
        ],
        correctAnswer: 'Cómo cambiaba la posición de la sombra',
        explanation:
            'El hombre registraba cada día la posición de la sombra para comparar cómo variaba durante el mes.',
      ),
      Question(
        id: 'reloj_q5',
        text:
            'En la historia, ¿qué significa mejor la idea de que algo puede depender del "punto desde donde se observa"?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.vocabulary,
        options: [
          'La apariencia de una situación puede cambiar según la perspectiva',
          'Los relojes deben observarse siempre desde cerca',
          'Las sombras son más importantes que los objetos',
          'Solo existe una forma correcta de mirar algo',
        ],
        correctAnswer:
            'La apariencia de una situación puede cambiar según la perspectiva',
        explanation:
            'El reloj parecía detenido desde un lugar específico, pero al cambiar de posición Emilia pudo ver lo que realmente ocurría.',
      ),
      Question(
        id: 'reloj_q6',
        text: '¿Cuál resume mejor el aprendizaje de Emilia?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'No aceptar una primera impresión sin considerar otras explicaciones',
          'Los objetos antiguos siempre funcionan de maneras extrañas',
          'Es mejor confiar en desconocidos que en encargados',
          'Las sombras hacen imposible observar correctamente',
        ],
        correctAnswer:
            'No aceptar una primera impresión sin considerar otras explicaciones',
        explanation:
            'La experiencia del reloj enseñó a Emilia a cuestionar aquello que parecía evidente y buscar otras perspectivas.',
      ),
    ],
    'la-expedicion-al-bosque-nublado': [
      Question(
        id: 'bosque_q1',
        text: '¿Por qué Bruno quería continuar en línea recta?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Supuso que el sendero debía seguir en la misma dirección',
          'La brújula indicaba avanzar hacia el sur',
          'Había visto al resto del grupo delante',
          'El mapa mostraba un camino completamente recto',
        ],
        correctAnswer:
            'Supuso que el sendero debía seguir en la misma dirección',
        explanation:
            'Bruno se basó en una suposición sobre cómo continuaba el sendero, sin comprobarla con el mapa.',
      ),
      Question(
        id: 'bosque_q2',
        text:
            '¿Qué dos elementos ayudaron a confirmar que habían llegado al arroyo correcto?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'El mapa y una marca amarilla sobre una roca',
          'La brújula y las voces del grupo',
          'Las tablas rotas y la posición del Sol',
          'La neblina y las piedras del arroyo',
        ],
        correctAnswer: 'El mapa y una marca amarilla sobre una roca',
        explanation:
            'La ubicación coincidía con el mapa y Elisa encontró una marca amarilla casi borrada.',
      ),
      Question(
        id: 'bosque_q3',
        text: '¿Por qué decidieron no cruzar donde estaba el puente destruido?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Consideraron que no era seguro y buscaron otra alternativa',
          'Pensaron que estaban en el arroyo equivocado',
          'El mapa prohibía cruzar cualquier arroyo',
          'La profesora les había dicho que regresaran',
        ],
        correctAnswer:
            'Consideraron que no era seguro y buscaron otra alternativa',
        explanation:
            'En vez de asumir un riesgo innecesario, siguieron la orilla hasta encontrar un punto más seguro.',
      ),
      Question(
        id: 'bosque_q4',
        text: '¿Qué cambio se observa en Bruno al final de la historia?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Reconoce que estar muy seguro no garantiza tener razón',
          'Decide que nunca volverá a usar un mapa',
          'Aprende que siempre debe seguir a Elisa',
          'Concluye que la brújula era inútil',
        ],
        correctAnswer: 'Reconoce que estar muy seguro no garantiza tener razón',
        explanation:
            'Bruno admite que al principio estaba demasiado seguro, después de comprobar que su primera idea podía haberlos desorientado.',
      ),
      Question(
        id: 'bosque_q5',
        text:
            '¿Qué evidencia respalda mejor la idea de que el grupo tomó decisiones basadas en pruebas?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.reflection,
        options: [
          'Consultaron mapa, brújula y señales antes de decidir por dónde continuar',
          'Caminaron durante más de una hora',
          'La profesora les entregó una libreta',
          'Escucharon agua antes de llegar al arroyo',
        ],
        correctAnswer:
            'Consultaron mapa, brújula y señales antes de decidir por dónde continuar',
        explanation:
            'La combinación de distintas evidencias les permitió comprobar sus decisiones en vez de basarse solo en suposiciones.',
      ),
      Question(
        id: 'bosque_q6',
        text:
            'En el contexto de la historia, ¿qué significa mejor "comprobar" una información?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.vocabulary,
        options: [
          'Buscar evidencia que permita saber si es correcta',
          'Recordarla durante mucho tiempo',
          'Compartirla con otra persona',
          'Aceptar que probablemente es cierta',
        ],
        correctAnswer: 'Buscar evidencia que permita saber si es correcta',
        explanation:
            'Los personajes no aceptaron sus ideas sin más; buscaron señales que confirmaran si coincidían con la realidad.',
      ),
      Question(
        id: 'bosque_q7',
        text: '¿Cuál es la idea central de la expedición?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Tomar buenas decisiones requiere distinguir entre suposiciones y evidencias',
          'Las excursiones con neblina deberían evitarse',
          'Los mapas son más útiles que cualquier otra herramienta',
          'Las personas seguras suelen equivocarse',
        ],
        correctAnswer:
            'Tomar buenas decisiones requiere distinguir entre suposiciones y evidencias',
        explanation:
            'La dificultad principal fue evaluar qué información podían confiar y qué necesitaban verificar.',
      ),
    ],
    'como-encuentran-el-camino-las-aves-migratorias': [
      Question(
        id: 'aves_q1',
        text:
            '¿Por qué sería incorrecto decir que todas las aves migratorias se orientan únicamente con el Sol?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque combinan diferentes señales y algunas migran de noche',
          'Porque el Sol no cambia nunca de posición',
          'Porque solamente las aves jóvenes observan el Sol',
          'Porque todas siguen exclusivamente accidentes geográficos',
        ],
        correctAnswer:
            'Porque combinan diferentes señales y algunas migran de noche',
        explanation:
            'El texto describe varias fuentes de orientación, como Sol, estrellas, campo magnético y accidentes geográficos.',
      ),
      Question(
        id: 'aves_q2',
        text:
            '¿Qué ventaja ofrece el campo magnético cuando el cielo está cubierto?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Puede servir como referencia cuando no se ven el Sol ni las estrellas',
          'Permite a las aves volar más rápido',
          'Hace que las aves reconozcan automáticamente todos los ríos',
          'Evita que las aves tengan que descansar',
        ],
        correctAnswer:
            'Puede servir como referencia cuando no se ven el Sol ni las estrellas',
        explanation:
            'El campo magnético puede funcionar como una brújula natural incluso cuando las señales visuales del cielo no están disponibles.',
      ),
      Question(
        id: 'aves_q3',
        text:
            '¿Qué observación apoya la idea de que parte de la migración es heredada?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Algunas aves jóvenes realizan su primer viaje sin conocer previamente la ruta',
          'Las aves adultas pueden mejorar sus rutas',
          'Algunas aves reconocen costas y montañas',
          'Los científicos estudian diferentes especies',
        ],
        correctAnswer:
            'Algunas aves jóvenes realizan su primer viaje sin conocer previamente la ruta',
        explanation:
            'Si pueden iniciar una migración sin haber aprendido antes el recorrido, parte de ese comportamiento debe provenir de información heredada.',
      ),
      Question(
        id: 'aves_q4',
        text: '¿Qué función cumple la experiencia según el texto?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Permite mejorar rutas y aprender a evitar riesgos',
          'Reemplaza completamente el comportamiento heredado',
          'Hace innecesarias todas las señales naturales',
          'Solo sirve para encontrar alimento durante el viaje',
        ],
        correctAnswer: 'Permite mejorar rutas y aprender a evitar riesgos',
        explanation:
            'Las aves adultas pueden modificar y perfeccionar sus rutas gracias a lo aprendido en migraciones anteriores.',
      ),
      Question(
        id: 'aves_q5',
        text:
            '¿Por qué el autor dice que hablar de un simple "mapa dentro de la cabeza" sería una simplificación?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.reflection,
        options: [
          'Porque la orientación depende de varios mecanismos y fuentes de información',
          'Porque las aves no tienen memoria',
          'Porque los mapas solo sirven en tierra',
          'Porque los científicos ya conocen todos los mecanismos',
        ],
        correctAnswer:
            'Porque la orientación depende de varios mecanismos y fuentes de información',
        explanation:
            'El texto insiste en que la migración combina señales naturales, comportamiento heredado y aprendizaje.',
      ),
      Question(
        id: 'aves_q6',
        text:
            'En este texto, ¿qué significa mejor que todavía existan "preguntas abiertas"?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.vocabulary,
        options: [
          'Hay aspectos que todavía no se comprenden completamente',
          'Los científicos no han comenzado a investigar',
          'Las respuestas cambian todos los días',
          'Las aves esconden deliberadamente información',
        ],
        correctAnswer:
            'Hay aspectos que todavía no se comprenden completamente',
        explanation:
            'Aunque se conocen muchos mecanismos, los investigadores todavía estudian cómo se combinan exactamente.',
      ),
      Question(
        id: 'aves_q7',
        text: '¿Cuál representa mejor la idea principal del texto?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Las aves migratorias utilizan una combinación compleja de señales y aprendizaje para orientarse',
          'Las estrellas son la herramienta más importante para todas las aves',
          'Las aves jóvenes se orientan mejor que las adultas',
          'La migración ocurre principalmente para escapar del frío',
        ],
        correctAnswer:
            'Las aves migratorias utilizan una combinación compleja de señales y aprendizaje para orientarse',
        explanation:
            'El texto explica distintos mecanismos y destaca que ninguno actúa necesariamente de forma aislada.',
      ),
    ],
    'la-carta-que-llego-veinte-anos-tarde': [
      Question(
        id: 'carta_q1',
        text: '¿Qué creía la familia sobre Julián antes de encontrar la carta?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Que había decidido alejarse definitivamente de ellos',
          'Que nunca había recibido noticias de Elena',
          'Que seguía trabajando en San Jacinto',
          'Que había enviado varias cartas durante los años',
        ],
        correctAnswer: 'Que había decidido alejarse definitivamente de ellos',
        explanation:
            'Durante años interpretaron su ausencia y falta de contacto como una decisión de cortar la relación familiar.',
      ),
      Question(
        id: 'carta_q2',
        text:
            '¿Qué información de la carta entraba en conflicto con esa versión familiar?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Julián lamentaba la discusión y planeaba regresar',
          'Julián decía que nunca volvería al pueblo',
          'Elena había enviado dinero a Julián',
          'Julián no conocía la dirección de su familia',
        ],
        correctAnswer: 'Julián lamentaba la discusión y planeaba regresar',
        explanation:
            'La intención expresada en la carta no coincidía con la idea de que Julián hubiera querido desaparecer para siempre.',
      ),
      Question(
        id: 'carta_q3',
        text:
            '¿Por qué fue importante encontrar la nota donde Elena decía que esperaba noticias de Julián?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Mostraba que Elena tampoco parecía creer que Julián quisiera cortar toda relación',
          'Demostraba que Elena había recibido la carta',
          'Confirmaba que Julián ya había regresado al pueblo',
          'Probaba que la oficina de correos había leído el sobre',
        ],
        correctAnswer:
            'Mostraba que Elena tampoco parecía creer que Julián quisiera cortar toda relación',
        explanation:
            'La nota aportaba otra evidencia de que la interpretación familiar posterior podía estar equivocada.',
      ),
      Question(
        id: 'carta_q4',
        text:
            '¿Qué descubrió Clara al investigar los meses posteriores a la partida de Julián?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Que había sufrido un accidente después de trabajar algunos meses',
          'Que había vuelto en secreto a San Jacinto',
          'Que nunca había trabajado en la mina',
          'Que había enviado otra carta desde el extranjero',
        ],
        correctAnswer:
            'Que había sufrido un accidente después de trabajar algunos meses',
        explanation:
            'Los registros mostraron que trabajó cuatro meses y posteriormente fue trasladado a otra ciudad tras un accidente.',
      ),
      Question(
        id: 'carta_q5',
        text:
            '¿Qué detalle permite concluir que la carta probablemente nunca fue enviada?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'El sello indicaba que nunca había salido oficialmente de San Jacinto',
          'El sobre estaba cubierto de polvo',
          'La dirección todavía existía',
          'La letra de Julián era reconocible',
        ],
        correctAnswer:
            'El sello indicaba que nunca había salido oficialmente de San Jacinto',
        explanation:
            'El sello casi borrado y la explicación de la encargada indicaban que probablemente quedó atrapada antes del despacho.',
      ),
      Question(
        id: 'carta_q6',
        text:
            '¿Qué significa mejor la frase "el silencio no había sido una decisión"?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.reflection,
        options: [
          'La ausencia de noticias fue causada por circunstancias y no necesariamente por voluntad de Julián',
          'Julián nunca había hablado con su familia',
          'La familia había decidido no responder sus cartas',
          'El accidente hizo que Julián perdiera la capacidad de comunicarse',
        ],
        correctAnswer:
            'La ausencia de noticias fue causada por circunstancias y no necesariamente por voluntad de Julián',
        explanation:
            'La familia había interpretado el silencio como rechazo, pero las nuevas pruebas mostraron otras causas posibles.',
      ),
      Question(
        id: 'carta_q7',
        text:
            '¿Qué cambió realmente gracias a la carta, si no podía modificar los hechos del pasado?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'La interpretación que la familia tenía sobre Julián',
          'La fecha en que Julián abandonó el pueblo',
          'El accidente que sufrió Julián',
          'La ubicación de la antigua oficina de correos',
        ],
        correctAnswer: 'La interpretación que la familia tenía sobre Julián',
        explanation:
            'La carta permitió comprender de otra manera sus intenciones y cuestionar la historia repetida durante años.',
      ),
      Question(
        id: 'carta_q8',
        text: '¿Cuál es la idea más profunda del cuento?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Una explicación nueva puede cambiar cómo interpretamos acontecimientos del pasado',
          'Las cartas antiguas siempre contienen secretos importantes',
          'Las oficinas de correos deben conservar todos los sobres',
          'Las familias deberían evitar discutir antes de viajar',
        ],
        correctAnswer:
            'Una explicación nueva puede cambiar cómo interpretamos acontecimientos del pasado',
        explanation:
            'El cuento muestra que una misma serie de hechos puede comprenderse de manera distinta cuando aparece nueva evidencia.',
      ),
    ],
    'el-secreto-bajo-el-hielo': [
      Question(
        id: 'hielo_q1',
        text:
            '¿Por qué los núcleos de hielo pueden entregar información sobre el pasado?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque conservan burbujas, partículas y otros materiales atrapados en distintas capas',
          'Porque el hielo recuerda automáticamente la temperatura exacta de cada año',
          'Porque los investigadores escriben información sobre cada capa',
          'Porque las capas más profundas siempre contienen volcanes',
        ],
        correctAnswer:
            'Porque conservan burbujas, partículas y otros materiales atrapados en distintas capas',
        explanation:
            'Las distintas capas pueden conservar materiales correspondientes a períodos diferentes y funcionan como evidencias del ambiente pasado.',
      ),
      Question(
        id: 'hielo_q2',
        text: '¿Qué explicación se propuso primero para las partículas negras?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Que podían ser cenizas volcánicas',
          'Que eran restos de animales',
          'Que provenían de contaminación moderna',
          'Que eran pequeñas semillas',
        ],
        correctAnswer: 'Que podían ser cenizas volcánicas',
        explanation:
            'Uno de los investigadores propuso que las partículas podían corresponder a cenizas de una erupción.',
      ),
      Question(
        id: 'hielo_q3',
        text:
            '¿Por qué el equipo no aceptó inmediatamente la hipótesis volcánica?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.reflection,
        options: [
          'Porque existían otras explicaciones posibles que también debían comprobar',
          'Porque Camila no conocía volcanes cercanos',
          'Porque las partículas eran demasiado pequeñas',
          'Porque los volcanes no producen partículas negras',
        ],
        correctAnswer:
            'Porque existían otras explicaciones posibles que también debían comprobar',
        explanation:
            'También consideraron incendios forestales y analizaron la composición antes de decidir qué explicación estaba mejor apoyada.',
      ),
      Question(
        id: 'hielo_q4',
        text:
            '¿Qué evidencia fortaleció la posibilidad de un origen volcánico?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'La presencia de minerales comunes en materiales volcánicos',
          'La existencia de montañas alrededor del lago',
          'La profundidad de la perforación',
          'El color oscuro de la muestra por sí solo',
        ],
        correctAnswer:
            'La presencia de minerales comunes en materiales volcánicos',
        explanation:
            'El análisis encontró una composición compatible con materiales producidos por erupciones.',
      ),
      Question(
        id: 'hielo_q5',
        text:
            '¿Por qué la ausencia de registros de una erupción cercana no descartó la hipótesis?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque las partículas podían haber sido transportadas desde un volcán lejano',
          'Porque los registros históricos siempre son incorrectos',
          'Porque las cenizas solo se producen lejos de los volcanes',
          'Porque Camila encontró otro volcán bajo el lago',
        ],
        correctAnswer:
            'Porque las partículas podían haber sido transportadas desde un volcán lejano',
        explanation:
            'Las partículas volcánicas pueden desplazarse grandes distancias por la atmósfera.',
      ),
      Question(
        id: 'hielo_q6',
        text:
            '¿Qué significa que la coincidencia encontrada "no demostraba con absoluta certeza" el origen de las partículas?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.vocabulary,
        options: [
          'La explicación estaba bien apoyada, pero todavía podía existir alguna alternativa',
          'La explicación debía ser descartada completamente',
          'Los investigadores no habían encontrado ninguna evidencia',
          'La ciencia nunca permite llegar a conclusiones',
        ],
        correctAnswer:
            'La explicación estaba bien apoyada, pero todavía podía existir alguna alternativa',
        explanation:
            'La evidencia hacía razonable la hipótesis, aunque no permitía afirmar que fuera la única explicación posible.',
      ),
      Question(
        id: 'hielo_q7',
        text:
            '¿Qué comportamiento de Camila contribuyó más al avance de la investigación?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Cuestionó la suposición de que el origen debía encontrarse cerca del lago',
          'Insistió en que su primera idea debía ser correcta',
          'Decidió ignorar los registros históricos',
          'Propuso abandonar el análisis de las muestras',
        ],
        correctAnswer:
            'Cuestionó la suposición de que el origen debía encontrarse cerca del lago',
        explanation:
            'Su pregunta permitió ampliar la búsqueda y comparar las partículas con erupciones ocurridas mucho más lejos.',
      ),
      Question(
        id: 'hielo_q8',
        text: '¿Cuál es la idea principal del texto?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'La ciencia construye explicaciones comparando hipótesis y evidencias',
          'Las erupciones volcánicas pueden destruir lagos congelados',
          'Los registros históricos son menos útiles que los experimentos',
          'Los estudiantes suelen encontrar mejores respuestas que los científicos',
        ],
        correctAnswer:
            'La ciencia construye explicaciones comparando hipótesis y evidencias',
        explanation:
            'Todo el proceso muestra cómo se proponen explicaciones, se ponen a prueba y se comparan con distintas fuentes de evidencia.',
      ),
    ],
    'la-ciudad-que-aprendio-a-ahorrar-agua': [
      Question(
        id: 'agua_q1',
        text:
            '¿Por qué las primeras campañas no resolvieron por sí solas el problema?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque una parte importante del desperdicio ocurría también en la infraestructura',
          'Porque los habitantes se negaron completamente a ahorrar agua',
          'Porque la ciudad no tenía medidores',
          'Porque las campañas aumentaron el consumo doméstico',
        ],
        correctAnswer:
            'Porque una parte importante del desperdicio ocurría también en la infraestructura',
        explanation:
            'El estudio mostró que mucha agua se perdía debido a filtraciones antes de llegar a las viviendas.',
      ),
      Question(
        id: 'agua_q2',
        text:
            '¿Qué ventaja tenía reparar las tuberías aunque fuera una medida costosa?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Permitía ahorrar agua de manera continua durante años',
          'Eliminaba la necesidad de ahorrar en las viviendas',
          'Permitía aumentar inmediatamente los embalses',
          'Reducía la cantidad de habitantes de la ciudad',
        ],
        correctAnswer: 'Permitía ahorrar agua de manera continua durante años',
        explanation:
            'Una reparación de infraestructura podía reducir pérdidas constantemente, sin depender de decisiones diarias.',
      ),
      Question(
        id: 'agua_q3',
        text: '¿Por qué comenzaron a regar los parques temprano por la mañana?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Para disminuir la evaporación',
          'Para que las personas no vieran el riego',
          'Porque las plantas solo absorben agua de madrugada',
          'Para reducir el tamaño de los parques',
        ],
        correctAnswer: 'Para disminuir la evaporación',
        explanation:
            'En las horas menos calurosas se pierde menos agua por evaporación.',
      ),
      Question(
        id: 'agua_q4',
        text:
            '¿Qué preocupación existía respecto de aumentar mucho el precio del agua?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Podía perjudicar especialmente a las familias con menos recursos',
          'Podía provocar más lluvias',
          'Podía aumentar las filtraciones de las tuberías',
          'Podía impedir que la ciudad midiera el consumo',
        ],
        correctAnswer:
            'Podía perjudicar especialmente a las familias con menos recursos',
        explanation:
            'Un aumento uniforme podía generar efectos distintos según la situación económica de cada familia.',
      ),
      Question(
        id: 'agua_q5',
        text:
            '¿Qué principio refleja el sistema de tarifas que finalmente se utilizó?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.reflection,
        options: [
          'Garantizar un consumo básico accesible y cobrar más por consumos elevados',
          'Cobrar exactamente lo mismo a todos sin importar cuánto consumieran',
          'Eliminar el costo del agua para quienes ahorraran',
          'Prohibir completamente los consumos superiores al promedio',
        ],
        correctAnswer:
            'Garantizar un consumo básico accesible y cobrar más por consumos elevados',
        explanation:
            'La medida intentó combinar incentivo al ahorro con acceso a una cantidad básica de agua.',
      ),
      Question(
        id: 'agua_q6',
        text:
            '¿Qué resultado sorprendió a los investigadores al evaluar el programa?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Las mejoras de infraestructura produjeron grandes ahorros sin exigir acciones diarias a la población',
          'Las campañas educativas no tuvieron ningún efecto',
          'Las nuevas tarifas fueron la única medida útil',
          'La mayoría de las fugas se encontraba dentro de las viviendas',
        ],
        correctAnswer:
            'Las mejoras de infraestructura produjeron grandes ahorros sin exigir acciones diarias a la población',
        explanation:
            'La reducción no dependió únicamente del comportamiento individual; las modificaciones estructurales fueron muy importantes.',
      ),
      Question(
        id: 'agua_q7',
        text:
            '¿Por qué la ciudad mantuvo las medidas después de que regresaron las lluvias?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque también aumentaban la preparación frente a futuras sequías',
          'Porque los embalses seguían completamente vacíos',
          'Porque estaba prohibido modificar las reglas',
          'Porque las lluvias hacían aumentar las filtraciones',
        ],
        correctAnswer:
            'Porque también aumentaban la preparación frente a futuras sequías',
        explanation:
            'La experiencia mostró que la eficiencia no solo servía durante una emergencia inmediata.',
      ),
      Question(
        id: 'agua_q8',
        text: '¿Cuál resume mejor la conclusión general del texto?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Los problemas complejos pueden requerir combinar cambios individuales, infraestructura y políticas',
          'Las campañas educativas son suficientes para solucionar cualquier sequía',
          'El precio es siempre la herramienta más eficaz para reducir el consumo',
          'La principal causa de las sequías son las tuberías defectuosas',
        ],
        correctAnswer:
            'Los problemas complejos pueden requerir combinar cambios individuales, infraestructura y políticas',
        explanation:
            'Valle Claro consiguió mejores resultados al utilizar varias estrategias complementarias.',
      ),
    ],
    'la-ultima-senal-del-observatorio': [
      Question(
        id: 'observatorio_q1',
        text:
            '¿Qué característica hizo pensar a Renata que la señal no era simplemente ruido aleatorio?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'La secuencia se repetía siempre de la misma manera',
          'La señal provenía de una montaña',
          'Daniel había construido la radio',
          'El observatorio estaba abandonado',
        ],
        correctAnswer: 'La secuencia se repetía siempre de la misma manera',
        explanation:
            'La regularidad de los pulsos sugería que había un mecanismo produciéndolos.',
      ),
      Question(
        id: 'observatorio_q2',
        text: '¿Cómo determinaron aproximadamente el origen de la señal?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Utilizando una antena direccional',
          'Siguiendo cables eléctricos',
          'Preguntando al cuidador',
          'Consultando registros históricos',
        ],
        correctAnswer: 'Utilizando una antena direccional',
        explanation:
            'Daniel realizó mediciones que indicaron que la señal provenía desde la montaña del observatorio.',
      ),
      Question(
        id: 'observatorio_q3',
        text:
            '¿Qué descubrimiento explicaba que el transmisor pudiera seguir funcionando aunque el observatorio estuviera cerrado?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Estaba conectado a un panel solar',
          'El cuidador lo encendía cada noche',
          'Tenía una batería de cinco años de duración',
          'Recibía electricidad desde el nuevo observatorio',
        ],
        correctAnswer: 'Estaba conectado a un panel solar',
        explanation:
            'El pequeño panel permitía alimentar el equipo de manera independiente.',
      ),
      Question(
        id: 'observatorio_q4',
        text: '¿Por qué se repetía exactamente la misma secuencia?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'La memoria estaba dañada y el sistema reiniciaba continuamente el mismo fragmento',
          'Alguien había programado un mensaje secreto',
          'El panel solar se apagaba después de cada transmisión',
          'La radio de Daniel solo podía captar esa parte',
        ],
        correctAnswer:
            'La memoria estaba dañada y el sistema reiniciaba continuamente el mismo fragmento',
        explanation:
            'La falla impedía completar la transmisión y hacía que el dispositivo comenzara nuevamente.',
      ),
      Question(
        id: 'observatorio_q5',
        text:
            '¿Qué nueva pregunta de Sofía mostró que la explicación todavía estaba incompleta?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.reflection,
        options: [
          'Por qué la señal había comenzado a escucharse justo esa semana',
          'Por qué el observatorio había sido construido en una montaña',
          'Quién había fabricado el transmisor',
          'Por qué Daniel estudiaba radio',
        ],
        correctAnswer:
            'Por qué la señal había comenzado a escucharse justo esa semana',
        explanation:
            'Aunque ya sabían qué dispositivo emitía los pulsos, todavía faltaba explicar por qué había vuelto a activarse recientemente.',
      ),
      Question(
        id: 'observatorio_q6',
        text: '¿Qué papel tuvo la limpieza de los arbustos?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Permitió que el panel solar recibiera nuevamente suficiente luz',
          'Reparó accidentalmente la memoria del transmisor',
          'Desbloqueó la frecuencia de la radio',
          'Desconectó los equipos principales del observatorio',
        ],
        correctAnswer:
            'Permitió que el panel solar recibiera nuevamente suficiente luz',
        explanation:
            'Al despejar el techo, el panel recuperó suficiente energía para encender el sistema.',
      ),
      Question(
        id: 'observatorio_q7',
        text:
            '¿Cuál de estas cadenas representa mejor la explicación completa del misterio?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.reflection,
        options: [
          'Limpieza del techo → panel recibe luz → transmisor se activa → memoria dañada repite el fragmento',
          'Radio encendida → observatorio recibe energía → memoria se rompe → panel solar funciona',
          'Cuidador limpia arbustos → señal espacial llega → transmisor la copia → radio la recibe',
          'Memoria dañada → observatorio se cierra → panel pierde energía → arbustos transmiten pulsos',
        ],
        correctAnswer:
            'Limpieza del techo → panel recibe luz → transmisor se activa → memoria dañada repite el fragmento',
        explanation:
            'La señal surgió por la combinación de varios factores conectados entre sí.',
      ),
      Question(
        id: 'observatorio_q8',
        text:
            '¿Por qué Daniel considera finalmente que la explicación es interesante aunque no sea una señal extraterrestre?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque muestra cómo varias causas sencillas pueden producir algo inicialmente misterioso',
          'Porque demuestra que los extraterrestres no existen',
          'Porque el transmisor era más moderno de lo esperado',
          'Porque su radio había funcionado por primera vez',
        ],
        correctAnswer:
            'Porque muestra cómo varias causas sencillas pueden producir algo inicialmente misterioso',
        explanation:
            'El interés está en comprender cómo distintas condiciones se combinaron para generar el fenómeno.',
      ),
      Question(
        id: 'observatorio_q9',
        text: '¿Cuál es la idea principal del cuento?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'Algunos problemas solo se explican al comprender cómo varias causas se relacionan',
          'Los aparatos antiguos siempre generan señales extrañas',
          'Los observatorios abandonados deberían mantenerse cerrados',
          'Las explicaciones simples suelen ser incorrectas',
        ],
        correctAnswer:
            'Algunos problemas solo se explican al comprender cómo varias causas se relacionan',
        explanation:
            'El misterio no se resolvió con una única pista, sino reconstruyendo una cadena completa de condiciones.',
      ),
    ],
    'el-viaje-de-amaru-por-la-cordillera': [
      Question(
        id: 'amaru_q1',
        text: '¿Cuál era el propósito principal del viaje?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Transportar medicamentos, herramientas y cartas hasta una comunidad',
          'Encontrar el sendero más corto de la cordillera',
          'Realizar una competencia entre rutas',
          'Visitar distintos pueblos de la montaña',
        ],
        correctAnswer:
            'Transportar medicamentos, herramientas y cartas hasta una comunidad',
        explanation:
            'El viaje tenía una función concreta: entregar materiales importantes a la comunidad.',
      ),
      Question(
        id: 'amaru_q2',
        text: '¿Por qué el padre de Amaru dudó de tomar el sendero más corto?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Observó señales de mal tiempo en las zonas altas',
          'No sabía leer el mapa',
          'El sendero estaba prohibido permanentemente',
          'Quería tardar dos días en el viaje',
        ],
        correctAnswer: 'Observó señales de mal tiempo en las zonas altas',
        explanation:
            'Las nubes y posteriormente el pronóstico mostraban que la ruta elevada podía volverse peligrosa.',
      ),
      Question(
        id: 'amaru_q3',
        text:
            '¿Qué significa la frase "un camino más corto no siempre es un camino más rápido"?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.vocabulary,
        options: [
          'Una ruta con menos distancia puede provocar retrasos si presenta mayores dificultades',
          'Todos los caminos largos permiten caminar más rápido',
          'Los mapas suelen indicar distancias incorrectas',
          'Las rutas de montaña siempre deben evitarse',
        ],
        correctAnswer:
            'Una ruta con menos distancia puede provocar retrasos si presenta mayores dificultades',
        explanation:
            'El sendero corto habría podido obligarlos a regresar debido al mal clima.',
      ),
      Question(
        id: 'amaru_q4',
        text:
            '¿Qué hecho confirmó después que la decisión de evitar el paso elevado había sido razonable?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'El paso fue cerrado por viento y acumulación de nieve',
          'Teresa conocía una ruta diferente',
          'La mula comenzó a cojear',
          'El puente del río estaba en reparación',
        ],
        correctAnswer: 'El paso fue cerrado por viento y acumulación de nieve',
        explanation:
            'El cierre mostró que probablemente habrían quedado detenidos o tendrían que haber regresado.',
      ),
      Question(
        id: 'amaru_q5',
        text:
            '¿Por qué Amaru se sintió impaciente después de encontrar a Teresa?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque ayudarla significaba avanzar todavía más lentamente',
          'Porque pensaba que Teresa había elegido el sendero equivocado',
          'Porque quería quedarse con una de las mulas',
          'Porque Teresa no llevaba medicamentos',
        ],
        correctAnswer:
            'Porque ayudarla significaba avanzar todavía más lentamente',
        explanation:
            'Amaru seguía evaluando el viaje principalmente por cuánto tiempo tardarían.',
      ),
      Question(
        id: 'amaru_q6',
        text:
            '¿Qué relación existe entre el paso de montaña y el puente peatonal?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.reflection,
        options: [
          'Ambos parecen alternativas más rápidas, pero las condiciones reales hacen que no sean adecuadas',
          'Ambos fueron destruidos por el mismo temporal',
          'Ambos solo podían cruzarse utilizando mulas',
          'Ambos aparecen incorrectamente ubicados en el mapa',
        ],
        correctAnswer:
            'Ambos parecen alternativas más rápidas, pero las condiciones reales hacen que no sean adecuadas',
        explanation:
            'En ambos casos, una opción atractiva en teoría resultó poco útil al considerar la situación completa.',
      ),
      Question(
        id: 'amaru_q7',
        text:
            '¿Por qué preguntaron a un habitante antes de dirigirse hacia el puente peatonal?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Querían comprobar si esa alternativa era realmente adecuada antes de utilizarla',
          'No sabían hacia dónde corría el río',
          'Querían abandonar a Teresa y las mulas',
          'Necesitaban saber quién había construido el puente',
        ],
        correctAnswer:
            'Querían comprobar si esa alternativa era realmente adecuada antes de utilizarla',
        explanation:
            'Buscaron información antes de asumir que el puente serviría para todo el grupo.',
      ),
      Question(
        id: 'amaru_q8',
        text: '¿Qué cambio principal ocurre en la manera de pensar de Amaru?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Deja de medir el éxito solo por la rapidez y considera seguridad y propósito',
          'Aprende que siempre debe elegir el camino más largo',
          'Concluye que viajar con otras personas es un error',
          'Decide que los mapas no son herramientas útiles',
        ],
        correctAnswer:
            'Deja de medir el éxito solo por la rapidez y considera seguridad y propósito',
        explanation:
            'Al final comprende que el objetivo era hacer llegar las provisiones y personas de manera segura, no obtener el menor tiempo posible.',
      ),
      Question(
        id: 'amaru_q9',
        text:
            '¿Qué quiere decir Amaru cuando piensa que había comparado el viaje real con un "tiempo imaginario"?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.reflection,
        options: [
          'Se frustraba comparando lo ocurrido con escenarios alternativos que nunca sucedieron',
          'Había calculado incorrectamente la hora durante todo el viaje',
          'Pensaba que el reloj de su padre no funcionaba',
          'Había imaginado una ruta que no aparecía en ningún mapa',
        ],
        correctAnswer:
            'Se frustraba comparando lo ocurrido con escenarios alternativos que nunca sucedieron',
        explanation:
            'Amaru pensaba constantemente cuánto habría tardado en circunstancias ideales que en realidad no podían comprobarse.',
      ),
      Question(
        id: 'amaru_q10',
        text: '¿Cuál resume mejor la idea principal de la historia?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.mainIdea,
        options: [
          'La mejor decisión es la que permite cumplir el objetivo considerando riesgos y necesidades, no necesariamente la más rápida',
          'Ayudar a otras personas siempre provoca retrasos innecesarios',
          'Los senderos de montaña son menos eficientes que las carreteras',
          'Para viajar bien es necesario evitar cualquier cambio de plan',
        ],
        correctAnswer:
            'La mejor decisión es la que permite cumplir el objetivo considerando riesgos y necesidades, no necesariamente la más rápida',
        explanation:
            'Todo el viaje obliga a Amaru a redefinir qué significa realmente elegir un camino eficiente.',
      ),
    ],
  };
}
