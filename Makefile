all: data

data: mkdir data/curie_map.yaml data/kg-covid-19.tar.gz

mkdir:
	mkdir -p data

data/curie_map.yaml: mkdir
	wget https://raw.githubusercontent.com/monarch-initiative/dipper/master/dipper/curie_map.yaml -O data/curie_map.yaml

data/kg-covid-19.tar.gz data/merged-kg_edges.tsv data/merged-kg_nodes.tsv &: mkdir
	wget http://kg-hub.berkeleybop.io/kg-covid-19.tar.gz -O data/kg-covid-19.tar.gz
	cd data && tar -xvzf kg-covid-19.tar.gz

