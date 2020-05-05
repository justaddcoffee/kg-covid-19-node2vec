Generate kg-covid-19 graph and perform drug-disease link predictions

```
git clone https://github.com/justaddcoffee/kg-covid-19-node2vec.git
cd kg-covid-19-node2vec
make data
pip install -r requirements.txt
python runLinkPrediction_drug_disease_links.py \
--upheno_graph data/upheno.edges \
--drug_disease_links data/drug_disease_links.edges
```
