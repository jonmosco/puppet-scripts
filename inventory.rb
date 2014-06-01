# Declare our facts we wish to enumerate
FACT1 = "operatingsystemrelease"
FACT2 = "ipaddress"

now = Time.now.strftime("%d/%m/%Y %I:%M")
puts "Inventory report: " + now

inventory do
    format "%40s:\t\t%20s\t\t%s"

      fields { [ identity, facts["#{FACT1}"], facts["#{FACT2}"] ] }
end
