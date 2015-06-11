@TechSkill = new Meteor.Collection("TechSkill",
  schema: new SimpleSchema(
    name:
      type: String
      label: "Name"
    type: 
      type: String
      label: "Type"
  )
)
