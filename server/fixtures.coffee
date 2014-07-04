if Meteor.users.find().count() is 0

  Meteor.users.insert
    _id: "HYWb7noyzHd9tq6wR",

    profile:
        aboutMe: "I love pepperoni! ",
        email: "victorleung@gmail.com",
        instrumentsPlayed: [
            "assotor",
            "fingerboard synthesizer",
            "xylophone"
        ],
        instrumentsPlayedTemporary: [
            "assotor",
            "fingerboard synthesizer",
            "xylophone"
        ],
        lat: 22.265586838370783,
        long: 114.22564685228281,
        name: "Victor Leung",
        picture: "http://graph.facebook.com/10152606907504047/picture/?type=large"
    services:
        facebook:
            accessToken: "CAAK55NBjrkkBAIqyV3LBobXH826T8OUUlztQFXZCDD5SA1vBUpVqErndQtdTDlgkhMTI3Eq3zaiwyuhTMqxP7D2ZAJCc7uAnV1EmDouASQzwXNzYU6jQlIgySVPKRu386LZA2MOML5AzxR4ZCSKwHfuKSmcuRsyCqUAv0UoAFBK8RE2UleZCZB0I4SqPDuxssZD",
            email: "victorleungtw@gmail.com",
            expiresAt: 1409480316355,
            first_name: "Victor",
            gender: "male",
            id: "10152606907504047",
            last_name: "Leung",
            link: "https://www.facebook.com/app_scoped_user_id/10152606907504047/",
            locale: "en_US",
            name: "Victor Leung"



  Meteor.users.insert
    _id: "d6HmdAst3RZeB4LPt",
    profile:
        aboutMe: "I hate Michael",
        email: "",
        instrumentsPlayed: [
            "alcahuete",
            "bazooka"
        ],
        instrumentsPlayedTemporary: [
            "alcahuete",
            "bazooka"
        ],
        name: "Paul Ld",
        picture: "http://graph.facebook.com/10152924912184899/picture/?type=large",
        lat: 22.271146893317436,
        long: 114.20024096849374
    services:
        facebook:
            accessToken: "CAAK55NBjrkkBAOco0BZA29RmqIRSxlXQZBKN1YWVRkSxqqzNjf6WMdIBdpb3ZCKpmsLpfCBZAjd9S3mIn3n3hoCe5PH6B2ZCZCx6uZASP0WRoF3MD8FDl7ibAwKxpwDj6iMluQke848AHVKdHKciUmo6ZAJTRDJlqucBVZAgZA8dH3j2diaHOMGjpQ7xDg6DOAUZBkZD",
            email: "paul.lugagnedelpon@gmail.com",
            expiresAt: 1409557341551,
            first_name: "Paul",
            gender: "male",
            id: "10152924912184899",
            last_name: "Ld",
            link: "https://www.facebook.com/app_scoped_user_id/10152924912184899/",
            locale: "en_GB",
            name: "Paul Ld"

  Meteor.users.insert
    _id: "LKper8LwRyxnwWNXG",
    profile:
        aboutMe: "I love to travel",
        email: "zak.knudsen@gmail.com",
        instrumentsPlayed: [
            "alto clarinet",
            "piano"
        ],
        instrumentsPlayedTemporary: [
            "alto clarinet",
            "piano"
        ],
        name: "Zak Knudsen",
        picture: "http://graph.facebook.com/10154203030305182/picture/?type=large",
        lat: 22.26987604309445,
        long: 114.15698230150156
    services:
        facebook:
            accessToken: "CAAK55NBjrkkBAOVSwNLQZBMs91VYzibbyOwV91hpq86SxvtTrEIm5ghtGeZCcsFZAlbh9y4p6hZCQ4XZBI9VoDSMpjgDM6ApugxRTTLrsKtyZAaW7kGZCR1sgKfMqM6shrFyJwVhLZBzCyBjYvHLEZAAzzaR0Nf7Bw5JzsbJBRZAoRn5Jbenq1EFVWbnKdQJOa5jsZD",
            expiresAt: 1409558485984,
            id: "10154203030305182",
            email: "zak.knudsen@gmail.com",
            name: "Zak Knudsen",
            first_name: "Zak",
            last_name: "Knudsen",
            link: "https://www.facebook.com/app_scoped_user_id/10154203030305182/",
            gender: "male",
            locale: "en_US"










  # Meteor.users.insert
  #   _id: "R6kpfKF8eP3gu7Jzj",
  #   createdAt: "2014-05-29T10:03:06.022Z",
  #   profile:
  #     name: "Paul Ld"
  #     picture: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRM8-wOnNru81jF_VlFOWMxRP_HFsXQKxmljjT_hyDK2B9Mrjlp"
  #   services:
  #     facebook:
  #       accessToken: "CAAK55NBjrkkBAPPZBCJjTarheM1Y9IgUg6wENZCNUl83SZCarA4BZCmkfhkdlIdUi2GWr0f7dkmWqNZB6Mvd8OVABja2SsOeKPFu72iG6YMwNNQ6MF7q4R5LE6nHbNBB4dlYaSS5Pssh1JFaDZAGEFPGrT04slxkgqn1fBhFJ9UuVxQBFypb6c",
  #       expiresAt: 1406541784908,
  #       id: "10152924912184899",
  #       email: "paul.lugagnedelpon@gmail.com",
  #       name: "Paul Ld",
  #       first_name: "Paul",
  #       last_name: "Ld",
  #       link: "https://www.facebook.com/app_scoped_user_id/10152924912184899/",
  #       gender: "male",
  #       locale: "en_GB"

if Instruments.find().count() is 0

  Instruments.insert
    type: "piano",
    typeId: "mhdNuBvgM8TTdzK2v",
    owner: "xCBbmj7B3gH6AgKMv",
    level: "1"

  Instruments.insert
    type: "singing",
    typeId: "ji2YeFDZmqDZNGTsq",
    owner: "xCBbmj7B3gH6AgKMv",
    level: "2.5"

  Instruments.insert
    type: "banjo",
    typeId: "GoLKgYhZs5wxgRppE",
    owner: "xCBbmj7B3gH6AgKMv",
    level: "4"

  Instruments.insert
    type: "rap",
    typeId: "FL5rXwjahctyN3wDD",
    owner: "XSw6XDmiTggTfwLKw",
    level: "2"

  Instruments.insert
    type: "triangle",
    typeId: "4N28kZXzbjtsPjFCu",
    owner: "XSw6XDmiTggTfwLKw",
    level: "5"

  Instruments.insert
    type: "acoustic guitar",
    typeId: "S7MopDF2WwJvd2R4s",
    owner: "R6kpfKF8eP3gu7Jzj",
    level: "4"

  Instruments.insert
    type: "ukulele",
    typeId: "B93acuucgFnYHdm8z",
    owner: "R6kpfKF8eP3gu7Jzj",
    level: "4.5"

  Instruments.insert
    type: "singing",
    typeId: "ji2YeFDZmqDZNGTsq",
    owner: "R6kpfKF8eP3gu7Jzj",
    level: "1"

  Instruments.insert
    type: "piano",
    typeId: "mhdNuBvgM8TTdzK2v",
    owner: "R6kpfKF8eP3gu7Jzj",
    level: "4"

if InstrumentList.find().count() is 0

  InstrumentList.insert
    name: "agida"

  InstrumentList.insert
    name: "alcahuete"

  InstrumentList.insert
    name: "apinti"

  InstrumentList.insert
    name: "arobapö"

  InstrumentList.insert
    name: "ashiko"

  InstrumentList.insert
    name: "assotor"

  InstrumentList.insert
    name: "baboula"

  InstrumentList.insert
    name: "balsi"

  InstrumentList.insert
    name: "bamboula"

  InstrumentList.insert
    name: "bari"

  InstrumentList.insert
    name: "barrel drum"

  InstrumentList.insert
    name: "barriles"

  InstrumentList.insert
    name: "bass drum"

  InstrumentList.insert
    name: "bodhrön"

  InstrumentList.insert
    name: "bongo drums"

  InstrumentList.insert
    name: "boobam"

  InstrumentList.insert
    name: "candombe"

  InstrumentList.insert
    name: "chenda"

  InstrumentList.insert
    name: "conga"

  InstrumentList.insert
    name: "cuêca"

  InstrumentList.insert
    name: "dabakan"

  InstrumentList.insert
    name: "daf"

  InstrumentList.insert
    name: "davul"

  InstrumentList.insert
    name: "dhaa"

  InstrumentList.insert
    name: "dhimay"

  InstrumentList.insert
    name: "dhol"

  InstrumentList.insert
    name: "dholak"

  InstrumentList.insert
    name: "dimdi"

  InstrumentList.insert
    name: "djembe"

  InstrumentList.insert
    name: "dollu"

  InstrumentList.insert
    name: "dunun"

  InstrumentList.insert
    name: "drum kit"

  InstrumentList.insert
    name: "gran cassa"

  InstrumentList.insert
    name: "goblet drum"

  InstrumentList.insert
    name: "hira-daiko"

  InstrumentList.insert
    name: "ilimba drum"

  InstrumentList.insert
    name: "ingoma"

  InstrumentList.insert
    name: "janggu"

  InstrumentList.insert
    name: "kakko"

  InstrumentList.insert
    name: "kanjira"

  InstrumentList.insert
    name: "kendang"

  InstrumentList.insert
    name: "khol"

  InstrumentList.insert
    name: "lambeg drum"

  InstrumentList.insert
    name: "madhalam"

  InstrumentList.insert
    name: "madal"

  InstrumentList.insert
    name: "maddale"

  InstrumentList.insert
    name: "maktoum"

  InstrumentList.insert
    name: "mridangam"

  InstrumentList.insert
    name: "naqara"

  InstrumentList.insert
    name: "naqareh"

  InstrumentList.insert
    name: "o-daiko"

  InstrumentList.insert
    name: "okedo-daiko"

  InstrumentList.insert
    name: "octaban"

  InstrumentList.insert
    name: "pakhavaj"

  InstrumentList.insert
    name: "pandero"

  InstrumentList.insert
    name: "piccolo snare"

  InstrumentList.insert
    name: "sabar"

  InstrumentList.insert
    name: "samphor"

  InstrumentList.insert
    name: "shime-jishi daiko"

  InstrumentList.insert
    name: "snare"

  InstrumentList.insert
    name: "surdo"

  InstrumentList.insert
    name: "tabla"

  InstrumentList.insert
    name: "taiko"

  InstrumentList.insert
    name: "talking drum"

  InstrumentList.insert
    name: "tsukeshime-daiko"

  InstrumentList.insert
    name: "tsuzumi"

  InstrumentList.insert
    name: "tambor huacana"

  InstrumentList.insert
    name: "tamboril"

  InstrumentList.insert
    name: "tamborita"

  InstrumentList.insert
    name: "tambou bas a de fas"

  InstrumentList.insert
    name: "tambou bas a yon fas"

  InstrumentList.insert
    name: "tan-tan"

  InstrumentList.insert
    name: "taphon"

  InstrumentList.insert
    name: "thavil"

  InstrumentList.insert
    name: "timpani"

  InstrumentList.insert
    name: "tom-tom"

  InstrumentList.insert
    name: "tombak"

  InstrumentList.insert
    name: "repique"

  InstrumentList.insert
    name: "tupan"

  InstrumentList.insert
    name: "uchiwa-daiko"

  InstrumentList.insert
    name: "accordion"

  InstrumentList.insert
    name: "air horn"

  InstrumentList.insert
    name: "alboka"

  InstrumentList.insert
    name: "alphorn"

  InstrumentList.insert
    name: "alto horn"

  InstrumentList.insert
    name: "alto/contralto voice"

  InstrumentList.insert
    name: "arghul"

  InstrumentList.insert
    name: "armonica"

  InstrumentList.insert
    name: "atenteben"

  InstrumentList.insert
    name: "bagpipe"

  InstrumentList.insert
    name: "balaban"

  InstrumentList.insert
    name: "bandoneãn"

  InstrumentList.insert
    name: "bansuri"

  InstrumentList.insert
    name: "baritone horn"

  InstrumentList.insert
    name: "baritone voice"

  InstrumentList.insert
    name: "bass/basso voice"

  InstrumentList.insert
    name: "bassoon"

  InstrumentList.insert
    name: "bawu"

  InstrumentList.insert
    name: "bayan"

  InstrumentList.insert
    name: "bazooka"

  InstrumentList.insert
    name: "beatboxing"

  InstrumentList.insert
    name: "bifora"

  InstrumentList.insert
    name: "birbyn"

  InstrumentList.insert
    name: "blul"

  InstrumentList.insert
    name: "bombarde"

  InstrumentList.insert
    name: "buccina"

  InstrumentList.insert
    name: "bugle"

  InstrumentList.insert
    name: "bullroarer"

  InstrumentList.insert
    name: "calliope"

  InstrumentList.insert
    name: "castrato"

  InstrumentList.insert
    name: "chalumeau"

  InstrumentList.insert
    name: "cimbasso"

  InstrumentList.insert
    name: "alto clarinet"

  InstrumentList.insert
    name: "bass clarinet"

  InstrumentList.insert
    name: "basset clarinet"

  InstrumentList.insert
    name: "piccolo clarinet"

  InstrumentList.insert
    name: "soprano clarinet"

  InstrumentList.insert
    name: "clarytone"

  InstrumentList.insert
    name: "concertina"

  InstrumentList.insert
    name: "conch"

  InstrumentList.insert
    name: "cornamuse"

  InstrumentList.insert
    name: "cornet"

  InstrumentList.insert
    name: "cornett"

  InstrumentList.insert
    name: "cornu"

  InstrumentList.insert
    name: "corrugaphone"

  InstrumentList.insert
    name: "countertenor"

  InstrumentList.insert
    name: "cromorne"

  InstrumentList.insert
    name: "crumhorn"

  InstrumentList.insert
    name: "danso"

  InstrumentList.insert
    name: "death growl"

  InstrumentList.insert
    name: "didgeridoo"

  InstrumentList.insert
    name: "diple"

  InstrumentList.insert
    name: "dizi"

  InstrumentList.insert
    name: "double bell euphonium"

  InstrumentList.insert
    name: "doulophone/cuprophone"

  InstrumentList.insert
    name: "duduk"

  InstrumentList.insert
    name: "dulcian"

  InstrumentList.insert
    name: "dulzaina"

  InstrumentList.insert
    name: "dung-dkar"

  InstrumentList.insert
    name: "dzhamara"

  InstrumentList.insert
    name: "english horn"

  InstrumentList.insert
    name: "euphonium"

  InstrumentList.insert
    name: "falsetto"

  InstrumentList.insert
    name: "fife"

  InstrumentList.insert
    name: "firebird"

  InstrumentList.insert
    name: "fiscorn"

  InstrumentList.insert
    name: "flabiol"

  InstrumentList.insert
    name: "flageolet"

  InstrumentList.insert
    name: "flatt trumpet"

  InstrumentList.insert
    name: "flugelhorn"

  InstrumentList.insert
    name: "flumpet"

  InstrumentList.insert
    name: "flutina"

  InstrumentList.insert
    name: "flute"

  InstrumentList.insert
    name: "folgerphone"

  InstrumentList.insert
    name: "fujara"

  InstrumentList.insert
    name: "gaida"

  InstrumentList.insert
    name: "garmon"

  InstrumentList.insert
    name: "gemshorn"

  InstrumentList.insert
    name: "gralla"

  InstrumentList.insert
    name: "guan"

  InstrumentList.insert
    name: "hano"

  InstrumentList.insert
    name: "harmonica"

  InstrumentList.insert
    name: "harmonium"

  InstrumentList.insert
    name: "heckelphone"

  InstrumentList.insert
    name: "helicon"

  InstrumentList.insert
    name: "horagai"

  InstrumentList.insert
    name: "horn/french horn"

  InstrumentList.insert
    name: "hosaphone"

  InstrumentList.insert
    name: "hotchiku"

  InstrumentList.insert
    name: "hulusi"

  InstrumentList.insert
    name: "human voice"

  InstrumentList.insert
    name: "hun"

  InstrumentList.insert
    name: "inci"

  InstrumentList.insert
    name: "irish flute"

  InstrumentList.insert
    name: "jug"

  InstrumentList.insert
    name: "kagurabue"

  InstrumentList.insert
    name: "kalaleng"

  InstrumentList.insert
    name: "kaval"

  InstrumentList.insert
    name: "kazoo"

  InstrumentList.insert
    name: "kn bu"

  InstrumentList.insert
    name: "key bugle"

  InstrumentList.insert
    name: "khene"

  InstrumentList.insert
    name: "khloy"

  InstrumentList.insert
    name: "khlui"

  InstrumentList.insert
    name: "komabue"

  InstrumentList.insert
    name: "koncovka"

  InstrumentList.insert
    name: "koudi"

  InstrumentList.insert
    name: "kuhlohorn"

  InstrumentList.insert
    name: "launeddas"

  InstrumentList.insert
    name: "livenka"

  InstrumentList.insert
    name: "lusheng"

  InstrumentList.insert
    name: "mangtong"

  InstrumentList.insert
    name: "lituus"

  InstrumentList.insert
    name: "mellophone"

  InstrumentList.insert
    name: "melodica"

  InstrumentList.insert
    name: "melodeon"

  InstrumentList.insert
    name: "mezzo-soprano"

  InstrumentList.insert
    name: "mijwiz"

  InstrumentList.insert
    name: "mizmar"

  InstrumentList.insert
    name: "musette de cour"

  InstrumentList.insert
    name: "nadaswaram"

  InstrumentList.insert
    name: "nagak"

  InstrumentList.insert
    name: "ney"

  InstrumentList.insert
    name: "nguru"

  InstrumentList.insert
    name: "nohkan"

  InstrumentList.insert
    name: "nose flute"

  InstrumentList.insert
    name: "oboeo"

  InstrumentList.insert
    name: "ocarina"

  InstrumentList.insert
    name: "octavin"

  InstrumentList.insert
    name: "ophicleide"

  InstrumentList.insert
    name: "paixiao"

  InstrumentList.insert
    name: "palendag"

  InstrumentList.insert
    name: "pan flute"

  InstrumentList.insert
    name: "pasiyak or water whistle"

  InstrumentList.insert
    name: "pavari"

  InstrumentList.insert
    name: "pibgorn"

  InstrumentList.insert
    name: "picco pipe"

  InstrumentList.insert
    name: "piccolo"

  InstrumentList.insert
    name: "piccolo trumpet"

  InstrumentList.insert
    name: "pipe organ"

  InstrumentList.insert
    name: "pitch pipe"

  InstrumentList.insert
    name: "pocket cornet"

  InstrumentList.insert
    name: "pocket trumpet"

  InstrumentList.insert
    name: "post horn"

  InstrumentList.insert
    name: "pu"

  InstrumentList.insert
    name: "pulalu"

  InstrumentList.insert
    name: "quena"

  InstrumentList.insert
    name: "quinticlave"

  InstrumentList.insert
    name: "rackett"

  InstrumentList.insert
    name: "rap"

  InstrumentList.insert
    name: "rauschpfeife"

  InstrumentList.insert
    name: "recorder"

  InstrumentList.insert
    name: "reed contrabass"

  InstrumentList.insert
    name: "reed organ"

  InstrumentList.insert
    name: "rhaita"

  InstrumentList.insert
    name: "robero"

  InstrumentList.insert
    name: "roman tuba"

  InstrumentList.insert
    name: "ryuteki"

  InstrumentList.insert
    name: "saenghwang"

  InstrumentList.insert
    name: "sackbut"

  InstrumentList.insert
    name: "samponia"

  InstrumentList.insert
    name: "saratovskaya garmonika"

  InstrumentList.insert
    name: "sarrusophones"

  InstrumentList.insert
    name: "saxophone"

  InstrumentList.insert
    name: "scat singing"

  InstrumentList.insert
    name: "schwyzerrgeli"

  InstrumentList.insert
    name: "serpent"

  InstrumentList.insert
    name: "shakuhachi"

  InstrumentList.insert
    name: "shankha"

  InstrumentList.insert
    name: "shawm"

  InstrumentList.insert
    name: "shehnai"

  InstrumentList.insert
    name: "sheng"

  InstrumentList.insert
    name: "shinobue"

  InstrumentList.insert
    name: "shofar"

  InstrumentList.insert
    name: "sh"

  InstrumentList.insert
    name: "shvi"

  InstrumentList.insert
    name: "siku"

  InstrumentList.insert
    name: "siren"

  InstrumentList.insert
    name: "slide trumpet"

  InstrumentList.insert
    name: "slide whistle"

  InstrumentList.insert
    name: "sodina"

  InstrumentList.insert
    name: "sopila"

  InstrumentList.insert
    name: "soprano"

  InstrumentList.insert
    name: "sorna"

  InstrumentList.insert
    name: "sousaphone"

  InstrumentList.insert
    name: "sralai"

  InstrumentList.insert
    name: "sudrophone"

  InstrumentList.insert
    name: "suling"

  InstrumentList.insert
    name: "suona"

  InstrumentList.insert
    name: "superbone"

  InstrumentList.insert
    name: "swordblade"

  InstrumentList.insert
    name: "tabor pipe"

  InstrumentList.insert
    name: "taepyeongso"

  InstrumentList.insert
    name: "tarogato"

  InstrumentList.insert
    name: "tenor"

  InstrumentList.insert
    name: "tenora"

  InstrumentList.insert
    name: "singing"

  InstrumentList.insert
    name: "tible"

  InstrumentList.insert
    name: "tin whistle"

  InstrumentList.insert
    name: "toasting"

  InstrumentList.insert
    name: "tonette"

  InstrumentList.insert
    name: "triangle"

  InstrumentList.insert
    name: "trikiti"

  InstrumentList.insert
    name: "trombone"

  InstrumentList.insert
    name: "tromboon"

  InstrumentList.insert
    name: "trompeta china"

  InstrumentList.insert
    name: "trumpet"

  InstrumentList.insert
    name: "tuba"

  InstrumentList.insert
    name: "tube trumpet"

  InstrumentList.insert
    name: "tumpong"

  InstrumentList.insert
    name: "tungso"

  InstrumentList.insert
    name: "tutek"

  InstrumentList.insert
    name: "txistu"

  InstrumentList.insert
    name: "uilleann pipes"

  InstrumentList.insert
    name: "venu"

  InstrumentList.insert
    name: "vienna horn"

  InstrumentList.insert
    name: "beatbox"

  InstrumentList.insert
    name: "vuvuzela"

  InstrumentList.insert
    name: "wagner tuba"

  InstrumentList.insert
    name: "washint"

  InstrumentList.insert
    name: "flute"

  InstrumentList.insert
    name: "whip"

  InstrumentList.insert
    name: "whistle"

  InstrumentList.insert
    name: "willow flute"

  InstrumentList.insert
    name: "xiao"

  InstrumentList.insert
    name: "xun"

  InstrumentList.insert
    name: "yodel"

  InstrumentList.insert
    name: "yotar"

  InstrumentList.insert
    name: "yu"

  InstrumentList.insert
    name: "zhaleika"

  InstrumentList.insert
    name: "zufolo"

  InstrumentList.insert
    name: "zugtrompette"

  InstrumentList.insert
    name: "zurna"

  InstrumentList.insert
    name: "aeolian harp"

  InstrumentList.insert
    name: "ajaeng"

  InstrumentList.insert
    name: "appalachian dulcimer"

  InstrumentList.insert
    name: "archlute"

  InstrumentList.insert
    name: "arpeggione"

  InstrumentList.insert
    name: "autoharp"

  InstrumentList.insert
    name: "baglama"

  InstrumentList.insert
    name: "balalaika"

  InstrumentList.insert
    name: "bandura"

  InstrumentList.insert
    name: "banjo"

  InstrumentList.insert
    name: "banjo mandolin"

  InstrumentList.insert
    name: "banjo ukulele"

  InstrumentList.insert
    name: "barbat"

  InstrumentList.insert
    name: "baryton"

  InstrumentList.insert
    name: "berimbau"

  InstrumentList.insert
    name: "biwa"

  InstrumentList.insert
    name: "bordonua"

  InstrumentList.insert
    name: "bouzouki"

  InstrumentList.insert
    name: "cavaquinho"

  InstrumentList.insert
    name: "cello"

  InstrumentList.insert
    name: "chapman stick"

  InstrumentList.insert
    name: "charango"

  InstrumentList.insert
    name: "cimbalom"

  InstrumentList.insert
    name: "electric cymbalum"

  InstrumentList.insert
    name: "citole"

  InstrumentList.insert
    name: "cittern"

  InstrumentList.insert
    name: "clavichord"

  InstrumentList.insert
    name: "crwth"

  InstrumentList.insert
    name: "cuatro"

  InstrumentList.insert
    name: "dahu"

  InstrumentList.insert
    name: "diddley bow"

  InstrumentList.insert
    name: "dihu"

  InstrumentList.insert
    name: "domra"

  InstrumentList.insert
    name: "double-neck guitjo"

  InstrumentList.insert
    name: "double bass"

  InstrumentList.insert
    name: "dutar"

  InstrumentList.insert
    name: "duxianqin"

  InstrumentList.insert
    name: "dulcimer"

  InstrumentList.insert
    name: "ektara"

  InstrumentList.insert
    name: "erhu"

  InstrumentList.insert
    name: "erxian"

  InstrumentList.insert
    name: "esraj"

  InstrumentList.insert
    name: "faglong/fuglung"

  InstrumentList.insert
    name: "fegereng"

  InstrumentList.insert
    name: "fiddle"

  InstrumentList.insert
    name: "fortepiano"

  InstrumentList.insert
    name: "gayageum"

  InstrumentList.insert
    name: "guzheng"

  InstrumentList.insert
    name: "gehu"

  InstrumentList.insert
    name: "geomungo"

  InstrumentList.insert
    name: "gopuz"

  InstrumentList.insert
    name: "gottuvadhyam"

  InstrumentList.insert
    name: "acoustic guitar"

  InstrumentList.insert
    name: "bass guitar"

  InstrumentList.insert
    name: "classical guitar"

  InstrumentList.insert
    name: "electric guitar"

  InstrumentList.insert
    name: "harp guitar"

  InstrumentList.insert
    name: "yotar"

  InstrumentList.insert
    name: "guitarra quinta huapanguera"

  InstrumentList.insert
    name: "guitarn"

  InstrumentList.insert
    name: "gittern"

  InstrumentList.insert
    name: "gusli"

  InstrumentList.insert
    name: "guqin"

  InstrumentList.insert
    name: "guzheng"

  InstrumentList.insert
    name: "haegeum"

  InstrumentList.insert
    name: "hammered dulcimer"

  InstrumentList.insert
    name: "hardanger fiddle"

  InstrumentList.insert
    name: "harmonico"

  InstrumentList.insert
    name: "harp"

  InstrumentList.insert
    name: "harpsichord"

  InstrumentList.insert
    name: "hegelong"

  InstrumentList.insert
    name: "huluhu"

  InstrumentList.insert
    name: "huqin"

  InstrumentList.insert
    name: "hurdy gurdy"

  InstrumentList.insert
    name: "igil"

  InstrumentList.insert
    name: "irish bouzouki"

  InstrumentList.insert
    name: "jarana de son jarocho"

  InstrumentList.insert
    name: "jarana huasteca"

  InstrumentList.insert
    name: "jarana mosquito"

  InstrumentList.insert
    name: "jarana segunda"

  InstrumentList.insert
    name: "jarana tercera"

  InstrumentList.insert
    name: "jiaohu"

  InstrumentList.insert
    name: "kabosy"

  InstrumentList.insert
    name: "kadlong"

  InstrumentList.insert
    name: "kamancha"

  InstrumentList.insert
    name: "kantele"

  InstrumentList.insert
    name: "kemenche"

  InstrumentList.insert
    name: "khim"

  InstrumentList.insert
    name: "kobza"

  InstrumentList.insert
    name: "koky"

  InstrumentList.insert
    name: "komungo"

  InstrumentList.insert
    name: "kora"

  InstrumentList.insert
    name: "koto"

  InstrumentList.insert
    name: "kubing"

  InstrumentList.insert
    name: "kudyapi"

  InstrumentList.insert
    name: "langeleik"

  InstrumentList.insert
    name: "laruan"

  InstrumentList.insert
    name: "leiqin"

  InstrumentList.insert
    name: "lirone"

  InstrumentList.insert
    name: "lokanga"

  InstrumentList.insert
    name: "lute"

  InstrumentList.insert
    name: "lyra"

  InstrumentList.insert
    name: "lyra"

  InstrumentList.insert
    name: "lyre"

  InstrumentList.insert
    name: "maguhu"

  InstrumentList.insert
    name: "mando-bass"

  InstrumentList.insert
    name: "mandocello"

  InstrumentList.insert
    name: "mandola"

  InstrumentList.insert
    name: "mandolin"

  InstrumentList.insert
    name: "mandora"

  InstrumentList.insert
    name: "mandore"

  InstrumentList.insert
    name: "marovany"

  InstrumentList.insert
    name: "mohan veena"

  InstrumentList.insert
    name: "morin khuur"

  InstrumentList.insert
    name: "musical bow"

  InstrumentList.insert
    name: "nyckelharpa"

  InstrumentList.insert
    name: "octave mandolin"

  InstrumentList.insert
    name: "octobass"

  InstrumentList.insert
    name: "oud"

  InstrumentList.insert
    name: "piccolo violino"

  InstrumentList.insert
    name: "piccolo cello/violoncello piccolo"

  InstrumentList.insert
    name: "pipa"

  InstrumentList.insert
    name: "piwancha"

  InstrumentList.insert
    name: "psaltery"

  InstrumentList.insert
    name: "quatro"

  InstrumentList.insert
    name: "ravanahatha"

  InstrumentList.insert
    name: "rebab"

  InstrumentList.insert
    name: "rebec"

  InstrumentList.insert
    name: "requinto jarocho"

  InstrumentList.insert
    name: "ruan"

  InstrumentList.insert
    name: "rudra vina"

  InstrumentList.insert
    name: "sallameh"

  InstrumentList.insert
    name: "sanshin"

  InstrumentList.insert
    name: "santoor"

  InstrumentList.insert
    name: "sanxian"

  InstrumentList.insert
    name: "sarangi"

  InstrumentList.insert
    name: "sarod"

  InstrumentList.insert
    name: "saung"

  InstrumentList.insert
    name: "saw sam sai"

  InstrumentList.insert
    name: "saz"

  InstrumentList.insert
    name: "se"

  InstrumentList.insert
    name: "shamisen"

  InstrumentList.insert
    name: "setar"

  InstrumentList.insert
    name: "sitar"

  InstrumentList.insert
    name: "sitarla"

  InstrumentList.insert
    name: "stroh violin"

  InstrumentList.insert
    name: "sopranino mandolin"

  InstrumentList.insert
    name: "tamburitza"

  InstrumentList.insert
    name: "tanpura"

  InstrumentList.insert
    name: "tar"

  InstrumentList.insert
    name: "tea chest bass"

  InstrumentList.insert
    name: "tembr"

  InstrumentList.insert
    name: "tenor viola"

  InstrumentList.insert
    name: "theorbo"

  InstrumentList.insert
    name: "timple"

  InstrumentList.insert
    name: "tres"

  InstrumentList.insert
    name: "tro"

  InstrumentList.insert
    name: "trumpet marine/tromba marina"

  InstrumentList.insert
    name: "tsymbaly"

  InstrumentList.insert
    name: "tuhu"

  InstrumentList.insert
    name: "ukulele"

  InstrumentList.insert
    name: "valiha"

  InstrumentList.insert
    name: "veena"

  InstrumentList.insert
    name: "vertical viola"

  InstrumentList.insert
    name: "vichitra vina"

  InstrumentList.insert
    name: "vielle"

  InstrumentList.insert
    name: "vihuela"

  InstrumentList.insert
    name: "vihuela"

  InstrumentList.insert
    name: "viol"

  InstrumentList.insert
    name: "viola da gamba"

  InstrumentList.insert
    name: "viola"

  InstrumentList.insert
    name: "viola d'amore"

  InstrumentList.insert
    name: "violin"

  InstrumentList.insert
    name: "violotta"

  InstrumentList.insert
    name: "washtub bass"

  InstrumentList.insert
    name: "whamola"

  InstrumentList.insert
    name: "xalam/khalam"

  InstrumentList.insert
    name: "xylophone"

  InstrumentList.insert
    name: "yaylý tanbur"

  InstrumentList.insert
    name: "yazheng"

  InstrumentList.insert
    name: "yangqin"

  InstrumentList.insert
    name: "zhonghu"

  InstrumentList.insert
    name: "zhuihu"

  InstrumentList.insert
    name: "zither"

  InstrumentList.insert
    name: "overtone zither"

  InstrumentList.insert
    name: "alphasphere"

  InstrumentList.insert
    name: "audiocubes"

  InstrumentList.insert
    name: "croix sonore"

  InstrumentList.insert
    name: "denis d'or"

  InstrumentList.insert
    name: "dubreq stylophone"

  InstrumentList.insert
    name: "drum machine"

  InstrumentList.insert
    name: "eigenharp"

  InstrumentList.insert
    name: "electronic organ"

  InstrumentList.insert
    name: "ewi"

  InstrumentList.insert
    name: "fingerboard synthesizer"

  InstrumentList.insert
    name: "hammond organ"

  InstrumentList.insert
    name: "keyboard"

  InstrumentList.insert
    name: "keytar"

  InstrumentList.insert
    name: "kraakdoos"

  InstrumentList.insert
    name: "laser harp"

  InstrumentList.insert
    name: "mellotron"

  InstrumentList.insert
    name: "ondes martenot"

  InstrumentList.insert
    name: "omnichord"

  InstrumentList.insert
    name: "sampler"

  InstrumentList.insert
    name: "skoog"

  InstrumentList.insert
    name: "synclavier"

  InstrumentList.insert
    name: "synthesizer"

  InstrumentList.insert
    name: "teleharmonium"

  InstrumentList.insert
    name: "tembr"

  InstrumentList.insert
    name: "tenori-on"

  InstrumentList.insert
    name: "theremin"

  InstrumentList.insert
    name: "accordion"

  InstrumentList.insert
    name: "bandoneñn"

  InstrumentList.insert
    name: "carillon"

  InstrumentList.insert
    name: "celesta"

  InstrumentList.insert
    name: "clavichord"

  InstrumentList.insert
    name: "clavinet"

  InstrumentList.insert
    name: "glasschord"

  InstrumentList.insert
    name: "harpsichord"

  InstrumentList.insert
    name: "jammer keyboard"

  InstrumentList.insert
    name: "katzenklavier"

  InstrumentList.insert
    name: "keytar"

  InstrumentList.insert
    name: "midi keyboard"

  InstrumentList.insert
    name: "marimba"

  InstrumentList.insert
    name: "melodica"

  InstrumentList.insert
    name: "organ"

  InstrumentList.insert
    name: "electronic organ"

  InstrumentList.insert
    name: "hammond organ"

  InstrumentList.insert
    name: "pipe organ"

  InstrumentList.insert
    name: "harmonium"

  InstrumentList.insert
    name: "piano"

  InstrumentList.insert
    name: "baby grand piano"

  InstrumentList.insert
    name: "grand piano"

  InstrumentList.insert
    name: "rhodes piano"

  InstrumentList.insert
    name: "upright piano"

  InstrumentList.insert
    name: "viola organista"

  InstrumentList.insert
    name: "wheelharp"

  InstrumentList.insert
    name: "crystallophones"

  InstrumentList.insert
    name: "glass armonica"

  InstrumentList.insert
    name: "hardart"

  InstrumentList.insert
    name: "hydraulophone"

  InstrumentList.insert
    name: "plasmaphone"

  InstrumentList.insert
    name: "pyrophone"

  InstrumentList.insert
    name: "quintephone"

  InstrumentList.insert
    name: "asadullah"

  InstrumentList.insert
    name: "sea organ"

  InstrumentList.insert
    name: "shishi odoshi"

  InstrumentList.insert
    name: "suikinkutsu"

  InstrumentList.insert
    name: "wobble board"
