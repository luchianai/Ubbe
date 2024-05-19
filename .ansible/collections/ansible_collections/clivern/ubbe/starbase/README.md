# Monitoring Stack Deployment

Quick deployment guide for the monitoring stack using Ansible.

## Prerequisites

- Ansible installed
- SSH access to target server
- Target server: Ubuntu 24.04 LTS

## Quick Deployment

```bash
# Navigate to starbase directory
cd starbase

# Create txy environment (if using txy)
txy create ubbe
source $(txy current)

# Test connectivity
ansible all -m ping

# Deploy monitoring stack
ansible-playbook -i inventory/hosts playbooks/deploy-monitoring.yml

# Deploy Node
ansible-playbook playbooks/deploy-node.yml
```

## What Gets Deployed

- **Prometheus** - Metrics collection and alerting
- **Alertmanager** - Alert routing and notifications
- **Grafana** - Data visualization and dashboards
- **Node Exporter** - System metrics collection
- **Nginx Reverse Proxy** - Access control and routing

## Configuration

Update `inventory/hosts` with your server details:
- `ansible_host` - Your server IP
- `ansible_ssh_private_key_file` - Path to your SSH key
