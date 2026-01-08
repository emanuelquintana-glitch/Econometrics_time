# Contributing to Econometrics Time Series

Thank you for your interest in contributing to this econometrics educational project! This document provides guidelines for contributing to the project.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
- [Development Setup](#development-setup)
- [Style Guidelines](#style-guidelines)
- [Submission Guidelines](#submission-guidelines)
- [Community](#community)

## Code of Conduct

This project adheres to a Code of Conduct that all contributors are expected to follow. Please read [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) before contributing.

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates. When creating a bug report, include:

- **Clear title and description**
- **Steps to reproduce** the problem
- **Expected vs actual behavior**
- **Environment details** (OS, R version, package versions)
- **Code samples** or error messages
- **Screenshots** if applicable

**Template:**
```markdown
**Environment:**
- OS: [e.g., Linux, Windows, macOS]
- R version: [e.g., 4.5.2]
- Quarto version: [e.g., 1.4.550]

**Description:**
[Clear description of the bug]

**Steps to Reproduce:**
1. [First step]
2. [Second step]
3. [etc.]

**Expected Behavior:**
[What you expected to happen]

**Actual Behavior:**
[What actually happened]

**Code Sample:**
```r
# Your code here
```

**Error Message:**
```
Error message here
```
```

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion:

- **Use a clear and descriptive title**
- **Provide detailed description** of the suggested enhancement
- **Explain why this enhancement would be useful**
- **List any alternative solutions** you've considered
- **Include examples** of how the feature would work

### Contributing Content

#### Chapter Contributions

If you'd like to contribute new content or improve existing chapters:

1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b feature/chapter-X-improvement`
3. **Follow the chapter structure**:
   - `chapter_XX/chapter_X.qmd` - Main content
   - `chapter_XX/exercises_X.qmd` - Practice exercises
   - `chapter_XX/solutions_X.qmd` - Solutions
   - `chapter_XX/data_chapter_X.R` - Data generation scripts
   - `chapter_XX/references.bib` - Chapter-specific references

4. **Maintain consistency** with existing chapters
5. **Include working code examples**
6. **Add appropriate references**

#### Code Contributions

For R code contributions:

1. **Follow R style guidelines** (see below)
2. **Include documentation** (roxygen2 comments)
3. **Add unit tests** when applicable
4. **Ensure code runs** without errors
5. **Update documentation** if needed

#### Data Contributions

When contributing datasets:

1. **Document data sources** thoroughly
2. **Include data dictionary** (variable descriptions)
3. **Provide generation scripts** if synthetic
4. **Ensure reproducibility**
5. **Check licensing** for real-world data

### Improving Documentation

Documentation improvements are always welcome:

- Fix typos or grammatical errors
- Clarify confusing explanations
- Add examples or illustrations
- Improve code comments
- Update outdated information

## Development Setup

### Prerequisites

Ensure you have the following installed:

```bash
# Check versions
R --version          # R 4.5.2 or higher
python --version     # Python 3.13+ (optional)
julia --version      # Julia 1.12+ (optional)
quarto --version     # Quarto latest
tex --version        # TeX Live 2026
psql --version       # PostgreSQL 18+ (optional)
```

### Installation Steps

1. **Clone the repository:**
```bash
git clone https://github.com/emanuelquintana-glitch/Econometrics_time.git
cd Econometrics_time
```

2. **Install R dependencies:**
```r
source("install_packages.R")
```

3. **Set up the environment:**
```r
source("setup.R")
```

4. **Build the book:**
```bash
quarto render
```

5. **Preview locally:**
```bash
quarto preview
```

### Project Structure

```
Econometrics_time/
├── chapter_XX/           # Individual chapters
│   ├── chapter_X.qmd
│   ├── exercises_X.qmd
│   ├── solutions_X.qmd
│   ├── data_chapter_X.R
│   └── references.bib
├── R/                    # R utilities
│   ├── functions/
│   ├── classes/
│   └── modules/
├── data/                 # Data files
│   ├── raw/
│   ├── processed/
│   └── external/
├── cheatsheets/         # LaTeX cheatsheets
├── notebooks/           # Analysis notebooks
└── references/          # Bibliography
```

## Style Guidelines

### R Code Style

Follow the [Tidyverse Style Guide](https://style.tidyverse.org/):

```r
# Good
calculate_regression_stats <- function(data, formula) {
  model <- lm(formula, data = data)
  return(summary(model))
}

# Bad
calc_reg_stats<-function(d,f){
model=lm(f,data=d)
return(summary(model))}
```

**Key points:**
- Use `snake_case` for function and variable names
- Use `<-` for assignment, not `=`
- Add spaces around operators
- Indent with 2 spaces
- Line length max 80 characters
- Comment your code meaningfully

### Quarto/Markdown Style

```markdown
# Chapter Title {#sec-chapter-id}

## Section Title

Paragraph text with proper spacing.

### Subsection

- Use bullet points consistently
- Start with capital letters
- End with periods if complete sentences

#### Code Blocks

```{r}
#| label: fig-descriptive-name
#| fig-cap: "Clear figure caption"
#| warning: false
#| message: false

# Well-commented code
plot(x, y)
```

**Math Equations:**

$$
Y_i = \beta_0 + \beta_1 X_i + \varepsilon_i
$$ {#eq-regression}

Where $\varepsilon_i \sim N(0, \sigma^2)$.
```

### LaTeX Style (Cheatsheets)

```latex
\documentclass[10pt,landscape]{article}
\usepackage[utf8]{inputenc}

\begin{document}

\section{Section Title}

Clear, concise explanations with:
\begin{itemize}
  \item Proper spacing
  \item Consistent formatting
  \item Mathematical rigor
\end{itemize}

\end{document}
```

### Commit Message Guidelines

Follow [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting)
- `refactor`: Code refactoring
- `test`: Adding tests
- `chore`: Maintenance tasks

**Examples:**
```
feat(chapter-5): add multivariate regression examples

- Added three real-world examples
- Included visualization code
- Updated exercises

Closes #42
```

```
fix(chapter-2): correct OLS derivation formula

The derivation in equation 2.3 had an algebraic error.
Fixed the matrix multiplication step.

Fixes #38
```

```
docs(readme): update installation instructions

- Added PostgreSQL setup
- Clarified R package requirements
- Updated system requirements
```

## Submission Guidelines

### Pull Request Process

1. **Update documentation** for any changes
2. **Add/update tests** as needed
3. **Ensure all checks pass**:
   - Code runs without errors
   - Documentation builds successfully
   - Style guidelines followed

4. **Create pull request** with:
   - Clear title following commit conventions
   - Detailed description of changes
   - Reference to related issues
   - Screenshots if UI changes

5. **Request review** from maintainers
6. **Address feedback** promptly
7. **Merge** will be done by maintainers

### PR Template

```markdown
## Description
[Clear description of what this PR does]

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Code refactoring
- [ ] Other (specify):

## Related Issues
Closes #[issue number]

## Changes Made
- [Change 1]
- [Change 2]
- [Change 3]

## Testing
- [ ] Code runs without errors
- [ ] Examples work as expected
- [ ] Documentation builds successfully

## Checklist
- [ ] Code follows style guidelines
- [ ] Self-review completed
- [ ] Comments added for complex code
- [ ] Documentation updated
- [ ] No new warnings generated

## Screenshots (if applicable)
[Add screenshots here]

## Additional Notes
[Any additional information]
```

## Community

### Getting Help

- **GitHub Issues**: For bugs and feature requests
- **Discussions**: For questions and general discussion
- **Email**: For private inquiries

### Recognition

Contributors will be acknowledged in:
- README.md contributors section
- Project documentation
- Release notes

### Resources

- [R for Data Science](https://r4ds.had.co.nz/)
- [Quarto Documentation](https://quarto.org/docs/)
- [Tidyverse Style Guide](https://style.tidyverse.org/)
- [Git Workflow Guide](https://guides.github.com/introduction/flow/)

## Questions?

Don't hesitate to ask questions! Open an issue with the `question` label or start a discussion.

---

**Thank you for contributing to making econometrics education more accessible!**

---

*Last updated: January 7, 2025*
