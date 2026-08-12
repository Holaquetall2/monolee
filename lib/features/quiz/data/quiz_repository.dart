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
        options: [
          'Verdadero',
          'Falso',
        ],
        correctAnswer: 'Falso',
        explanation:
            'El zorro intentó alcanzarlas varias veces, pero nunca consiguió llegar hasta ellas.',
      ),
      Question(
        id: 'zorro_q4',
        text: '¿Por qué el zorro dijo que las uvas probablemente estaban verdes?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Porque realmente las había probado',
          'Porque quería convencer a otro animal',
          'Porque no pudo alcanzarlas y buscó una explicación',
          'Porque las uvas eran pequeñas',
        ],
        correctAnswer:
            'Porque no pudo alcanzarlas y buscó una explicación',
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
        options: [
          'Verdadero',
          'Falso',
        ],
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
        correctAnswer:
            'Porque se confió demasiado y se quedó dormida',
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
        options: [
          'Verdadero',
          'Falso',
        ],
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
        options: [
          'En una cueva',
          'En una red',
          'En un río',
          'En un árbol',
        ],
        correctAnswer: 'En una red',
        explanation:
            'El león quedó atrapado en una red que habían dejado unos cazadores.',
      ),
      Question(
        id: 'leon_q3',
        text: '¿El ratón logró liberar al león?',
        type: QuestionType.trueFalse,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Verdadero',
          'Falso',
        ],
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
        correctAnswer:
            'Todos podemos ser útiles, sin importar nuestro tamaño',
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
        explanation:
            'El joven pastor cuidaba las ovejas cerca de su pueblo.',
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
        options: [
          'Verdadero',
          'Falso',
        ],
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
        correctAnswer:
            'Jugaba, trepaba y descansaba bajo su sombra',
        explanation:
            'Cuando era pequeño, el niño disfrutaba jugando junto al árbol.',
      ),
      Question(
        id: 'arbol_q2',
        text: '¿Qué le ofreció el árbol cuando el joven necesitaba dinero?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Sus frutos',
          'Sus raíces',
          'Una casa',
          'Sus hojas',
        ],
        correctAnswer: 'Sus frutos',
        explanation:
            'El árbol le permitió recoger sus frutos para venderlos.',
      ),
      Question(
        id: 'arbol_q3',
        text: '¿El árbol siguió dispuesto a ayudar incluso cuando ya tenía pocas ramas?',
        type: QuestionType.trueFalse,
        comprehensionType: ComprehensionType.literal,
        options: [
          'Verdadero',
          'Falso',
        ],
        correctAnswer: 'Verdadero',
        explanation:
            'Al final, aunque tenía poco que ofrecer, el árbol todavía le dio al anciano un lugar donde descansar.',
      ),
      Question(
        id: 'arbol_q4',
        text: '¿Qué sentimiento demuestra principalmente el árbol hacia el niño?',
        type: QuestionType.multipleChoice,
        comprehensionType: ComprehensionType.inferential,
        options: [
          'Enojo',
          'Generosidad',
          'Miedo',
          'Competencia',
        ],
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
        correctAnswer:
            'Debemos valorar y agradecer a quienes nos ayudan',
        explanation:
            'Al final, el hombre comprende cuánto recibió del árbol y siente gratitud.',
      ),
    ],
  };
}