# Harvest-Records-DSpace-Endpoints
Script to harvest XOAI records from DSpace endpoints, for migration purposes.

In 2020, we migrated our institutional repository from DSpace to Ex Libris Esploro. We needed to provide the records in XOAI format. This Powershell script harvests the XOAI records from the DSpace endpoints. The endpoints have the following structure:

http://research.libraries.wsu.edu:8080/oai/request?verb=GetRecord&identifier=oai:research.libraries.wsu.edu:2376/129&metadataPrefix=xoai
