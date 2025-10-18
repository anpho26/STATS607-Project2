# STATS 607 — Project 2: Prediction-Based Monte Carlo

Implements Algorithm 1 (Fortini–Petrone, 2023) for prediction-based sampling of the **prior** and **posterior** laws of exchangeable sequences, with two tracks:
- **DP baseline** (Pólya sequence),
- **Drift c.i.d.** (reinforcement ρ),
- **MVPS kernel** (Gaussian Rx with bandwidth h).

## Quick start
```bash
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
make all      # simulate → analyze → figures
make test     # run tests

