dataSource {
    dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
}

grails {
  mongo {
    port = 27107
    username = ""
    password = ""
    connectionString = "mongodb://localhost/elasticEvent"
  }
}