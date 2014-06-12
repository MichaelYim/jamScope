if Meteor.users.find().count() is 0

  Meteor.users.insert
    _id: "xCBbmj7B3gH6AgKMv",
    createdAt: "2014-05-29T09:16:29.938Z",
    profile:
      name: "Joe Teo"
      picture: "https://fbcdn-profile-a.akamaihd.net/hprofile-ak-frc3/t1.0-1/c33.33.414.414/p480x480/946258_10200942149468919_554687869_n.jpg"
    services:
      facebook:
        accessToken: "CAAK55NBjrkkBAKahljQTXX7vzHpnRUOeZCjucSt2M713G1Kprchu0H0ZARMNI7z8nk92iG8tKv5apkJNBzxCeb7msb7W7Lc7VrCRC1HQoYJAcozdd2NnLPGw3davKzBM73y0Ukpb9VCrrz0J83MxVL9i3gb5zlEuy6JMZBMpgQzHqHZBtddn",
        expiresAt: 1406538988768,
        id: "10203170063005365",
        email: "revelate@live.com",
        name: "Joe Teo",
        first_name: "Joe",
        last_name: "Teo",
        link: "https://www.facebook.com/app_scoped_user_id/10203170063005365/",
        gender: "male",
        locale: "en_US"

  Meteor.users.insert
    _id: "XSw6XDmiTggTfwLKw",
    createdAt: "2014-05-29T09:19:05.561Z",
    profile:
      name: "Zak Knudsen"
      picture: "https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/t1.0-1/c122.0.480.480/p480x480/10406803_10154166005755182_1456321878481568773_n.jpg"
    services:
      facebook:
        accessToken: "CAAK55NBjrkkBAHR4ZC21LZB1D8aZB5YYcXnh0ILxhBI7pLuin89cIh9ZAj3WZAAtGsYPV9QReHPcY1QLc8HrWqbCh0ZBVNXTLIzGEPHoMGnUQZBtO9ilwe9T3ASujifs9RjSCVgtFb4xzPvSZAZAyybrEbZBUi2xrCc9pN78PuQmZBn2ARrbKw5hGKFIBhr8cxFZC1MZD",
        expiresAt: 1406539144499,
        id: "10154203030305182",
        email: "zak.knudsen@gmail.com",
        name: "Zak Knudsen",
        first_name: "Zak",
        last_name: "Knudsen",
        link: "https://www.facebook.com/app_scoped_user_id/10154203030305182/",
        gender: "male",
        locale: "en_US"

  Meteor.users.insert
    _id: "R6kpfKF8eP3gu7Jzj",
    createdAt: "2014-05-29T10:03:06.022Z",
    profile:
      name: "Paul Ld"
      picture: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRM8-wOnNru81jF_VlFOWMxRP_HFsXQKxmljjT_hyDK2B9Mrjlp"
    services:
      facebook:
        accessToken: "CAAK55NBjrkkBAPPZBCJjTarheM1Y9IgUg6wENZCNUl83SZCarA4BZCmkfhkdlIdUi2GWr0f7dkmWqNZB6Mvd8OVABja2SsOeKPFu72iG6YMwNNQ6MF7q4R5LE6nHbNBB4dlYaSS5Pssh1JFaDZAGEFPGrT04slxkgqn1fBhFJ9UuVxQBFypb6c",
        expiresAt: 1406541784908,
        id: "10152924912184899",
        email: "paul.lugagnedelpon@gmail.com",
        name: "Paul Ld",
        first_name: "Paul",
        last_name: "Ld",
        link: "https://www.facebook.com/app_scoped_user_id/10152924912184899/",
        gender: "male",
        locale: "en_GB"

if Instruments.find().count() is 0

  Instruments.insert
    type: "piano",
    owner: "xCBbmj7B3gH6AgKMv",
    level: "1"

  Instruments.insert
    type: "vocals",
    owner: "xCBbmj7B3gH6AgKMv",
    level: "2.5"

  Instruments.insert
    type: "banjo",
    owner: "xCBbmj7B3gH6AgKMv",
    level: "4"

  Instruments.insert
    type: "rap",
    owner: "XSw6XDmiTggTfwLKw",
    level: "2"

  Instruments.insert
    type: "triangle",
    owner: "XSw6XDmiTggTfwLKw",
    level: "5"

  Instruments.insert
    type: "guitar",
    owner: "R6kpfKF8eP3gu7Jzj",
    level: "4"

  Instruments.insert
    type: "ukulele",
    owner: "R6kpfKF8eP3gu7Jzj",
    level: "4.5"

  Instruments.insert
    type: "vocals",
    owner: "R6kpfKF8eP3gu7Jzj",
    level: "1"

  Instruments.insert
    type: "piano",
    owner: "R6kpfKF8eP3gu7Jzj",
    level: "4"







