#!/bin/bash
if [ -d $HOME/dataSiteWp ];
then
	echo "l'intallation a déjà été faite sur votre machine !"
else

	wget https://github.com/TheRemsM/NF19_GiftCard_Wordpress/raw/main/wpTar.partaa
	
	wget https://github.com/TheRemsM/NF19_GiftCard_Wordpress/raw/main/wpTar.partab
	
	wget https://github.com/TheRemsM/NF19_GiftCard_Wordpress/raw/main/wpTar.partac
	
	cat wpTar.parta* > wpTar.joined
	
	tar -xvf wpTar.joined

	mv datadb $HOME/dataSiteWp/datadb
	
	mv datawp $HOME/dataSiteWp/datawp
	
	rm wpTar.parta*
	
	docker pull therems/giftcardwordpresssetup:wordpress

	docker pull therems/giftcardwordpresssetup:mysql
fi

