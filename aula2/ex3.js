db.suppliers.count();

db.suppliers.find({s_city: /^A/});

db.suppliers.find({ _id:
  { $gte: 10,
    $lte: 12 }
});

db.suppliers.find({_id: 100});

db.suppliers.find(
  { s_nation: "JORDAN",
    s_region: "MIDDLE EAST" });

.explain();

db.suppliers.ensureIndex(
  { s_nation: 1,
    s_region: 1 });

db.suppliers.update(
  { _id: 100},
  { $set: { updated_at: new Date() }});

db.suppliers.remove(
  { s_nation: "PERU" });

// rodar todos os updates da seção
// "update modifiers" da apostila marrom
// no documento com id: 100

var arr = ["ruby", "pyton", "nosql"];

arr.forEach(function(value) {
  db.books.insert({
    title: value
  });
});














