@Instruments = new Meteor.Collection 'instruments'

@Instruments.allow
  update: ownsDocument,
  remove: ownsDocument,
  insert: ownsDocument

@InstrumentList = new Meteor.Collection 'instrumentList'

@Chatrooms = new Meteor.Collection 'chatrooms'