DROP DATABASE IF EXISTS writedb;
CREATE DATABASE writedb;
USE writedb;
CREATE TABLE writings (
    id_writings INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    title VARCHAR(200),
    media_url VARCHAR(200),
    content LONGTEXT,
    CONSTRAINT fk_id_theme
        FOREIGN KEY (themes)
        REFERENCES id_theme
);

CREATE TABLE themes (
    id_theme INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom_theme VARCHAR(200),
);

INSERT INTO writings (title, media_url, content)
VALUES ("Il fait beau, c'est l'été", 
"https://www.babelio.com/users/QUIZ_Au-soleil-soleil_2983.jpeg",
"OK on y va. J'ai juste envie de dire que je suis la première à écrire sur cette merveilleuse plateforme et qu'il va falloir que je trouve suffisamment de mots, à moins que je trouve une parade pour écrire beaucoup sans trop perdre de mon précieux temps.
Lorem ipsum machin bidule copier coller et puis voila. Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.
Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.
Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.
Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila.Lorem ipsum machin bidule copier coller et puis voila." ),
("Réflexion sur le hasard","https://cache.marieclaire.fr/data/photo/w1000_c17/cuisine/47/spaghettisbolognaises.jpg", "Mais diable ! que ça doit être bon. C'est le DEUXIEME post oui le DEUXIEME. Le hasard apparaît comme un événement capricieux, extravagant, étrange. Une « étrangeté soudaine, génératrice de conséquences imprévisibles touchant l’identité ». Pour l’auteur, historien des jeux reconnu, l’homme a d’abord été « hasardeux », en commençant à cultiver les instruments de ses hasards (par exemple pour le « pile ou face », dont il est difficile de situer l’origine, chez les néandertaliens ou les sapiens). On découvre ensuite la place très importante du hasard chez les Grecs et les Romains. Hasards de la guerre, des naissances, des humeurs et des rumeurs, du jeu, des techniques… Les responsabilités politiques peuvent être tirées au sort et Cicéron exprime l’idée que « la vie est gouvernée par la Fortune, non par la sagesse ». Pour le christianisme en revanche, la Providence est d’abord une bénédiction divine. Les trois fondements de la nouvelle religion sont bien la prédestination, la grâce et le libre arbitre. L’homme est devenu un « homme de destin » et il peut y avoir des « hommes providentiels ». Pourtant, le développement des jeux, notamment des cartes à jouer, induit toute une culture à la fois populaire et savante. À la fin du XIVe siècle, l’homme découvre les probabilités et devient lui même « improbable ». Il s’agit d’évaluer le hasard et l’on voit les loteries se multiplier. Le point culminant est celui de la théorie des jeux en 1944. La notion de « Fortune » continue cependant d’exister. Et après ? L’homme est devenu « homme téméraire » le 6 août 1945, avec la bombe atomique lancée sur Hiroshima. « Le pari est son sésame, la tricherie son adjuvant. » Il s’agit de parier, parier et parier encore, en économie, dans les mœurs, les arts, les religions elles-mêmes. Un livre particulièrement documenté. Un livre pessimiste"),
("Manger des pâtes, c'est mal. Mangez plutôt du gratin","https://image.afcdn.com/recipe/20160401/5313_w420h344c1cx2088cy1412.jpg", "Le choix des pommes de terre est important. Les Charlottes donneront un goût très légèrement sucré et doux. Les Monalisas sont très bonnes également pour le gratin. L'important est que les pommes de terre soient jaunes et pas trop fermes. Les pommes de terre sont épluchées et lavées, puis découpées en rondelles (cuisson uniquement au four), plus ou moins fines selon les recettes. Elles ne doivent pas être lavées ni même rincées, l'amidon qu'elles contiennent servant à la liaison avec la crème ou le lait.

L'ail a aussi une grande importance et donne du goût au plat.

Certaines recettes préconisent de ne pas utiliser de lait et uniquement de la crème liquide, d'autres en proportions égales un mélange de crème fraîche et de lait ou encore un mélange de crème liquide et de lait. Toutefois, le choix des proportions employées dépendait du degré d'aisance de la famille (plus de crème si l'on pouvait se le permettre).

Enfin, de nombreuses recettes modernes évoquent l'ajout en ingrédient de fromage à pâte pressée cuite, notamment pour gratiner le dessus. Dans certaines régions du haut Vercors, les anciens utilisaient les vieux restes de fromage de l'année pour gratiner[réf. nécessaire].

Certaines recettes modernes précuisent les pommes de terre dans le lait. Toutefois, le fondant des pommes de terre provient avant tout d'une cuisson lente au four (plus de 90 minutes) et de l'absorption de la crème par les pommes de terre. Une variante existe en remplaçant le lait ou la crème par du bouillon (de volaille de préférence) et en ajoutant des feuilles de laurier." );

INSERT INTO themes (nom_theme)
VALUES
("Absurdités"),
("Il fait beau, c'est l'été"),
("Inspirations diverses"),
("La prolifération des méduses"),
("Le temps"),
("Une anecdote incipide"),
("Un exploit à partager");
