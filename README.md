# SMS Spam Detection – Big Data Assignment 1

**Course:** CSCI461 – Introduction to Big Data  
**Semester:** Fall 2026  

## 1. Team Members

| No. | Student Name | Student ID |
|---|---|---|
| 1 | [Ahmed Abdelnasser] | [231000202] |
| 2 | [Mohamed Ayman] | [231002084] |
| 3 | [Hazem Hesham] | [231001223] |

## Project Overview
This project analyzes the SMS Spam Collection dataset to explore message characteristics, perform text analysis, and build machine learning models to classify SMS messages as spam or ham.

## Dataset
The dataset contains SMS messages labeled as:
- **Ham:** Legitimate messages.
- **Spam:** Unwanted or promotional messages.

## Technologies Used
- Python
- Pandas and NumPy
- Matplotlib and Seaborn
- Scikit-learn
- Docker
- Jupyter Notebook

## Project Structure

```text
bd-a1/
├── data/
│   ├── dataset.csv
│   └── SMSSpamCollection
├── notebook/
│   └── analysis.ipynb
├── output/
│   ├── cleaned_data.csv
│   ├── model_metrics.txt
│   ├── cluster_summary.txt
│   └── figures/
├── screenshots/
├── convert_csv.py
├── Dockerfile
├── requirements.txt
└── README.md
```

## Analysis and Implementation

The project includes:

1. **Data Exploration and Cleaning:** Examining the dataset, identifying missing values and duplicates, and preparing the data.
2. **Data Transformation and Sampling:** Applying transformations and demonstrating random, stratified, and cluster sampling.
3. **Text Analysis:** Cleaning and tokenizing messages, analyzing word frequencies, and comparing spam and ham messages.
4. **Feature Analysis:** Extracting numerical features and examining their correlations.
5. **Supervised Machine Learning:** Using TF-IDF and Logistic Regression to classify messages.
6. **Unsupervised Machine Learning:** Applying K-Means clustering using TF-IDF and dimensionality reduction with TruncatedSVD.

## Classification Results

The Logistic Regression model achieved:

| Metric | Score |
|---|---:|
| Accuracy | 0.9603 |
| Precision | 0.9500 |
| Recall | 0.7252 |
| F1-score | 0.8225 |

## Docker Setup and Execution

### 1. Build the Docker Image

From the project root directory:

```bash
docker build -t bd-a1 .
```

### 2. Run the Container

```bash
docker run -d --name bd-a1-container -p 8888:8888 bd-a1:latest
```

Open JupyterLab in your browser:

```text
http://localhost:8888
```

### 3. Check Running Containers

```bash
docker ps
```

To show all containers, including stopped ones:

```bash
docker ps -a
```

### 4. Check Container Logs

```bash
docker logs bd-a1-container
```

### 5. Check Files Inside the Docker Image

To inspect the project files included in the image:

```bash
docker run --rm bd-a1:latest ls -R /home/jovyan/work
```

To open a terminal inside the running container:

```bash
docker exec -it bd-a1-container bash
```

Then navigate and inspect the project:

```bash
cd /home/jovyan/work
ls -R
```

### 6. Stop or Remove the Container

Stop the container:

```bash
docker stop bd-a1-container
```

Remove the container:

```bash
docker rm bd-a1-container
```

## Docker Hub

The Docker image is published on Docker Hub under:

**Repository:** `ahmedabdelnasser7/bd-a1`

[View Docker Hub Repository](https://hub.docker.com/r/ahmedabdelnasser7/bd-a1)

### 1. Log in to Docker Hub

```bash
docker login
```

### 2. Tag the Image

```bash
docker tag bd-a1:latest ahmedabdelnasser7/bd-a1:latest
```

### 3. Push the Image to Docker Hub

```bash
docker push ahmedabdelnasser7/bd-a1:latest
```

### 4. Verify the Published Image

```bash
docker manifest inspect ahmedabdelnasser7/bd-a1:latest
```

You can also visit the Docker Hub repository and check the **Tags** section for the `latest` image.

### 5. Pull the Image on Another Machine

A teammate can download the published image using:

```bash
docker pull ahmedabdelnasser7/bd-a1:latest
```

Then run it using:

```bash
docker run -d --name bd-a1-container -p 8888:8888 ahmedabdelnasser7/bd-a1:latest
```

Open:

```text
http://localhost:8888
```

## Important Note About Output Files

The current Docker run command does not use volume mounts. Therefore, files generated or modified inside the container are stored inside the container and do not automatically appear in the Windows project folder.

## Output Files

The project generates:
- `cleaned_data.csv`
- `model_metrics.txt`
- `cluster_summary.txt`
- Figures inside `output/figures/`

## Reproducibility

The project can be reproduced by building the Docker image, running the container, and executing the Jupyter notebook from the provided environment.
