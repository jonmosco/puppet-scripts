formatted_inventory do
    page_length 20

    page_heading <<TOP

            Node Report @<<<<<<<<<<<<<<<<<<<<<<<<<
                         time

Hostname:                  ipaddress:                  OS Version:
--------------------------------------------------------------------------------
TOP

	page_body <<BODY

@<<<<<<<<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
identity,                 facts["ipaddress"],       facts["operatingsystemrelease"]
                                                    Kernel Version: @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                     facts["kernelversion"]
                                                    Mac Address: @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                     facts["macaddress"]
                                                    Memory Size: @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                     facts["memorysize"]
                                                    Operating System: @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                     facts["operatingsystem"]
                                                    Physical CPU: @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                     facts["physicalprocessorcount"]
                                                    Type: @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                     facts["type"]
                                                    Virtual: @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                     facts["virtual"]
                                                    Manufacturer: @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                     facts["manufacturer"]
                                                    Serial Number: @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                     facts["serialnumber"]
                                                    Product Name: @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                     facts["productname"]
BODY
end
