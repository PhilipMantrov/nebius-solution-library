# Cloud environment and network
parent_id      = "project-e00gd0e773bh7yypsg"                                                                         # The project-id in this context
subnet_id      = "vpcsubnet-e00htyey2y294en83f"                                                                       # Use the command "nebius vpc v1alpha1 network list" to see the subnet id
ssh_user_name  = "sand"                                                                                               # Username you want to use to connect to the nodes
public_ssh_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFyRtxn6IrQY35498GONBA0A8Jaf5PPi4DnH6g+meNT3 panuko@nebius.com" # Public SSH key used in connecting to the nodes

# K8s modes
cpu_nodes_count  = 1                   # Number of CPU nodes
cpu_nodes_preset = "16vcpu-64gb"       # The CPU node preset
gpu_nodes_count  = 1                   # Number of GPU nodes
gpu_nodes_preset = "1gpu-16vcpu-200gb" # The GPU node preset. Set to "8gpu-128vcpu-1600gb", to deploy nodes with 8 GPUs.

# Observability
enable_grafana    = true  # Enable or disable Grafana deployment with true or false
enable_prometheus = true  # Enable or disable Prometheus deployment with true or false
enable_loki       = false # Enable or disable Loki deployment with true or false
enable_dcgm       = true  # Enable or disable NVIDIA DCGM Exporter Dashboard and Alerting deployment with true or false

## Loki
loki_access_key_id = "" # See the instruction in README.md on how to create this. Leave empty if you are not deploying Loki.
loki_secret_key    = "" # See the instruction in README.md on how to create this. Leave empty if you are not deploying Loki.

# Storage
## Filestore - recommended
enable_filestore     = true                       # Enable or disable Filestore integration with true or false
filestore_disk_size  = 100 * (1024 * 1024 * 1024) # Set Filestore disk size in bytes. The multiplication makes it easier to set the size in GB. This would set the size as 100GB
filestore_block_size = 4096                       # Set Filestore block size in bytes

## GlusterFS - legacy
enable_glusterfs            = false                      # Enable or disable GlusterFS integration with true or false
glusterfs_storage_nodes     = 3                          # Set amount of storage nodes in GlusterFS cluster
glusterfs_disk_count_per_vm = 2                          # Set amount of disks per storage node in GlusterFS cluster
glusterfs_disk_size         = 100 * (1024 * 1024 * 1024) # Set disk size in bytes. The multiplication makes it easier to set the size in GB. This would set the size as 100GB
