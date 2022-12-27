#!/bin/bash
if [ -d $HOME/dataSiteWp ];
then
	echo "l'intallation a déjà été faite sur votre machine !"
else
	echo "téléchargement des fichiers 1/3 - cette opération peut prendre un certain temps"
	wget https://github.com/TheRemsM/NF19_GiftCard_Wordpress/raw/main/wpTar.partaa
	
	echo "téléchargement des fichiers 2/3 - cette opération peut prendre un certain temps"
	wget https://github.com/TheRemsM/NF19_GiftCard_Wordpress/raw/main/wpTar.partab
	
	echo "téléchargement des fichiers 3/3 - cette opération peut prendre un certain temps"
	wget https://github.com/TheRemsM/NF19_GiftCard_Wordpress/raw/main/wpTar.partac
	
	echo "mise en place des fichiers sur votre machine"
	cat wpTar.parta* > wpTar.joined
	
	tar -xvf wpTar.joined
	
	mkdir $HOME/dataSiteWp

	mv datadb $HOME/dataSiteWp/datadb
	
	mv datawp $HOME/dataSiteWp/datawp
	
	rm wpTar.parta*
	
	rm wpTar.joined
	echo "téléchargement des images docker 1/2 - cette opération peut prendre un certain temps"
	docker pull therems/giftcardwordpresssetup:wordpress
	
	echo "téléchargement des images docker 2/2 - cette opération peut prendre un certain temps"
	docker pull therems/giftcardwordpresssetup:mysql
fi

