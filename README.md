# FoundationDB Exporter

Prometheus exporter for FoundationDB. Exports values from FoundationDB
[Machine-Readable Status](https://apple.github.io/foundationdb/mr-status.html).

This repo is based on the work in [aikoven/foundationdb-exporter](https://github.com/aikoven/foundationdb-exporter)
with adaptions for it to work with v7-only.

## Usage

Metrics are exposed on `:9444/metrics` endpoint.

## Supported Metrics

See the [source code](/exporter/src/metrics.ts).

## Grafana Dashboard

This repository includes [Grafana dashboard](/grafana-dashboard.json).

![Grafana Dashboard](/docs/grafana.png)

