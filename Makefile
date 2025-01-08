build: 
	cd src/certificates    && make V=1 PREFIX=../ build
	cd  ../step-kms-plugin && make V=1 PREFIX=../ build