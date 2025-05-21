# Coloring molecules for interaction with CYP3A4

By combining a Message-Passing Graph Neural Network (MPGNN) and a Forward fully connected Neural Network (FNN) with an integrated gradients explainable artificial intelligence (XAI) method, the authors developed MolGrad and tested it on a number of ADME predictive tasks. MolGrad incorporates explainable features to facilitate interpretation of the predictions.  This model has been trained using a ChEMBL dataset of CYP450 3A4 inhibitors (0) and non-inhibitors (1).

This model was incorporated on 2021-10-19.

## Information
### Identifiers
- **Ersilia Identifier:** `eos96ia`
- **Slug:** `molgrad-cyp3a4`

### Domain
- **Task:** `Annotation`
- **Subtask:** `Activity prediction`
- **Biomedical Area:** `ADMET`
- **Target Organism:** `Homo sapiens`
- **Tags:** `CYP450`, `ADME`, `Chemical graph model`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `1`
- **Output Consistency:** `Fixed`
- **Interpretation:** Probability that the molecule is metabolized by Cyp3A4 (cut-off: 10 uM)

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| cyp3a4_proba | float | high | Probability of CYP3A4 inhibition |


### Source and Deployment
- **Source:** `Local`
- **Source Type:** `External`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos96ia](https://hub.docker.com/r/ersiliaos/eos96ia)
- **Docker Architecture:** `AMD64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos96ia.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos96ia.zip)

### Resource Consumption
- **Model Size (Mb):** `17`
- **Environment Size (Mb):** `2418`
- **Image Size (Mb):** `2379.39`

**Computational Performance (seconds):**
- 10 inputs: `33.56`
- 100 inputs: `29.06`
- 10000 inputs: `784.38`

### References
- **Source Code**: [https://github.com/josejimenezluna/molgrad/](https://github.com/josejimenezluna/molgrad/)
- **Publication**: [https://pubs.acs.org/doi/10.1021/acs.jcim.0c01344](https://pubs.acs.org/doi/10.1021/acs.jcim.0c01344)
- **Publication Type:** `Peer reviewed`
- **Publication Year:** `2021`
- **Ersilia Contributor:** [miquelduranfrigola](https://github.com/miquelduranfrigola)

### License
This package is licensed under a [GPL-3.0](https://github.com/ersilia-os/ersilia/blob/master/LICENSE) license. The model contained within this package is licensed under a [AGPL-3.0-only](LICENSE) license.

**Notice**: Ersilia grants access to models _as is_, directly from the original authors, please refer to the original code repository and/or publication if you use the model in your research.


## Use
To use this model locally, you need to have the [Ersilia CLI](https://github.com/ersilia-os/ersilia) installed.
The model can be **fetched** using the following command:
```bash
# fetch model from the Ersilia Model Hub
ersilia fetch eos96ia
```
Then, you can **serve**, **run** and **close** the model as follows:
```bash
# serve the model
ersilia serve eos96ia
# generate an example file
ersilia example -n 3 -f my_input.csv
# run the model
ersilia run -i my_input.csv -o my_output.csv
# close the model
ersilia close
```

## About Ersilia
The [Ersilia Open Source Initiative](https://ersilia.io) is a tech non-profit organization fueling sustainable research in the Global South.
Please [cite](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff) the Ersilia Model Hub if you've found this model to be useful. Always [let us know](https://github.com/ersilia-os/ersilia/issues) if you experience any issues while trying to run it.
If you want to contribute to our mission, consider [donating](https://www.ersilia.io/donate) to Ersilia!
