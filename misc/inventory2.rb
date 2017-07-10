# Declare our facts we wish to enumerate
FACT1  = "architecture"
FACT2  = "operatingsystemrelease"
FACT3  = "ipaddress"
FACT4  = "kernelversion"
FACT5  = "macaddress"
FACT6  = "memorysize"
FACT7  = "operatingsystem"
FACT8  = "physicalprocessorcount"
FACT9  = "processorcount"
FACT10 = "type"
FACT11 = "virtual"
FACT12 = "manufacturer"
FACT13 = "serialnumber"
FACT14 = "productname"

now = Time.now.strftime("%d/%m/%Y %I:%M")
puts "Inventory report: " + now

inventory do
  format "%40s:\t\t%20s\t\t%s"

  fields { [ identity, facts["#{FACT1}"],
             facts["#{FACT2}"], facts["#{FACT3}"],
             facts["#{FACT4}"], facts["#{FACT5}"],
             facts["#{FACT6}"], facts["#{FACT7}"],
             facts["#{FACT8}"], facts["#{FACT9}"],
             facts["#{FACT10}"], facts["#{FACT11}"],
             facts["#{FACT12}"], facts["#{FACT13}"],
             facts["#{FACT14}"]
  ] }
end
