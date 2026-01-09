# *Econometrics Time Series*

**A Comprehensive Computational Econometrics Framework**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![R Version](https://img.shields.io/badge/R-%E2%89%A5%204.0.0-blue)](https://www.r-project.org/)
[![Quarto](https://img.shields.io/badge/Quarto-1.5%2B-orange)](https://quarto.org/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-18.1-green)](https://www.postgresql.org/)
[![SQLite](https://img.shields.io/badge/SQLite-3.51.0-lightgrey)](https://www.sqlite.org/)

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Project Architecture](#project-architecture)
3. [Theoretical Foundation](#theoretical-foundation)
4. [Technical Stack](#technical-stack)
5. [Installation](#installation)
6. [Project Structure](#project-structure)
7. [Book Content](#book-content)
8. [LaTeX Cheatsheets](#latex-cheatsheets)
9. [Data Management](#data-management)
10. [R Modules and Functions](#r-modules-and-functions)
11. [Notebooks](#notebooks)
12. [Shiny Applications](#shiny-applications)
13. [Usage Examples](#usage-examples)
14. [Contributing](#contributing)
15. [References](#references)
16. [License](#license)
17. [Contact](#contact)

---

## Project Overview

**Econometrics Time Series** is a comprehensive, production-ready framework for econometric analysis and time series modeling. This project combines rigorous theoretical foundations with modern computational tools to provide a complete educational and research platform.

### Key Features

- **Complete Econometric Theory**: 22 chapters covering from basic regression to advanced panel data and instrumental variables
- **Interactive Book**: Built with Quarto, featuring executable R code, mathematical derivations, and visualizations
- **Ultra-Rigorous LaTeX Cheatsheets**: High-quality reference documents with animated visualizations using PGFPlots and TikZ
- **Modular R Framework**: Object-oriented classes for econometric models, time series, and panel data
- **Database Integration**: PostgreSQL and SQLite support for efficient data storage and retrieval
- **Shiny Dashboards**: Interactive web applications for real-time econometric analysis
- **Reproducible Research**: Complete pipeline from raw data to publication-ready results

### Project Goals

1. Provide a comprehensive educational resource for econometric theory and practice
2. Deliver production-ready tools for empirical economic research
3. Facilitate reproducible research through version-controlled code and data
4. Bridge the gap between theoretical econometrics and computational implementation
5. Offer high-quality visual materials for teaching and presentation

---

## Project Architecture

The project follows a hierarchical, modular architecture designed for scalability, maintainability, and academic rigor:

```
Econometrics_time/
│
├── _book/                  # Compiled Quarto book (HTML output)
├── chapter_XX/             # 22 chapters with theory, exercises, and solutions
├── cheatsheets/            # LaTeX reference materials with animations
├── data/                   # Structured data storage (raw, processed, external)
├── R/                      # Core R implementation
│   ├── classes/            # S3/S4 object-oriented models
│   ├── functions/          # Utility functions
│   └── modules/            # Specialized modules (regression, diagnostics, time series)
├── notebooks/              # Quarto analysis notebooks
├── shiny_apps/             # Interactive Shiny applications
├── references/             # BibTeX bibliography
└── templates/              # LaTeX and document templates
```

### Design Principles

1. **Separation of Concerns**: Theory (Quarto), reference (LaTeX), implementation (R), and visualization (Shiny) are cleanly separated
2. **DRY (Don't Repeat Yourself)**: Shared functions and classes prevent code duplication
3. **Version Control**: All materials are Git-tracked for reproducibility
4. **Documentation-First**: Every component includes comprehensive documentation
5. **Academic Standards**: Follows APA citation style and academic best practices

---

## Theoretical Foundation

This project is built on the classical and modern econometric literature, primarily drawing from:

### Core References

1. **Gujarati, D. N. & Porter, D. C. (2009)**. *Econometría*. McGraw-Hill, 5th Edition.
   - Foundation for OLS regression, hypothesis testing, and classical assumptions

2. **Wooldridge, J. M. (2015)**. *Introductory Econometrics: A Modern Approach*. Cengage, 6th Edition.
   - Modern treatment of panel data, instrumental variables, and applied methods

3. **Davidson, R. & MacKinnon, J. G. (2004)**. *Econometric Theory and Methods*. Oxford University Press.
   - Rigorous asymptotic theory, GMM, and advanced inference

4. **Hamilton, J. D. (1994)**. *Time Series Analysis*. Princeton University Press.
   - Comprehensive treatment of ARIMA, VAR, and cointegration

5. **Greene, W. H. (2018)**. *Econometric Analysis*. Pearson, 8th Edition.
   - Reference for maximum likelihood, limited dependent variables, and panel methods

### Methodological Coverage

The project covers the complete econometric toolkit:

- **Classical Linear Regression**: OLS, Gauss-Markov theorem, inference
- **Violations of Assumptions**: Multicollinearity, heteroskedasticity, autocorrelation
- **Advanced Estimation**: IV/2SLS, GMM, maximum likelihood
- **Time Series**: Stationarity, unit roots, cointegration, ARIMA, VAR
- **Panel Data**: Fixed effects, random effects, Hausman test, dynamic panels
- **Limited Dependent Variables**: Probit, Logit, Tobit, count data models
- **Causality**: Instrumental variables, difference-in-differences, regression discontinuity
- **Asymptotic Theory**: Consistency, asymptotic normality, central limit theorems

---

## Technical Stack

### Core Technologies

| Technology | Version | Purpose |
|------------|---------|---------|
| **R** | 4.0.0+ | Statistical computing and econometric analysis |
| **Quarto** | 1.5+ | Book compilation and reproducible documents |
| **LaTeX** | TeX Live 2025 | High-quality cheatsheets with animations |
| **PostgreSQL** | 18.1 | Relational database for structured data |
| **SQLite** | 3.51.0 | Lightweight local database |
| **Git** | Latest | Version control and collaboration |

### R Package Ecosystem

#### Econometric Modeling
```r
- lmtest        # Hypothesis testing for linear models
- sandwich      # Robust covariance matrices
- plm           # Panel data models
- systemfit     # Simultaneous equation systems
- AER           # Applied Econometrics with R
- ivpack        # Instrumental variables
```

#### Time Series Analysis
```r
- forecast      # ARIMA, exponential smoothing
- vars          # Vector autoregression
- tseries       # Unit root and stationarity tests
- urca          # Cointegration analysis
- zoo           # Time series infrastructure
- xts           # Extensible time series
```

#### Data Management
```r
- DBI           # Database interface
- RPostgres     # PostgreSQL connector
- RSQLite       # SQLite connector
- data.table    # High-performance data manipulation
- tidyverse     # Modern data science workflow
```

#### Visualization
```r
- ggplot2       # Grammar of graphics
- plotly        # Interactive plots
- patchwork     # Plot composition
- ggfortify     # Statistical plot extensions
```

#### Reporting
```r
- knitr         # Dynamic report generation
- rmarkdown     # R Markdown documents
- stargazer     # Publication-quality tables
- xtable        # LaTeX and HTML tables
```

### LaTeX Packages for Cheatsheets

The project's cheatsheets use advanced LaTeX packages for professional presentation:

```latex
% Core Typography
- mathpazo      % Palatino font (NYT/academic style)
- helvet        % Helvetica (MIT technical style)
- microtype     % Micro-typographic refinements

% Graphics and Animation
- pgfplots      % High-quality statistical plots
- tikz          % Vector graphics
- animate       % PDF animations (requires Adobe Reader)

% Layout
- multicol      % Multi-column layouts
- geometry      % Page dimensions
- fancyhdr      % Custom headers/footers

% Color and Design
- xcolor        % Extended color support
- tcolorbox     % Colored boxes for emphasis

% Mathematics
- amsmath       % AMS mathematical typesetting
- amssymb       % AMS symbols
```

---

## Installation

### Prerequisites

Ensure you have the following installed on your system:

1. **R** (version 4.0.0 or higher)
   ```bash
   # Ubuntu/Debian
   sudo apt-get install r-base r-base-dev
   
   # macOS (with Homebrew)
   brew install r
   
   # Windows: Download from https://cran.r-project.org/
   ```

2. **RStudio** (recommended for interactive development)
   - Download from https://posit.co/products/open-source/rstudio/

3. **Quarto**
   ```bash
   # Ubuntu/Debian
   sudo curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb
   sudo dpkg -i quarto-linux-amd64.deb
   
   # macOS
   brew install quarto
   
   # Windows: Download from https://quarto.org/docs/get-started/
   ```

4. **TeX Live** (for LaTeX cheatsheets)
   ```bash
   # Ubuntu/Debian
   sudo apt-get install texlive-full
   
   # macOS
   brew install --cask mactex
   
   # Windows: Download from https://www.tug.org/texlive/
   ```

5. **PostgreSQL** (optional, for database features)
   ```bash
   # Ubuntu/Debian
   sudo apt-get install postgresql postgresql-contrib
   
   # macOS
   brew install postgresql@18
   
   # Windows: Download from https://www.postgresql.org/download/windows/
   ```

### Clone the Repository

```bash
git clone https://github.com/emanuelquintana-glitch/Econometrics_time.git
cd Econometrics_time
```

### Install R Dependencies

The project includes automated setup scripts:

```r
# Install all required R packages
source("install_packages.R")

# Load core functions and modules
source("setup.R")

# Verify installation
source("requirements.R")
```

Manual installation of key packages:

```r
# Core econometric packages
install.packages(c(
  "lmtest", "sandwich", "plm", "systemfit", "AER", "ivpack",
  "forecast", "vars", "tseries", "urca", "zoo", "xts",
  "DBI", "RPostgres", "RSQLite", "data.table", "tidyverse",
  "ggplot2", "plotly", "patchwork", "ggfortify",
  "knitr", "rmarkdown", "stargazer", "xtable", "shiny"
))
```

### Database Setup (Optional)

If using PostgreSQL for data storage:

```bash
# Start PostgreSQL service
sudo systemctl start postgresql

# Create database
sudo -u postgres createdb econometrics_db

# Configure connection in R
# Edit R/functions/data_cleaning.R with your credentials
```

---

## Project Structure

### Detailed Directory Overview

```
Econometrics_time/
│
├── _book/                          # Compiled Quarto book (HTML)
│   ├── chapter_XX/                 # Individual chapter pages
│   ├── index.html                  # Book homepage
│   ├── references.html             # Bibliography
│   └── site_libs/                  # Bootstrap, JavaScript libraries
│
├── chapter_XX/                     # 22 chapters (XX = 01 to 22)
│   ├── chapter_X.qmd               # Main theory content (Quarto Markdown)
│   ├── exercises_X.qmd             # Practice problems
│   ├── solutions_X.qmd             # Detailed solutions
│   ├── data_chapter_X.R            # Data generation/loading scripts
│   └── references.bib              # Chapter-specific bibliography
│
├── cheatsheets/                    # LaTeX reference materials
│   ├── chapter_XX/                 # One folder per chapter
│   │   ├── 01_*.tex                # Topic 1 cheatsheet
│   │   ├── 02_*.tex                # Topic 2 cheatsheet
│   │   ├── ...                     # Up to 10 topics per chapter
│   │   └── 10_resumen_examen.tex   # Exam summary
│   └── appendices/                 # Supplementary materials
│       ├── appendix_A_stats/       # Probability and statistics review
│       ├── appendix_B_matrix/      # Matrix algebra
│       └── appendix_C_matrix_regression/  # Matrix formulation of regression
│
├── data/                           # Structured data storage
│   ├── raw/                        # Original, immutable data
│   ├── processed/                  # Cleaned, transformed data
│   └── external/                   # Third-party datasets
│
├── R/                              # Core R implementation
│   ├── classes/                    # Object-oriented model classes
│   │   ├── EconometricModel.R      # Base class for econometric models
│   │   ├── TimeSeriesModel.R       # Time series specific methods
│   │   └── PanelDataModel.R        # Panel data specific methods
│   ├── functions/                  # Utility functions
│   │   ├── data_cleaning.R         # Data preprocessing
│   │   ├── econometrics_utils.R    # Econometric calculations
│   │   ├── statistical_tests.R     # Hypothesis tests
│   │   └── visualization.R         # Plotting functions
│   └── modules/                    # Specialized modules
│       ├── regression_module.R     # OLS, IV, 2SLS implementations
│       ├── diagnostics_module.R    # Model diagnostics (heteroskedasticity, autocorrelation)
│       └── time_series_module.R    # ARIMA, VAR, cointegration
│
├── notebooks/                      # Quarto analysis notebooks
│   ├── exploratory/                # Initial data exploration
│   ├── analysis/                   # Main analyses
│   └── reports/                    # Periodic reports
│
├── shiny_apps/                     # Interactive Shiny applications
│   ├── 01_dashboard/               # Econometric analysis dashboard
│   ├── 02_simulator/               # Monte Carlo simulators
│   └── 03_visualizations/          # Interactive plots
│
├── references/                     # Bibliography management
│   └── references.bib              # Master BibTeX file
│
├── templates/                      # Document templates
│   ├── latex/                      # LaTeX document templates
│   │   ├── document.tex            # Main document template
│   │   └── preamble.tex            # LaTeX preamble
│   ├── apa.csl                     # APA citation style
│   └── reference.docx              # MS Word template
│
├── _quarto.yml                     # Quarto book configuration
├── _book.yml                       # Book metadata
├── _output.yml                     # Output format specifications
├── index.qmd                       # Book landing page
├── references.qmd                  # Bibliography page
├── styles.css                      # Custom CSS for web book
├── setup.R                         # Environment setup script
├── install_packages.R              # Package installation script
├── requirements.R                  # Dependency checker
├── README.md                       # This file
├── LICENSE                         # MIT License
├── CODE_OF_CONDUCT.md              # Community guidelines
├── CONTRIBUTING.md                 # Contribution guidelines
└── Econometrics_time.Rproj         # RStudio project file
```

---

## Book Content

The Quarto book comprises 22 chapters, organized into five thematic blocks:

### Block I: Foundations (Chapters 1-6)

**Chapter 1: What is Econometrics?**
- Definition and scope of econometrics
- Economic theory vs. econometric modeling
- Types of economic data (time series, cross-sectional, panel)
- Classical econometric methodology (8-step approach)

**Chapter 2: The Simple Linear Regression Model**
- Population vs. sample regression functions
- Ordinary Least Squares (OLS) derivation
- Gauss-Markov theorem and BLUE properties
- Interpretation of regression coefficients

**Chapter 3: Multiple Regression Analysis**
- Ceteris paribus interpretation
- Omitted variable bias
- Multicollinearity and its consequences
- Adjusted R-squared and model selection

**Chapter 4: Inference in Regression Models**
- Distribution of OLS estimators
- t-tests for individual coefficients
- F-tests for joint significance
- Confidence intervals and p-values

**Chapter 5: Dummy Variables and Interactions**
- Binary and categorical variables
- The dummy variable trap
- Interaction terms and moderation effects
- Structural breaks and Chow tests

**Chapter 6: Functional Form and Specification**
- Log-linear, log-log, and polynomial models
- Box-Cox transformations
- RESET test for functional form
- Specification errors and their consequences

### Block II: Violations of Classical Assumptions (Chapters 7-12)

**Chapter 7: Heteroskedasticity**
- Concept and economic sources
- Consequences for OLS (efficiency loss, invalid inference)
- Detection: Breusch-Pagan and White tests
- Solutions: Robust standard errors, WLS, FGLS

**Chapter 8: Autocorrelation**
- Nature of serial correlation in time series
- Durbin-Watson and Breusch-Godfrey tests
- AR(1) error structure and Cochrane-Orcutt
- HAC (Newey-West) standard errors

**Chapter 9: Multicollinearity**
- Perfect vs. imperfect multicollinearity
- Detection: VIF, condition number, correlation matrix
- Consequences: Large standard errors, unstable estimates
- Practical solutions: ridge regression, variable selection

**Chapter 10: Measurement Error and Data Problems**
- Errors-in-variables bias
- Missing data mechanisms (MCAR, MAR, MNAR)
- Outliers and influential observations
- Data quality and cleaning procedures

**Chapter 11: Model Selection and Validation**
- Information criteria (AIC, BIC, HQ)
- Cross-validation techniques
- Out-of-sample prediction
- Replication and robustness checks

**Chapter 12: Nonlinear Regression Models**
- Intrinsically linear vs. intrinsically nonlinear
- Nonlinear least squares (NLS)
- Numerical optimization and convergence
- Economic applications: production functions, demand systems

### Block III: Advanced Estimation Methods (Chapters 13-16)

**Chapter 13: Limited Dependent Variables**
- Linear probability model (LPM) and its problems
- Logit and Probit models
- Maximum likelihood estimation
- Marginal effects and interpretation
- Tobit models for censored data

**Chapter 14: Instrumental Variables and Two-Stage Least Squares**
- Endogeneity problem and sources
- Conditions for valid instruments (relevance, exogeneity)
- IV estimator derivation
- 2SLS for overidentified models
- Weak instruments and diagnostics

**Chapter 15: Generalized Method of Moments (GMM)**
- Principle of moment conditions
- GMM estimation framework
- Optimal weighting matrix
- J-test for overidentifying restrictions
- Applications: dynamic models, time series

**Chapter 16: Maximum Likelihood Estimation**
- Likelihood function and log-likelihood
- Properties: consistency, asymptotic normality, efficiency
- Information matrix and Cramér-Rao lower bound
- Likelihood ratio, Wald, and LM tests
- Applications to Probit, Logit, and other models

### Block IV: Panel Data and Dynamics (Chapters 17-20)

**Chapter 17: Introduction to Panel Data**
- Advantages of panel data
- Pooled OLS and its limitations
- Unobserved heterogeneity
- Short vs. long panels

**Chapter 18: Fixed Effects Models**
- Within (demeaning) transformation
- LSDV (Least Squares Dummy Variable) approach
- Interpretation of fixed effects
- Assumptions and limitations

**Chapter 19: Random Effects Models**
- GLS estimation framework
- Assumptions: orthogonality of effects and regressors
- Breusch-Pagan test for random effects
- Hausman test: choosing between FE and RE

**Chapter 20: Dynamic Panel Data Models**
- Lagged dependent variables and bias
- Arellano-Bond GMM estimator
- System GMM (Blundell-Bond)
- Instruments and moment conditions
- Applications in macroeconomics and finance

### Block V: Time Series and Applied Methods (Chapters 21-22)

**Chapter 21: Time Series Econometrics**
- Stationarity and unit roots
- ARIMA models: identification, estimation, forecasting
- Vector Autoregressions (VAR)
- Granger causality
- Impulse response functions

**Chapter 22: Cointegration and Error Correction**
- Spurious regression problem
- Engle-Granger cointegration test
- Vector Error Correction Models (VECM)
- Johansen procedure
- Applications to macroeconomic relationships

---

## LaTeX Cheatsheets

The project includes ultra-rigorous, publication-quality LaTeX cheatsheets for every chapter, designed in a **Vogue High-Tech** aesthetic inspired by MIT/NASA technical documentation.

### Design Philosophy

- **Palatino + Helvetica Typography**: Academic serif (Palatino) for body text, technical sans-serif (Helvetica) for headers and annotations
- **Champagne & NASA Blue Palette**: Professional color scheme (VogueBlack, NASAClassic, Champagne, TitaniumGray)
- **Animated Visualizations**: PGFPlots graphs with the `animate` package (requires Adobe Acrobat Reader)
- **Three-Column Layout**: Maximizes information density while maintaining readability
- **Micro-typography**: Letter-spacing, protrusion, and kerning optimizations

### Key Features

1. **Mathematical Rigor**
   - Equations in highlighted boxes (`\eqbox`)
   - Step-by-step derivations
   - Matrix notation alongside scalar forms
   - Asymptotic theory with convergence proofs

2. **Animated Graphics**
   - OLS convergence visualization
   - Heteroskedasticity demonstration (increasing variance)
   - Asymptotic distribution concentration
   - AR(1) time series evolution

3. **Diagnostic Tables**
   - Complete battery of econometric tests
   - Test statistics and null hypotheses
   - Critical decision rules

4. **Code-Ready Formulas**
   - OLS estimation: `β̂ = (X'X)⁻¹X'y`
   - IV/2SLS: `β̂_IV = (X'Z(Z'Z)⁻¹Z'X)⁻¹X'Z(Z'Z)⁻¹Z'y`
   - GMM: `θ̂ = argmin g̅'Wg̅`

### Compilation Instructions

Each cheatsheet can be compiled independently:

```bash
cd cheatsheets/chapter_01
pdflatex 01_que_es_econometria.tex
pdflatex 01_que_es_econometria.tex  # Run twice for cross-references
```

For the animated version, open the PDF with **Adobe Acrobat Reader** (animations do not work in most PDF viewers).

### Cheatsheet Hierarchy

Each chapter includes 10 cheatsheets:

1. `01_*.tex`: Core concept introduction
2. `02_*.tex`: Theoretical framework
3. `03_*.tex`: Mathematical derivations
4. `04_*.tex`: Estimation methods
5. `05_*.tex`: Hypothesis testing
6. `06_*.tex`: Diagnostics and violations
7. `07_*.tex`: Extensions and generalizations
8. `08_*.tex`: Applied examples
9. `09_*.tex`: Connections to other topics
10. `10_resumen_examen.tex`: Exam summary sheet

### Example: Ultra-Rigorous Cheatsheet Structure

```latex
% Preamble with Vogue-MIT styling
\documentclass[9pt, spanish, twoside]{article}
\usepackage{mathpazo, helvet, microtype}
\usepackage{pgfplots, animate, tcolorbox}

% Custom commands
\newcommand{\eqbox}[1]{\colorbox{TitaniumGray}{$\displaystyle #1$}}
\newcommand{\critical}[1]{\textcolor{CriticalRed}{\textbf{#1}}}

% Three-column layout
\begin{multicols*}{3}

% Content sections
\section{OLS Estimation}
\eqbox{\hat{\boldsymbol{\beta}} = (\mathbf{X}'\mathbf{X})^{-1}\mathbf{X}'\mathbf{y}}

% Animated visualization
\begin{animateinline}[autoplay,loop]{8}
  \multiframe{15}{rB=0.2+0.05}{
    % TikZ/PGFPlots code
  }
\end{animateinline}

\end{multicols*}
```

---

## Data Management

The project implements a three-tier data architecture:

### 1. Raw Data (`data/raw/`)

- Original, immutable datasets from external sources
- Never modified programmatically
- Accompanied by metadata files (`.json`) documenting:
  - Source URL or citation
  - Download date
  - Variable descriptions
  - Known data quality issues

### 2. Processed Data (`data/processed/`)

- Cleaned and transformed datasets ready for analysis
- Created by scripts in `R/functions/data_cleaning.R`
- Includes:
  - Missing value imputation
  - Outlier treatment
  - Variable recoding
  - Merges and joins
- Stored in efficient formats (`.rds`, `.feather`, or database tables)

### 3. External Data (`data/external/`)

- Third-party datasets not generated by the project
- Examples:
  - FRED (Federal Reserve Economic Data)
  - World Bank Open Data
  - Eurostat
  - National statistical agencies

### Database Integration

For large-scale data, the project supports PostgreSQL and SQLite:

**PostgreSQL Setup:**

```r
library(DBI)
library(RPostgres)

# Create connection
con <- dbConnect(
  RPostgres::Postgres(),
  dbname = "econometrics_db",
  host = "localhost",
  port = 5432,
  user = "your_username",
  password = "your_password"
)

# Write data to database
dbWriteTable(con, "time_series_data", your_data_frame)

# Query data
result <- dbGetQuery(con, "SELECT * FROM time_series_data WHERE year >= 2000")

# Disconnect
dbDisconnect(con)
```

**SQLite Setup (for lightweight, portable storage):**

```r
library(RSQLite)

# Create or connect to SQLite database
con <- dbConnect(SQLite(), "data/econometrics.sqlite")

# Write data
dbWriteTable(con, "panel_data", your_panel_data, overwrite = TRUE)

# Query data
result <- dbGetQuery(con, "SELECT * FROM panel_data WHERE country = 'USA'")

# Disconnect
dbDisconnect(con)
```

---

## R Modules and Functions

The `R/` directory contains the core computational infrastructure:

### Classes (`R/classes/`)

**EconometricModel.R**: Base S3 class for all econometric models

```r
# Constructor
EconometricModel <- function(formula, data, method = "OLS") {
  structure(
    list(
      formula = formula,
      data = data,
      method = method,
      coefficients = NULL,
      vcov = NULL,
      residuals = NULL,
      fitted.values = NULL
    ),
    class = "EconometricModel"
  )
}

# Methods
print.EconometricModel()
summary.EconometricModel()
plot.EconometricModel()
predict.EconometricModel()
```

**TimeSeriesModel.R**: Extension for time series analysis

```r
TimeSeriesModel <- function(formula, data, order = c(1, 0, 0)) {
  model <- EconometricModel(formula, data, method = "ARIMA")
  model$order <- order
  model$acf <- NULL
  model$pacf <- NULL
  class(model) <- c("TimeSeriesModel", "EconometricModel")
  return(model)
}

# Additional methods
forecast.TimeSeriesModel()
impulse_response.TimeSeriesModel()
```

**PanelDataModel.R**: Panel data specific methods

```r
PanelDataModel <- function(formula, data, index, effect = "individual") {
  model <- EconometricModel(formula, data, method = "Panel")
  model$index <- index
  model$effect <- effect
  model$within_r2 <- NULL
  model$between_r2 <- NULL
  class(model) <- c("PanelDataModel", "EconometricModel")
  return(model)
}

# Panel-specific methods
fixed_effects.PanelDataModel()
random_effects.PanelDataModel()
hausman_test.PanelDataModel()
```

### Functions (`R/functions/`)

**econometrics_utils.R**: Core econometric calculations

```r
# OLS estimation
ols_estimate <- function(X, y) {
  beta_hat <- solve(t(X) %*% X) %*% t(X) %*% y
  return(beta_hat)
}

# Robust standard errors (HC1)
robust_se <- function(X, residuals) {
  n <- nrow(X)
  k <- ncol(X)
  meat <- t(X) %*% diag(residuals^2) %*% X
  bread <- solve(t(X) %*% X)
  vcov_robust <- (n / (n - k)) * bread %*% meat %*% bread
  return(sqrt(diag(vcov_robust)))
}

# Variance Inflation Factor
vif_calculate <- function(X) {
  vif_values <- numeric(ncol(X))
  for (i in 1:ncol(X)) {
    r2 <- summary(lm(X[, i] ~ X[, -i]))$r.squared
    vif_values[i] <- 1 / (1 - r2)
  }
  return(vif_values)
}
```

