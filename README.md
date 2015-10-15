## Faktura Parser
Rozszerzalny parser faktur w formacie pdf. Zaimplementowane parsowanie faktur z firmy OVH.


Przykład użycia
```
files = Dir["data/faktura_*.pdf"]
files.each do |file|
  faktura = FakturaParser.new(file)
  p faktura.to_hash
end
```
