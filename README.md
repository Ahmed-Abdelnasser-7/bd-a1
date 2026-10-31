# SMS Spam Detection – Big Data Assignment 1

**Course:** CSCI461 – Introduction to Big Data  
**Semester:** Fall 2026  

## 1. Team Members

| No. | Student Name | Student ID |
|---|---|---|
| 1 | [Ahmed Abdelnasser] | [231000202] |
| 2 | [Mohamed Ayman] | [231002084] |
| 3 | [Hazem Hesham] | [231001223] |
## 2. Project Overview

This project analyzes SMS messages to identify patterns in text data and classify messages as **Spam** or **Ham** (legitimate messages).

The project covers data exploration, cleaning, transformation, sampling, text analysis, visualization, supervised machine learning, and unsupervised clustering. All analysis and modeling are performed inside a Docker container using JupyterLab.

## 3. Dataset

The project uses the **SMS Spam Collection Dataset**, containing 5,169 messages:

- 4,516 Ham messages.
- 653 Spam messages.

The dataset contains two original columns: `label` and `message`.

## 4. Technologies Used

- Python
- Docker and JupyterLab
- Pandas and NumPy
- Matplotlib and Seaborn
- Scikit-learn

## 5. Project Structure

```text
bd-a1/
├── Dockerfile
├── requirements.txt
├── README.md
├── data/
│   └── dataset.csv
├── notebook/
│   └── analysis.ipynb
├── output/
│   ├── cleaned_data.csv
│   ├── model_metrics.txt
│   ├── cluster_summary.txt
│   └── figures/
└── screenshots/
```

## 6. Analysis and Machine Learning

The project includes:

- **Data Exploration and Cleaning:** Examining dataset structure, missing values, duplicates, and data types.
- **Data Transformation:** Creating additional numerical features and applying random, stratified, and cluster sampling.
- **Text Analysis:** Text cleaning, tokenization, word-frequency analysis, stop-word removal, and comparison of spam and ham messages.
- **Feature Analysis:** Extracting numerical features and visualizing their correlations.
- **Classification:** Using TF-IDF and Logistic Regression to classify SMS messages.
- **Clustering:** Applying K-Means with TF-IDF and TruncatedSVD to explore message groupings.

### Classification Results

| Metric | Result |
|---|---:|
| Accuracy | 96.03% |
| Precision (Spam) | 95.00% |
| Recall (Spam) | 72.52% |
| F1-Score (Spam) | 82.25% |

### Clustering Results

The final K-Means experiment used 50 SVD components and 2 clusters, achieving a silhouette score of **0.2349**.

## 7. Output Files

The `output/` directory contains:

- `cleaned_data.csv` – Processed dataset and extracted features.
- `model_metrics.txt` – Classification evaluation results.
- `cluster_summary.txt` – Clustering configuration and results.
- `figures/` – Generated visualizations, including the correlation heatmap, word-frequency charts, group comparisons, and confusion matrix.

## 8. Docker Setup and Execution

**Requirement:** Docker Desktop must be installed and running.

Open PowerShell in the project directory:

### Build the Docker image

```powershell
docker build -t bd-a1 .
```

### First-time execution (create a new container)

```powershell
docker run -d --name bd-a1-container -p 8888:8888 bd-a1:latest
```

### Run an existing container

If the container has already been created and stopped, start it again using:

```powershell
docker start bd-a1-container
```

### Access JupyterLab

Open the following address in your browser:

```text
http://localhost:8888
```

Open `notebook/analysis.ipynb` and select:

**Kernel → Restart Kernel and Run All Cells**

This runs the complete analysis and machine learning workflow.

### Useful Docker Commands

| Purpose | Command |
|---|---|
| Check running containers | `docker ps` |
| Check all containers | `docker ps -a` |
| Stop the container | `docker stop bd-a1-container` |
| View container logs | `docker logs bd-a1-container` |
| Remove the container | `docker rm -f bd-a1-container` |

## 9. Reproducibility

To reproduce the project, obtain the project files, ensure Docker Desktop is running, build the image, create the container, and execute all notebook cells.

The Dockerfile installs the required dependencies listed in `requirements.txt`, while the notebook performs the complete analysis and generates the project outputs.
