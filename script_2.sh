# insertar equipo 
db.equipos.insert({
  "nombre": "Deportivo Cali",
  "pais": "Colombia",
  "entrenador": {
    "nombre": "Rafael Dudamel",
    "edad": 49,
    "licenciaFIFA": true
  }
})

# Modificar un equipo existente (utilizando el _id del documento):
db.equipos.update(
  { "_id": ObjectId("663a167003b3201d8a824612") },
  { $set: { "pais": "Argentina" } }
)

# Eliminar un equipo existente (utilizando el _id del documento):
db.equipos.deleteOne({ "_id": ObjectId("663a167003b3201d8a824612") })

#Inscribir, modificar y eliminar deportistas a los equipos:
#Insertar un nuevo deportista:

db.deportistas.insert({
  "nombre": "Juan Pérez",
  "edad": 25,
  "posicion": "Delantero",
  "equipo": {
    "nombre": "Equipo FC",
    "pais": "Estados Unidos"
  }
})

#Modificar un deportista existente (utilizando el _id del documento):
db.deportistas.update(
  { "_id": ObjectId("64573f7a8b030c3d9c7f3457") },
  { $set: { "posicion": "Volante" } }
)

#Eliminar un deportista existente (utilizando el _id del documento):
db.deportistas.deleteOne({ "_id": ObjectId("64573f7a8b030c3d9c7f3457") })

#Crear, modificar y eliminar encuentros deportivos:
#Insertar un nuevo encuentro deportivo:
db.encuentrosDeportivos.insert({
  "fase": "Grupos",
  "grupo": "B",
  "fecha": ISODate("2024-06-18T20:00:00Z"),
  "sede": "Sao Paulo",
  "equipo1": {
    "nombre": "Boca Juniors",
    "pais": "Argentina"
  },
  "equipo2": {
    "nombre": "Flamengo",
    "pais": "Brasil"
  },
  "arbitros": [
    {
      "nombre": "Carlos Herrera",
      "tipo": "Central"
    },
    {
      "nombre": "Juan Soto",
      "tipo": "Asistente"
    },
    {
      "nombre": "Pedro Gómez",
      "tipo": "Asistente"
    }
  ]
})

#Modificar un encuentro deportivo existente (utilizando el _id del documento):
db.encuentrosDeportivos.update(
  { "_id": ObjectId("64574074e2e8f5ac6c1cb456") },
  { $set: { "sede": "Buenos Aires" } }
)

#Eliminar un encuentro deportivo existente (utilizando el _id del documento):
db.encuentrosDeportivos.deleteOne({ "_id": ObjectId("64574074e2e8f5ac6c1cb456") })

#Registrar resultados de encuentros deportivos:
db.resultados.insert({
  "encuentro": {
    "fase": "Grupos",
    "grupo": "B",
    "fecha": ISODate("2024-06-18T20:00:00Z"),
    "equipo1": {
      "nombre": "Boca Juniors",
      "pais": "Argentina"
    },
    "equipo2": {
      "nombre": "Flamengo",
      "pais": "Brasil"
    }
  },
  "golesEquipo1": 2,
  "golesEquipo2": 1
})