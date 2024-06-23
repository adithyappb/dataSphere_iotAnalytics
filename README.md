# IoT Data Analytics and Visualization System

This project aims to create a scalable system for collecting, processing, analyzing, and visualizing data from IoT devices worldwide.

## Features

- **Microservices Architecture**: Built using Kubernetes and managed with ArgoCD.
- **Distributed Data Systems**: Utilizes Spark, Presto, and Hive for data processing.
- **Real-Time Visualization**: Grafana dashboards for monitoring device data.
- **CI/CD Integration**: Bazel for repo management and automated deployments.

## Setup Instructions

1. **Build and Run**
   ```
   bazel run //bazel:main
   ```

2. **Deploy with ArgoCD**
   - Apply the `argo/applications/iot-analytics.yaml` configuration using ArgoCD.
   - Ensure ArgoCD syncs and deploys the application to your Kubernetes cluster.

3. **Set Up Infrastructure**
   - Use Terraform in `deployment/terraform/` to provision AWS resources.
   - Modify `main.tf` according to your AWS credentials and region.

4. **Access Grafana Dashboard**
   - Import the `visualization/grafana/dashboard.json` file into Grafana.
   - Configure Prometheus as the datasource to visualize device data.

