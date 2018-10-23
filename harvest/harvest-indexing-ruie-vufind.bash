#!/bin/bash

Harvest(){
echo "Harvesting sites located in oai.ini "

php harvest_oai.php

echo "Harvest done! "
}


Index_DSPACE(){
    echo "Indexing DSPACE! "

    echo "Indexing DSPACE_INIE "
    ./batch-import-xsl.sh DSPACE_INIE ../import/dspace_INIE.properties 
    echo "Done! "

    echo "Indexing DSPACE_CIEM "
    ./batch-import-xsl.sh DSPACE_CIEM ../import/dspace_CIEM.properties 
    echo "Done! "

    echo "Indexing DSPACE_CIICLA "
    ./batch-import-xsl.sh DSPACE_CIICLA ../import/dspace_CIICLA.properties 
    echo "Done! "

    echo "Done - DSPACE indexed! "
}

Index_OJS(){
    echo "Indexing OJS! "

    echo "Indexing OJS_INIE_RAIE "
    ./batch-import-xsl.sh OJS_INIE_RAIE ../import/ojs_INIE_RAIE.properties
    echo "Done! "

    echo "Indexing OJS_IICE_RCE "
    ./batch-import-xsl.sh OJS_IICE_RCE ../import/ojs_IICE_RCE.properties
    echo "Done! "

    echo "Indexing OJS_FCS_RCS "
    ./batch-import-xsl.sh OJS_FCS_RCS ../import/ojs_FCS_RCS.properties 
    echo "Done! "
    echo "Indexing OJS_CIICLA_CICC "
    ./batch-import-xsl.sh OJS_CIICLA_CICC ../import/ojs_CIICLA_CICC.properties 
    echo "Done! "

    echo "Indexing OJS_INII_RI "
    ./batch-import-xsl.sh OJS_INII_RI ../import/ojs_INII_RI.properties 
    echo "Done!"
    echo "Done - OJS indexed! "
}


Index_KOHA(){
    echo "Indexing KOHA! "

    echo "Indexing KOHA_INIE "
    ./batch-import-marc.sh -p ../import/import_KOHA_INIE.properties KOHA_INIE
    echo "Done! "

    echo "Indexing KOHA_CIICLA "
    ./batch-import-marc.sh -p ../import/import_KOHA_CIICLA.properties KOHA_CIICLA
    echo "Done! "

    echo "Indexing KOHA_INII "
    ./batch-import-marc.sh -p ../import/import_KOHA_INII.properties KOHA_INII
    echo "Done! "

    echo "Indexing KOHA_IIS "
    ./batch-import-marc.sh -p ../import/import_KOHA_IIS.properties KOHA_IIS
    echo "Done! "

    echo "Indexing KOHA_IICE "
    ./batch-import-marc.sh -p ../import/import_KOHA_FL.properties KOHA_FL
    echo "Done! "
    
    echo "Done - KOHA indexed! "
}

clear
Index_KOHA

