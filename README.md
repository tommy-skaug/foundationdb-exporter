# FoundationDB v7 Prometheus Exporter [![Publish Docker image](https://github.com/tommy-skaug/foundationdb-exporter/actions/workflows/build-and-publish.yaml/badge.svg)](https://github.com/tommy-skaug/foundationdb-exporter/actions/workflows/build-and-publish.yaml)

Prometheus exporter for FoundationDB v7. Exports values from FoundationDB
[Machine-Readable Status](https://apple.github.io/foundationdb/mr-status.html).

## Usage

Metrics are exposed via `:9444/metrics`.

## Supported Metrics

See the [source code](/exporter/src/metrics.ts).

## Grafana Dashboard

This repository includes [Grafana dashboard](/grafana-dashboard.json).

![Grafana Dashboard](/docs/grafana.png)

## 🤩 Thanks and Gratitude

This repo is based on [aikoven/foundationdb-exporter](https://github.com/aikoven/foundationdb-exporter).
