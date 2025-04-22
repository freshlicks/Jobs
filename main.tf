
resource "google_compute_network" "peering_network" {
  name                    = "private-network"
  auto_create_subnetworks = "false"
}

resource "google_compute_global_address" "private_ip_address" {
  name          = "private-ip-address"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = google_compute_network.peering_network.id
}

resource "google_service_networking_connection" "default" {
  network                 = google_compute_network.peering_network.id
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_ip_address.name]
}



resource "google_compute_network_peering_routes_config" "peering_routes" {
  peering              = google_service_networking_connection.default.peering
  network              = google_compute_network.peering_network.name
  import_custom_routes = true
  export_custom_routes = true
}



{
  "format_version": "1.2",
  "terraform_version": "1.5.7",
  "planned_values": {
    "outputs": {
      "backend-service-cloud-run_service_uri": {
        "sensitive": false
      },
      "frontend-service-cloud-run_service_uri": {
        "sensitive": false
      },
      "memorystore_host": {
        "sensitive": false,
        "type": "string",
        "value": "10.230.96.139"
      },
      "memorystore_port": {
        "sensitive": false,
        "type": "number",
        "value": 6379
      }
    },
    "root_module": {
      "child_modules": [
        {
          "resources": [
            {
              "address": "module.apphub.data.google_apphub_discovered_service.services[\"backend-testsrvc-c29d0cf17634c2dae33ca86144969093\"]",
              "mode": "data",
              "type": "google_apphub_discovered_service",
              "name": "services",
              "index": "backend-testsrvc-c29d0cf17634c2dae33ca86144969093",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "location": "us-central1",
                "project": "google-mpf-437786488991"
              },
              "sensitive_values": {
                "service_properties": [],
                "service_reference": []
              }
            },
            {
              "address": "module.apphub.data.google_apphub_discovered_service.services[\"db-pqsql-c29d0cf17634c2dae33ca86144969093\"]",
              "mode": "data",
              "type": "google_apphub_discovered_service",
              "name": "services",
              "index": "db-pqsql-c29d0cf17634c2dae33ca86144969093",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "location": "us-central1",
                "project": "google-mpf-437786488991"
              },
              "sensitive_values": {
                "service_properties": [],
                "service_reference": []
              }
            },
            {
              "address": "module.apphub.data.google_apphub_discovered_service.services[\"frontend-testsrvc-c29d0cf17634c2dae33ca86144969093\"]",
              "mode": "data",
              "type": "google_apphub_discovered_service",
              "name": "services",
              "index": "frontend-testsrvc-c29d0cf17634c2dae33ca86144969093",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "location": "us-central1",
                "project": "google-mpf-437786488991"
              },
              "sensitive_values": {
                "service_properties": [],
                "service_reference": []
              }
            },
            {
              "address": "module.apphub.google_apphub_service.register_services[\"backend-testsrvc-c29d0cf17634c2dae33ca86144969093\"]",
              "mode": "managed",
              "type": "google_apphub_service",
              "name": "register_services",
              "index": "backend-testsrvc-c29d0cf17634c2dae33ca86144969093",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "application_id": "threetiertest",
                "attributes": [],
                "description": null,
                "display_name": null,
                "location": "us-central1",
                "project": "google-mpf-437786488991",
                "service_id": "backend-testsrvc-c29d0cf17634c2dae33ca86144969093",
                "timeouts": null
              },
              "sensitive_values": {
                "attributes": [],
                "service_properties": [],
                "service_reference": []
              }
            },
            {
              "address": "module.apphub.google_apphub_service.register_services[\"db-pqsql-c29d0cf17634c2dae33ca86144969093\"]",
              "mode": "managed",
              "type": "google_apphub_service",
              "name": "register_services",
              "index": "db-pqsql-c29d0cf17634c2dae33ca86144969093",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "application_id": "threetiertest",
                "attributes": [],
                "description": null,
                "display_name": null,
                "location": "us-central1",
                "project": "google-mpf-437786488991",
                "service_id": "db-pqsql-c29d0cf17634c2dae33ca86144969093",
                "timeouts": null
              },
              "sensitive_values": {
                "attributes": [],
                "service_properties": [],
                "service_reference": []
              }
            },
            {
              "address": "module.apphub.google_apphub_service.register_services[\"frontend-testsrvc-c29d0cf17634c2dae33ca86144969093\"]",
              "mode": "managed",
              "type": "google_apphub_service",
              "name": "register_services",
              "index": "frontend-testsrvc-c29d0cf17634c2dae33ca86144969093",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "application_id": "threetiertest",
                "attributes": [],
                "description": null,
                "display_name": null,
                "location": "us-central1",
                "project": "google-mpf-437786488991",
                "service_id": "frontend-testsrvc-c29d0cf17634c2dae33ca86144969093",
                "timeouts": null
              },
              "sensitive_values": {
                "attributes": [],
                "service_properties": [],
                "service_reference": []
              }
            },
            {
              "address": "module.apphub.google_apphub_service.register_services[\"memstore-redis-tst-c29d0cf17634c2dae33ca86144969093\"]",
              "mode": "managed",
              "type": "google_apphub_service",
              "name": "register_services",
              "index": "memstore-redis-tst-c29d0cf17634c2dae33ca86144969093",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "application_id": "threetiertest",
                "attributes": [],
                "description": null,
                "discovered_service": "projects/google-mpf-437786488991/locations/us-central1/discoveredServices/apphub-00000000-0000-0000-e19c-22a9ee6ff518",
                "display_name": null,
                "location": "us-central1",
                "project": "google-mpf-437786488991",
                "service_id": "memstore-redis-tst-c29d0cf17634c2dae33ca86144969093",
                "timeouts": null
              },
              "sensitive_values": {
                "attributes": [],
                "service_properties": [],
                "service_reference": []
              }
            }
          ],
          "address": "module.apphub"
        },
        {
          "resources": [
            {
              "address": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
              "mode": "managed",
              "type": "google_cloud_run_v2_service",
              "name": "main",
              "provider_name": "registry.terraform.io/hashicorp/google-beta",
              "schema_version": 0,
              "values": {
                "annotations": null,
                "binary_authorization": [],
                "build_config": [],
                "client": null,
                "client_version": null,
                "custom_audiences": null,
                "default_uri_disabled": null,
                "deletion_protection": false,
                "description": null,
                "effective_labels": {
                  "goog-adc-tf-deployment": "adc",
                  "goog-terraform-provisioned": "true"
                },
                "iap_enabled": null,
                "ingress": "INGRESS_TRAFFIC_ALL",
                "invoker_iam_disabled": null,
                "labels": null,
                "launch_stage": "GA",
                "location": "us-central1",
                "name": "backend-testsrvc",
                "project": "hdcl-457412",
                "scaling": [],
                "template": [
                  {
                    "annotations": null,
                    "containers": [
                      {
                        "args": null,
                        "base_image_uri": null,
                        "command": null,
                        "depends_on": null,
                        "env": [
                          {
                            "name": "database_postgresql_CLOUD_SQL_DATABASE_CONNECTION_NAME",
                            "value_source": []
                          },
                          {
                            "name": "database_postgresql_CLOUD_SQL_DATABASE_HOST",
                            "value_source": []
                          },
                          {
                            "name": "database_postgresql_CLOUD_SQL_DATABASE_NAME",
                            "value": "database",
                            "value_source": []
                          },
                          {
                            "name": "memorystore_REDIS_AUTH_STRING",
                            "value": "42904321-b4a6-40f2-a60d-aca3611d7d86",
                            "value_source": []
                          },
                          {
                            "name": "memorystore_REDIS_HOST",
                            "value": "10.230.96.139",
                            "value_source": []
                          },
                          {
                            "name": "memorystore_REDIS_PORT",
                            "value": "6379",
                            "value_source": []
                          }
                        ],
                        "image": "gcr.io/design-center-container-repo/three-tier-app-be:latest-06022025",
                        "liveness_probe": [],
                        "name": "service-container",
                        "ports": [
                          {
                            "container_port": 80,
                            "name": "http1"
                          }
                        ],
                        "resources": [
                          {
                            "cpu_idle": true,
                            "startup_cpu_boost": false
                          }
                        ],
                        "volume_mounts": [],
                        "working_dir": null
                      },
                      {
                        "args": null,
                        "base_image_uri": null,
                        "command": null,
                        "env": [],
                        "image": "us-docker.pkg.dev/cloud-ops-agents-artifacts/cloud-run-gmp-sidecar/cloud-run-gmp-sidecar:1.1.1",
                        "liveness_probe": [],
                        "name": "collector",
                        "resources": [
                          {
                            "cpu_idle": true,
                            "startup_cpu_boost": false
                          }
                        ],
                        "volume_mounts": [],
                        "working_dir": null
                      }
                    ],
                    "encryption_key": null,
                    "execution_environment": "EXECUTION_ENVIRONMENT_GEN2",
                    "gpu_zonal_redundancy_disabled": null,
                    "labels": null,
                    "node_selector": [],
                    "revision": null,
                    "service_account": "backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                    "service_mesh": [],
                    "session_affinity": null,
                    "volumes": [],
                    "vpc_access": [
                      {
                        "connector": null,
                        "egress": "PRIVATE_RANGES_ONLY",
                        "network_interfaces": [
                          {
                            "network": "default",
                            "subnetwork": "default",
                            "tags": null
                          }
                        ]
                      }
                    ]
                  }
                ],
                "terraform_labels": {
                  "goog-adc-tf-deployment": "adc",
                  "goog-terraform-provisioned": "true"
                },
                "timeouts": null
              },
              "sensitive_values": {
                "binary_authorization": [],
                "build_config": [],
                "conditions": [],
                "effective_annotations": {},
                "effective_labels": {},
                "scaling": [],
                "template": [
                  {
                    "containers": [
                      {
                        "build_info": [],
                        "env": true,
                        "liveness_probe": [],
                        "ports": [
                          {}
                        ],
                        "resources": [
                          {
                            "limits": {}
                          }
                        ],
                        "startup_probe": [],
                        "volume_mounts": []
                      },
                      {
                        "build_info": [],
                        "depends_on": [],
                        "env": [],
                        "liveness_probe": [],
                        "ports": [],
                        "resources": [
                          {
                            "limits": {}
                          }
                        ],
                        "startup_probe": [],
                        "volume_mounts": []
                      }
                    ],
                    "node_selector": [],
                    "scaling": [],
                    "service_mesh": [],
                    "volumes": [],
                    "vpc_access": [
                      {
                        "network_interfaces": [
                          {}
                        ]
                      }
                    ]
                  }
                ],
                "terminal_condition": [],
                "terraform_labels": {},
                "traffic": [],
                "traffic_statuses": [],
                "urls": []
              }
            },
            {
              "address": "module.backend-service-cloud-run.google_cloud_run_v2_service_iam_member.authorize[\"allUsers\"]",
              "mode": "managed",
              "type": "google_cloud_run_v2_service_iam_member",
              "name": "authorize",
              "index": "allUsers",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "condition": [],
                "location": "us-central1",
                "member": "allUsers",
                "name": "backend-testsrvc",
                "project": "hdcl-457412",
                "role": "roles/run.invoker"
              },
              "sensitive_values": {
                "condition": []
              }
            },
            {
              "address": "module.backend-service-cloud-run.google_project_iam_member.roles[\"roles/cloudsql.client\"]",
              "mode": "managed",
              "type": "google_project_iam_member",
              "name": "roles",
              "index": "roles/cloudsql.client",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "condition": [],
                "etag": "BwYzTj/kA64=",
                "id": "hdcl-457412/roles/cloudsql.client/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                "project": "hdcl-457412",
                "role": "roles/cloudsql.client"
              },
              "sensitive_values": {
                "condition": []
              }
            },
            {
              "address": "module.backend-service-cloud-run.google_project_iam_member.roles[\"roles/cloudsql.instanceUser\"]",
              "mode": "managed",
              "type": "google_project_iam_member",
              "name": "roles",
              "index": "roles/cloudsql.instanceUser",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "condition": [],
                "etag": "BwYzTj/kA64=",
                "id": "hdcl-457412/roles/cloudsql.instanceUser/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                "project": "hdcl-457412",
                "role": "roles/cloudsql.instanceUser"
              },
              "sensitive_values": {
                "condition": []
              }
            },
            {
              "address": "module.backend-service-cloud-run.google_project_iam_member.roles[\"roles/monitoring.metricWriter\"]",
              "mode": "managed",
              "type": "google_project_iam_member",
              "name": "roles",
              "index": "roles/monitoring.metricWriter",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "condition": [],
                "etag": "BwYzTj/kA64=",
                "id": "hdcl-457412/roles/monitoring.metricWriter/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                "project": "hdcl-457412",
                "role": "roles/monitoring.metricWriter"
              },
              "sensitive_values": {
                "condition": []
              }
            },
            {
              "address": "module.backend-service-cloud-run.google_project_iam_member.roles[\"roles/redis.editor\"]",
              "mode": "managed",
              "type": "google_project_iam_member",
              "name": "roles",
              "index": "roles/redis.editor",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "condition": [],
                "etag": "BwYzTj/kA64=",
                "id": "hdcl-457412/roles/redis.editor/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                "project": "hdcl-457412",
                "role": "roles/redis.editor"
              },
              "sensitive_values": {
                "condition": []
              }
            },
            {
              "address": "module.backend-service-cloud-run.google_service_account.sa[0]",
              "mode": "managed",
              "type": "google_service_account",
              "name": "sa",
              "index": 0,
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "account_id": "backend-testsrvc-us-central-sa",
                "create_ignore_already_exists": null,
                "description": "",
                "disabled": false,
                "display_name": "Service account for backend-testsrvc in us-central1",
                "email": "backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                "id": "projects/hdcl-457412/serviceAccounts/backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                "name": "projects/hdcl-457412/serviceAccounts/backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                "project": "hdcl-457412",
                "timeouts": null,
                "unique_id": "108693367962186688347"
              },
              "sensitive_values": {}
            }
          ],
          "address": "module.backend-service-cloud-run"
        },
        {
          "resources": [
            {
              "address": "module.database-postgresql.google_sql_database.default[0]",
              "mode": "managed",
              "type": "google_sql_database",
              "name": "default",
              "index": 0,
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "charset": "",
                "deletion_policy": "ABANDON",
                "instance": "db-pqsql",
                "name": "database",
                "project": "hdcl-457412",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.database-postgresql.google_sql_database_instance.default",
              "mode": "managed",
              "type": "google_sql_database_instance",
              "name": "default",
              "provider_name": "registry.terraform.io/hashicorp/google-beta",
              "schema_version": 0,
              "values": {
                "clone": [],
                "database_version": "POSTGRES_16",
                "deletion_protection": false,
                "instance_type": "CLOUD_SQL_INSTANCE",
                "name": "db-pqsql",
                "project": "hdcl-457412",
                "region": "us-central1",
                "restore_backup_context": [],
                "root_password": null,
                "settings": [
                  {
                    "activation_policy": "ALWAYS",
                    "active_directory_config": [],
                    "advanced_machine_features": [],
                    "availability_type": "REGIONAL",
                    "backup_configuration": [
                      {
                        "binary_log_enabled": null,
                        "enabled": true,
                        "location": null,
                        "point_in_time_recovery_enabled": true
                      }
                    ],
                    "collation": null,
                    "connector_enforcement": "NOT_REQUIRED",
                    "data_cache_config": [
                      {
                        "data_cache_enabled": true
                      }
                    ],
                    "database_flags": [
                      {
                        "name": "cloudsql.iam_authentication",
                        "value": "on"
                      }
                    ],
                    "deletion_protection_enabled": false,
                    "deny_maintenance_period": [],
                    "disk_autoresize": true,
                    "disk_autoresize_limit": 0,
                    "disk_size": 10,
                    "disk_type": "PD_SSD",
                    "edition": "ENTERPRISE_PLUS",
                    "enable_dataplex_integration": null,
                    "enable_google_ml_integration": false,
                    "ip_configuration": [
                      {
                        "allocated_ip_range": null,
                        "authorized_networks": [],
                        "enable_private_path_for_google_cloud_services": true,
                        "ipv4_enabled": true,
                        "private_network": google_compute_network.peering_network.id,
                        "psc_config": [],
                        "server_ca_pool": null
                      }
                    ],
                    "location_preference": [
                      {
                        "follow_gae_application": null,
                        "secondary_zone": null,
                        "zone": "us-central1-a"
                      }
                    ],
                    "maintenance_window": [
                      {
                        "day": 1,
                        "hour": 23,
                        "update_track": "canary"
                      }
                    ],
                    "password_validation_policy": [],
                    "pricing_plan": "PER_USE",
                    "sql_server_audit_config": [],
                    "tier": "db-perf-optimized-N-8",
                    "time_zone": null
                  }
                ],
                "timeouts": {
                  "create": "30m",
                  "delete": "30m",
                  "update": "30m"
                }
              },
              "sensitive_values": {
                "available_maintenance_versions": [],
                "clone": [],
                "ip_address": [],
                "replica_configuration": [],
                "replica_names": [],
                "replication_cluster": [],
                "restore_backup_context": [],
                "server_ca_cert": [],
                "settings": [
                  {
                    "active_directory_config": [],
                    "advanced_machine_features": [],
                    "backup_configuration": [
                      {
                        "backup_retention_settings": []
                      }
                    ],
                    "data_cache_config": [
                      {}
                    ],
                    "database_flags": [
                      {}
                    ],
                    "deny_maintenance_period": [],
                    "insights_config": [],
                    "ip_configuration": [
                      {
                        "authorized_networks": [],
                        "psc_config": []
                      }
                    ],
                    "location_preference": [
                      {}
                    ],
                    "maintenance_window": [
                      {}
                    ],
                    "password_validation_policy": [],
                    "sql_server_audit_config": [],
                    "user_labels": {}
                  }
                ],
                "timeouts": {}
              }
            },
            {
              "address": "module.database-postgresql.google_sql_user.default[0]",
              "mode": "managed",
              "type": "google_sql_user",
              "name": "default",
              "index": 0,
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 1,
              "values": {
                "deletion_policy": "ABANDON",
                "instance": "db-pqsql",
                "name": "default",
                "password_policy": [],
                "password_wo": null,
                "password_wo_version": null,
                "project": "hdcl-457412",
                "timeouts": null,
                "type": null
              },
              "sensitive_values": {
                "password": true,
                "password_policy": [],
                "sql_server_user_details": []
              }
            },
            {
              "address": "module.database-postgresql.google_sql_user.iam_account[\"backend-testsrvc-us-central-sa\"]",
              "mode": "managed",
              "type": "google_sql_user",
              "name": "iam_account",
              "index": "backend-testsrvc-us-central-sa",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 1,
              "values": {
                "deletion_policy": "ABANDON",
                "instance": "db-pqsql",
                "name": "backend-testsrvc-us-central-sa@hdcl-457412.iam",
                "password": null,
                "password_policy": [],
                "password_wo": null,
                "password_wo_version": null,
                "project": "hdcl-457412",
                "timeouts": null,
                "type": "CLOUD_IAM_SERVICE_ACCOUNT"
              },
              "sensitive_values": {
                "password_policy": [],
                "sql_server_user_details": []
              }
            },
            {
              "address": "module.database-postgresql.null_resource.module_depends_on",
              "mode": "managed",
              "type": "null_resource",
              "name": "module_depends_on",
              "provider_name": "registry.terraform.io/hashicorp/null",
              "schema_version": 0,
              "values": {
                "id": "7575780228065869329",
                "triggers": {
                  "value": "0"
                }
              },
              "sensitive_values": {
                "triggers": {}
              }
            },
            {
              "address": "module.database-postgresql.random_password.user-password[0]",
              "mode": "managed",
              "type": "random_password",
              "name": "user-password",
              "index": 0,
              "provider_name": "registry.terraform.io/hashicorp/random",
              "schema_version": 3,
              "values": {
                "keepers": {
                  "name": "db-pqsql"
                },
                "length": 32,
                "lower": true,
                "min_lower": 1,
                "min_numeric": 1,
                "min_special": 0,
                "min_upper": 1,
                "number": true,
                "numeric": true,
                "override_special": null,
                "special": false,
                "upper": true
              },
              "sensitive_values": {
                "keepers": {}
              }
            }
          ],
          "address": "module.database-postgresql"
        },
        {
          "resources": [
            {
              "address": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
              "mode": "managed",
              "type": "google_cloud_run_v2_service",
              "name": "main",
              "provider_name": "registry.terraform.io/hashicorp/google-beta",
              "schema_version": 0,
              "values": {
                "annotations": null,
                "binary_authorization": [],
                "build_config": [],
                "client": null,
                "client_version": null,
                "custom_audiences": null,
                "default_uri_disabled": null,
                "deletion_protection": false,
                "description": null,
                "effective_labels": {
                  "goog-adc-tf-deployment": "adc",
                  "goog-terraform-provisioned": "true"
                },
                "iap_enabled": null,
                "ingress": "INGRESS_TRAFFIC_ALL",
                "invoker_iam_disabled": null,
                "labels": null,
                "launch_stage": "GA",
                "location": "us-central1",
                "name": "frontend-testsrvc",
                "project": "hdcl-457412",
                "scaling": [],
                "template": [
                  {
                    "annotations": null,
                    "containers": [
                      {
                        "args": null,
                        "base_image_uri": null,
                        "command": null,
                        "depends_on": null,
                        "env": [
                          {
                            "name": "backend_service_cloud_run_SERVICE_ENDPOINT",
                            "value_source": []
                          }
                        ],
                        "image": "gcr.io/design-center-container-repo/three-tier-app-fe:latest-02012025",
                        "liveness_probe": [],
                        "name": "",
                        "ports": [
                          {
                            "container_port": 80,
                            "name": "http1"
                          }
                        ],
                        "resources": [
                          {
                            "cpu_idle": true,
                            "startup_cpu_boost": false
                          }
                        ],
                        "volume_mounts": [],
                        "working_dir": null
                      },
                      {
                        "args": null,
                        "base_image_uri": null,
                        "command": null,
                        "env": [],
                        "image": "us-docker.pkg.dev/cloud-ops-agents-artifacts/cloud-run-gmp-sidecar/cloud-run-gmp-sidecar:1.1.1",
                        "liveness_probe": [],
                        "name": "collector",
                        "resources": [
                          {
                            "cpu_idle": true,
                            "startup_cpu_boost": false
                          }
                        ],
                        "volume_mounts": [],
                        "working_dir": null
                      }
                    ],
                    "encryption_key": null,
                    "execution_environment": "EXECUTION_ENVIRONMENT_GEN2",
                    "gpu_zonal_redundancy_disabled": null,
                    "labels": null,
                    "node_selector": [],
                    "revision": null,
                    "service_account": "frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                    "service_mesh": [],
                    "session_affinity": null,
                    "volumes": [],
                    "vpc_access": [
                      {
                        "connector": null,
                        "egress": "ALL_TRAFFIC",
                        "network_interfaces": [
                          {
                            "network": "default",
                            "subnetwork": "default",
                            "tags": null
                          }
                        ]
                      }
                    ]
                  }
                ],
                "terraform_labels": {
                  "goog-adc-tf-deployment": "adc",
                  "goog-terraform-provisioned": "true"
                },
                "timeouts": null
              },
              "sensitive_values": {
                "binary_authorization": [],
                "build_config": [],
                "conditions": [],
                "effective_annotations": {},
                "effective_labels": {},
                "scaling": [],
                "template": [
                  {
                    "containers": [
                      {
                        "build_info": [],
                        "env": [
                          {
                            "value_source": []
                          }
                        ],
                        "liveness_probe": [],
                        "ports": [
                          {}
                        ],
                        "resources": [
                          {
                            "limits": {}
                          }
                        ],
                        "startup_probe": [],
                        "volume_mounts": []
                      },
                      {
                        "build_info": [],
                        "depends_on": [],
                        "env": [],
                        "liveness_probe": [],
                        "ports": [],
                        "resources": [
                          {
                            "limits": {}
                          }
                        ],
                        "startup_probe": [],
                        "volume_mounts": []
                      }
                    ],
                    "node_selector": [],
                    "scaling": [],
                    "service_mesh": [],
                    "volumes": [],
                    "vpc_access": [
                      {
                        "network_interfaces": [
                          {}
                        ]
                      }
                    ]
                  }
                ],
                "terminal_condition": [],
                "terraform_labels": {},
                "traffic": [],
                "traffic_statuses": [],
                "urls": []
              }
            },
            {
              "address": "module.frontend-service-cloud-run.google_cloud_run_v2_service_iam_member.authorize[\"allUsers\"]",
              "mode": "managed",
              "type": "google_cloud_run_v2_service_iam_member",
              "name": "authorize",
              "index": "allUsers",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "condition": [],
                "location": "us-central1",
                "member": "allUsers",
                "name": "frontend-testsrvc",
                "project": "hdcl-457412",
                "role": "roles/run.invoker"
              },
              "sensitive_values": {
                "condition": []
              }
            },
            {
              "address": "module.frontend-service-cloud-run.google_project_iam_member.roles[\"roles/monitoring.metricWriter\"]",
              "mode": "managed",
              "type": "google_project_iam_member",
              "name": "roles",
              "index": "roles/monitoring.metricWriter",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "condition": [],
                "etag": "BwYzTj/kA64=",
                "id": "hdcl-457412/roles/monitoring.metricWriter/serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                "member": "serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                "project": "hdcl-457412",
                "role": "roles/monitoring.metricWriter"
              },
              "sensitive_values": {
                "condition": []
              }
            },
            {
              "address": "module.frontend-service-cloud-run.google_project_iam_member.roles[\"roles/run.invoker\"]",
              "mode": "managed",
              "type": "google_project_iam_member",
              "name": "roles",
              "index": "roles/run.invoker",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "condition": [],
                "etag": "BwYzTj/kA64=",
                "id": "hdcl-457412/roles/run.invoker/serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                "member": "serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                "project": "hdcl-457412",
                "role": "roles/run.invoker"
              },
              "sensitive_values": {
                "condition": []
              }
            },
            {
              "address": "module.frontend-service-cloud-run.google_service_account.sa[0]",
              "mode": "managed",
              "type": "google_service_account",
              "name": "sa",
              "index": 0,
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "account_id": "frontend-testsrvc-us-centra-sa",
                "create_ignore_already_exists": null,
                "description": "",
                "disabled": false,
                "display_name": "Service account for frontend-testsrvc in us-central1",
                "email": "frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                "id": "projects/hdcl-457412/serviceAccounts/frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                "member": "serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                "name": "projects/hdcl-457412/serviceAccounts/frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                "project": "hdcl-457412",
                "timeouts": null,
                "unique_id": "117930405471444033520"
              },
              "sensitive_values": {}
            }
          ],
          "address": "module.frontend-service-cloud-run"
        },
        {
          "resources": [
            {
              "address": "module.memorystore.google_redis_instance.default",
              "mode": "managed",
              "type": "google_redis_instance",
              "name": "default",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "alternative_location_id": "",
                "auth_enabled": true,
                "auth_string": "42904321-b4a6-40f2-a60d-aca3611d7d86",
                "authorized_network": "projects/hdcl-457412/global/networks/default",
                "connect_mode": "DIRECT_PEERING",
                "create_time": "2025-04-21T18:19:48.048849327Z",
                "current_location_id": "us-central1-a",
                "customer_managed_key": "",
                "display_name": "",
                "effective_labels": {
                  "goog-adc-tf-deployment": "adc",
                  "goog-terraform-provisioned": "true"
                },
                "host": "10.230.96.139",
                "id": "projects/hdcl-457412/locations/us-central1/instances/memstore-redis-tst",
                "labels": {},
                "location_id": "us-central1-a",
                "maintenance_policy": [],
                "maintenance_schedule": [],
                "maintenance_version": "20241107_00_00",
                "memory_size_gb": 1,
                "name": "memstore-redis-tst",
                "nodes": [
                  {
                    "id": "node-0",
                    "zone": "us-central1-a"
                  }
                ],
                "persistence_config": [
                  {
                    "persistence_mode": "DISABLED",
                    "rdb_next_snapshot_time": "",
                    "rdb_snapshot_period": "",
                    "rdb_snapshot_start_time": ""
                  }
                ],
                "persistence_iam_identity": "serviceAccount:service-107091554857@cloud-redis.iam.gserviceaccount.com",
                "port": 6379,
                "project": "hdcl-457412",
                "read_endpoint": "",
                "read_endpoint_port": 0,
                "read_replicas_mode": "READ_REPLICAS_DISABLED",
                "redis_configs": {},
                "redis_version": "REDIS_6_X",
                "region": "us-central1",
                "replica_count": 0,
                "reserved_ip_range": null,
                "secondary_ip_range": "",
                "server_ca_certs": [],
                "terraform_labels": {
                  "goog-adc-tf-deployment": "adc",
                  "goog-terraform-provisioned": "true"
                },
                "tier": "BASIC",
                "timeouts": null,
                "transit_encryption_mode": "DISABLED"
              },
              "sensitive_values": {
                "effective_labels": {},
                "labels": {},
                "maintenance_policy": [],
                "maintenance_schedule": [],
                "nodes": [
                  {}
                ],
                "persistence_config": [
                  {}
                ],
                "redis_configs": {},
                "server_ca_certs": [],
                "terraform_labels": {}
              }
            }
          ],
          "address": "module.memorystore",
          "child_modules": [
            {
              "resources": [
                {
                  "address": "module.memorystore.module.enable_apis.google_project_service.project_services[\"redis.googleapis.com\"]",
                  "mode": "managed",
                  "type": "google_project_service",
                  "name": "project_services",
                  "index": "redis.googleapis.com",
                  "provider_name": "registry.terraform.io/hashicorp/google",
                  "schema_version": 0,
                  "values": {
                    "disable_dependent_services": false,
                    "disable_on_destroy": false,
                    "id": "hdcl-457412/redis.googleapis.com",
                    "project": "hdcl-457412",
                    "service": "redis.googleapis.com",
                    "timeouts": null
                  },
                  "sensitive_values": {}
                }
              ],
              "address": "module.memorystore.module.enable_apis"
            }
          ]
        },
        {
          "resources": [
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"accesscontextmanager.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "accesscontextmanager.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/accesscontextmanager.googleapis.com",
                "project": "hdcl-457412",
                "service": "accesscontextmanager.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"apphub.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "apphub.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/apphub.googleapis.com",
                "project": "hdcl-457412",
                "service": "apphub.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"cloudbilling.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "cloudbilling.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/cloudbilling.googleapis.com",
                "project": "hdcl-457412",
                "service": "cloudbilling.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"cloudkms.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "cloudkms.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/cloudkms.googleapis.com",
                "project": "hdcl-457412",
                "service": "cloudkms.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"cloudresourcemanager.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "cloudresourcemanager.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/cloudresourcemanager.googleapis.com",
                "project": "hdcl-457412",
                "service": "cloudresourcemanager.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"cloudscheduler.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "cloudscheduler.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/cloudscheduler.googleapis.com",
                "project": "hdcl-457412",
                "service": "cloudscheduler.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"compute.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "compute.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/compute.googleapis.com",
                "project": "hdcl-457412",
                "service": "compute.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"iam.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "iam.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/iam.googleapis.com",
                "project": "hdcl-457412",
                "service": "iam.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"memcache.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "memcache.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/memcache.googleapis.com",
                "project": "hdcl-457412",
                "service": "memcache.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"memorystore.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "memorystore.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/memorystore.googleapis.com",
                "project": "hdcl-457412",
                "service": "memorystore.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"monitoring.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "monitoring.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/monitoring.googleapis.com",
                "project": "hdcl-457412",
                "service": "monitoring.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"networkconnectivity.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "networkconnectivity.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/networkconnectivity.googleapis.com",
                "project": "hdcl-457412",
                "service": "networkconnectivity.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"redis.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "redis.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/redis.googleapis.com",
                "project": "hdcl-457412",
                "service": "redis.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"run.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "run.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/run.googleapis.com",
                "project": "hdcl-457412",
                "service": "run.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"serviceconsumermanagement.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "serviceconsumermanagement.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/serviceconsumermanagement.googleapis.com",
                "project": "hdcl-457412",
                "service": "serviceconsumermanagement.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"servicenetworking.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "servicenetworking.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/servicenetworking.googleapis.com",
                "project": "hdcl-457412",
                "service": "servicenetworking.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"serviceusage.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "serviceusage.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/serviceusage.googleapis.com",
                "project": "hdcl-457412",
                "service": "serviceusage.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"sqladmin.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "sqladmin.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/sqladmin.googleapis.com",
                "project": "hdcl-457412",
                "service": "sqladmin.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"storage-api.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "storage-api.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/storage-api.googleapis.com",
                "project": "hdcl-457412",
                "service": "storage-api.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-billing-project.google_project_service.project_services[\"workflows.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "workflows.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/workflows.googleapis.com",
                "project": "hdcl-457412",
                "service": "workflows.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            }
          ],
          "address": "module.project-services-billing-project"
        },
        {
          "resources": [
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"accesscontextmanager.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "accesscontextmanager.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/accesscontextmanager.googleapis.com",
                "project": "hdcl-457412",
                "service": "accesscontextmanager.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"cloudbilling.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "cloudbilling.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/cloudbilling.googleapis.com",
                "project": "hdcl-457412",
                "service": "cloudbilling.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"cloudkms.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "cloudkms.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/cloudkms.googleapis.com",
                "project": "hdcl-457412",
                "service": "cloudkms.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"cloudresourcemanager.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "cloudresourcemanager.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/cloudresourcemanager.googleapis.com",
                "project": "hdcl-457412",
                "service": "cloudresourcemanager.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"cloudscheduler.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "cloudscheduler.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/cloudscheduler.googleapis.com",
                "project": "hdcl-457412",
                "service": "cloudscheduler.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"compute.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "compute.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/compute.googleapis.com",
                "project": "hdcl-457412",
                "service": "compute.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"iam.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "iam.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/iam.googleapis.com",
                "project": "hdcl-457412",
                "service": "iam.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"memcache.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "memcache.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/memcache.googleapis.com",
                "project": "hdcl-457412",
                "service": "memcache.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"memorystore.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "memorystore.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/memorystore.googleapis.com",
                "project": "hdcl-457412",
                "service": "memorystore.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"monitoring.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "monitoring.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/monitoring.googleapis.com",
                "project": "hdcl-457412",
                "service": "monitoring.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"networkconnectivity.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "networkconnectivity.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/networkconnectivity.googleapis.com",
                "project": "hdcl-457412",
                "service": "networkconnectivity.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"redis.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "redis.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/redis.googleapis.com",
                "project": "hdcl-457412",
                "service": "redis.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"run.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "run.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/run.googleapis.com",
                "project": "hdcl-457412",
                "service": "run.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"serviceconsumermanagement.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "serviceconsumermanagement.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/serviceconsumermanagement.googleapis.com",
                "project": "hdcl-457412",
                "service": "serviceconsumermanagement.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"servicenetworking.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "servicenetworking.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/servicenetworking.googleapis.com",
                "project": "hdcl-457412",
                "service": "servicenetworking.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"serviceusage.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "serviceusage.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/serviceusage.googleapis.com",
                "project": "hdcl-457412",
                "service": "serviceusage.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"sqladmin.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "sqladmin.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/sqladmin.googleapis.com",
                "project": "hdcl-457412",
                "service": "sqladmin.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"storage-api.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "storage-api.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/storage-api.googleapis.com",
                "project": "hdcl-457412",
                "service": "storage-api.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            },
            {
              "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"workflows.googleapis.com\"]",
              "mode": "managed",
              "type": "google_project_service",
              "name": "project_services",
              "index": "workflows.googleapis.com",
              "provider_name": "registry.terraform.io/hashicorp/google",
              "schema_version": 0,
              "values": {
                "disable_dependent_services": true,
                "disable_on_destroy": false,
                "id": "hdcl-457412/workflows.googleapis.com",
                "project": "hdcl-457412",
                "service": "workflows.googleapis.com",
                "timeouts": null
              },
              "sensitive_values": {}
            }
          ],
          "address": "module.project-services-hdcl-457412"
        }
      ]
    }
  },
  "resource_changes": [
    {
      "address": "module.apphub.data.google_apphub_discovered_service.services[\"backend-testsrvc-c29d0cf17634c2dae33ca86144969093\"]",
      "module_address": "module.apphub",
      "mode": "data",
      "type": "google_apphub_discovered_service",
      "name": "services",
      "index": "backend-testsrvc-c29d0cf17634c2dae33ca86144969093",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "read"
        ],
        "before": null,
        "after": {
          "location": "us-central1",
          "project": "google-mpf-437786488991"
        },
        "after_unknown": {
          "id": true,
          "name": true,
          "service_properties": true,
          "service_reference": true,
          "service_uri": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "service_properties": [],
          "service_reference": []
        }
      },
      "action_reason": "read_because_config_unknown"
    },
    {
      "address": "module.apphub.data.google_apphub_discovered_service.services[\"db-pqsql-c29d0cf17634c2dae33ca86144969093\"]",
      "module_address": "module.apphub",
      "mode": "data",
      "type": "google_apphub_discovered_service",
      "name": "services",
      "index": "db-pqsql-c29d0cf17634c2dae33ca86144969093",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "read"
        ],
        "before": null,
        "after": {
          "location": "us-central1",
          "project": "google-mpf-437786488991"
        },
        "after_unknown": {
          "id": true,
          "name": true,
          "service_properties": true,
          "service_reference": true,
          "service_uri": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "service_properties": [],
          "service_reference": []
        }
      },
      "action_reason": "read_because_config_unknown"
    },
    {
      "address": "module.apphub.data.google_apphub_discovered_service.services[\"frontend-testsrvc-c29d0cf17634c2dae33ca86144969093\"]",
      "module_address": "module.apphub",
      "mode": "data",
      "type": "google_apphub_discovered_service",
      "name": "services",
      "index": "frontend-testsrvc-c29d0cf17634c2dae33ca86144969093",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "read"
        ],
        "before": null,
        "after": {
          "location": "us-central1",
          "project": "google-mpf-437786488991"
        },
        "after_unknown": {
          "id": true,
          "name": true,
          "service_properties": true,
          "service_reference": true,
          "service_uri": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "service_properties": [],
          "service_reference": []
        }
      },
      "action_reason": "read_because_config_unknown"
    },
    {
      "address": "module.apphub.google_apphub_service.register_services[\"backend-testsrvc-c29d0cf17634c2dae33ca86144969093\"]",
      "module_address": "module.apphub",
      "mode": "managed",
      "type": "google_apphub_service",
      "name": "register_services",
      "index": "backend-testsrvc-c29d0cf17634c2dae33ca86144969093",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "application_id": "threetiertest",
          "attributes": [],
          "description": null,
          "display_name": null,
          "location": "us-central1",
          "project": "google-mpf-437786488991",
          "service_id": "backend-testsrvc-c29d0cf17634c2dae33ca86144969093",
          "timeouts": null
        },
        "after_unknown": {
          "attributes": [],
          "create_time": true,
          "discovered_service": true,
          "id": true,
          "name": true,
          "service_properties": true,
          "service_reference": true,
          "state": true,
          "uid": true,
          "update_time": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "attributes": [],
          "service_properties": [],
          "service_reference": []
        }
      }
    },
    {
      "address": "module.apphub.google_apphub_service.register_services[\"db-pqsql-c29d0cf17634c2dae33ca86144969093\"]",
      "module_address": "module.apphub",
      "mode": "managed",
      "type": "google_apphub_service",
      "name": "register_services",
      "index": "db-pqsql-c29d0cf17634c2dae33ca86144969093",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "application_id": "threetiertest",
          "attributes": [],
          "description": null,
          "display_name": null,
          "location": "us-central1",
          "project": "google-mpf-437786488991",
          "service_id": "db-pqsql-c29d0cf17634c2dae33ca86144969093",
          "timeouts": null
        },
        "after_unknown": {
          "attributes": [],
          "create_time": true,
          "discovered_service": true,
          "id": true,
          "name": true,
          "service_properties": true,
          "service_reference": true,
          "state": true,
          "uid": true,
          "update_time": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "attributes": [],
          "service_properties": [],
          "service_reference": []
        }
      }
    },
    {
      "address": "module.apphub.google_apphub_service.register_services[\"frontend-testsrvc-c29d0cf17634c2dae33ca86144969093\"]",
      "module_address": "module.apphub",
      "mode": "managed",
      "type": "google_apphub_service",
      "name": "register_services",
      "index": "frontend-testsrvc-c29d0cf17634c2dae33ca86144969093",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "application_id": "threetiertest",
          "attributes": [],
          "description": null,
          "display_name": null,
          "location": "us-central1",
          "project": "google-mpf-437786488991",
          "service_id": "frontend-testsrvc-c29d0cf17634c2dae33ca86144969093",
          "timeouts": null
        },
        "after_unknown": {
          "attributes": [],
          "create_time": true,
          "discovered_service": true,
          "id": true,
          "name": true,
          "service_properties": true,
          "service_reference": true,
          "state": true,
          "uid": true,
          "update_time": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "attributes": [],
          "service_properties": [],
          "service_reference": []
        }
      }
    },
    {
      "address": "module.apphub.google_apphub_service.register_services[\"memstore-redis-tst-c29d0cf17634c2dae33ca86144969093\"]",
      "module_address": "module.apphub",
      "mode": "managed",
      "type": "google_apphub_service",
      "name": "register_services",
      "index": "memstore-redis-tst-c29d0cf17634c2dae33ca86144969093",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "application_id": "threetiertest",
          "attributes": [],
          "description": null,
          "discovered_service": "projects/google-mpf-437786488991/locations/us-central1/discoveredServices/apphub-00000000-0000-0000-e19c-22a9ee6ff518",
          "display_name": null,
          "location": "us-central1",
          "project": "google-mpf-437786488991",
          "service_id": "memstore-redis-tst-c29d0cf17634c2dae33ca86144969093",
          "timeouts": null
        },
        "after_unknown": {
          "attributes": [],
          "create_time": true,
          "id": true,
          "name": true,
          "service_properties": true,
          "service_reference": true,
          "state": true,
          "uid": true,
          "update_time": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "attributes": [],
          "service_properties": [],
          "service_reference": []
        }
      }
    },
    {
      "address": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
      "module_address": "module.backend-service-cloud-run",
      "mode": "managed",
      "type": "google_cloud_run_v2_service",
      "name": "main",
      "provider_name": "registry.terraform.io/hashicorp/google-beta",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "annotations": null,
          "binary_authorization": [],
          "build_config": [],
          "client": null,
          "client_version": null,
          "custom_audiences": null,
          "default_uri_disabled": null,
          "deletion_protection": false,
          "description": null,
          "effective_labels": {
            "goog-adc-tf-deployment": "adc",
            "goog-terraform-provisioned": "true"
          },
          "iap_enabled": null,
          "ingress": "INGRESS_TRAFFIC_ALL",
          "invoker_iam_disabled": null,
          "labels": null,
          "launch_stage": "GA",
          "location": "us-central1",
          "name": "backend-testsrvc",
          "project": "hdcl-457412",
          "scaling": [],
          "template": [
            {
              "annotations": null,
              "containers": [
                {
                  "args": null,
                  "base_image_uri": null,
                  "command": null,
                  "depends_on": null,
                  "env": [
                    {
                      "name": "database_postgresql_CLOUD_SQL_DATABASE_CONNECTION_NAME",
                      "value_source": []
                    },
                    {
                      "name": "database_postgresql_CLOUD_SQL_DATABASE_HOST",
                      "value_source": []
                    },
                    {
                      "name": "database_postgresql_CLOUD_SQL_DATABASE_NAME",
                      "value": "database",
                      "value_source": []
                    },
                    {
                      "name": "memorystore_REDIS_AUTH_STRING",
                      "value": "42904321-b4a6-40f2-a60d-aca3611d7d86",
                      "value_source": []
                    },
                    {
                      "name": "memorystore_REDIS_HOST",
                      "value": "10.230.96.139",
                      "value_source": []
                    },
                    {
                      "name": "memorystore_REDIS_PORT",
                      "value": "6379",
                      "value_source": []
                    }
                  ],
                  "image": "gcr.io/design-center-container-repo/three-tier-app-be:latest-06022025",
                  "liveness_probe": [],
                  "name": "service-container",
                  "ports": [
                    {
                      "container_port": 80,
                      "name": "http1"
                    }
                  ],
                  "resources": [
                    {
                      "cpu_idle": true,
                      "startup_cpu_boost": false
                    }
                  ],
                  "volume_mounts": [],
                  "working_dir": null
                },
                {
                  "args": null,
                  "base_image_uri": null,
                  "command": null,
                  "env": [],
                  "image": "us-docker.pkg.dev/cloud-ops-agents-artifacts/cloud-run-gmp-sidecar/cloud-run-gmp-sidecar:1.1.1",
                  "liveness_probe": [],
                  "name": "collector",
                  "resources": [
                    {
                      "cpu_idle": true,
                      "startup_cpu_boost": false
                    }
                  ],
                  "volume_mounts": [],
                  "working_dir": null
                }
              ],
              "encryption_key": null,
              "execution_environment": "EXECUTION_ENVIRONMENT_GEN2",
              "gpu_zonal_redundancy_disabled": null,
              "labels": null,
              "node_selector": [],
              "revision": null,
              "service_account": "backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
              "service_mesh": [],
              "session_affinity": null,
              "volumes": [],
              "vpc_access": [
                {
                  "connector": null,
                  "egress": "PRIVATE_RANGES_ONLY",
                  "network_interfaces": [
                    {
                      "network": "default",
                      "subnetwork": "default",
                      "tags": null
                    }
                  ]
                }
              ]
            }
          ],
          "terraform_labels": {
            "goog-adc-tf-deployment": "adc",
            "goog-terraform-provisioned": "true"
          },
          "timeouts": null
        },
        "after_unknown": {
          "binary_authorization": [],
          "build_config": [],
          "conditions": true,
          "create_time": true,
          "creator": true,
          "delete_time": true,
          "effective_annotations": true,
          "effective_labels": {},
          "etag": true,
          "expire_time": true,
          "generation": true,
          "id": true,
          "last_modifier": true,
          "latest_created_revision": true,
          "latest_ready_revision": true,
          "observed_generation": true,
          "reconciling": true,
          "scaling": [],
          "template": [
            {
              "containers": [
                {
                  "build_info": true,
                  "env": [
                    {
                      "value": true,
                      "value_source": []
                    },
                    {
                      "value": true,
                      "value_source": []
                    },
                    {
                      "value_source": []
                    },
                    {
                      "value_source": []
                    },
                    {
                      "value_source": []
                    },
                    {
                      "value_source": []
                    }
                  ],
                  "liveness_probe": [],
                  "ports": [
                    {}
                  ],
                  "resources": [
                    {
                      "limits": true
                    }
                  ],
                  "startup_probe": true,
                  "volume_mounts": []
                },
                {
                  "build_info": true,
                  "depends_on": true,
                  "env": [],
                  "liveness_probe": [],
                  "ports": true,
                  "resources": [
                    {
                      "limits": true
                    }
                  ],
                  "startup_probe": true,
                  "volume_mounts": []
                }
              ],
              "max_instance_request_concurrency": true,
              "node_selector": [],
              "scaling": true,
              "service_mesh": [],
              "timeout": true,
              "volumes": [],
              "vpc_access": [
                {
                  "network_interfaces": [
                    {}
                  ]
                }
              ]
            }
          ],
          "terminal_condition": true,
          "terraform_labels": {},
          "traffic": true,
          "traffic_statuses": true,
          "uid": true,
          "update_time": true,
          "uri": true,
          "urls": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "binary_authorization": [],
          "build_config": [],
          "conditions": [],
          "effective_annotations": {},
          "effective_labels": {},
          "scaling": [],
          "template": [
            {
              "containers": [
                {
                  "build_info": [],
                  "env": true,
                  "liveness_probe": [],
                  "ports": [
                    {}
                  ],
                  "resources": [
                    {
                      "limits": {}
                    }
                  ],
                  "startup_probe": [],
                  "volume_mounts": []
                },
                {
                  "build_info": [],
                  "depends_on": [],
                  "env": [],
                  "liveness_probe": [],
                  "ports": [],
                  "resources": [
                    {
                      "limits": {}
                    }
                  ],
                  "startup_probe": [],
                  "volume_mounts": []
                }
              ],
              "node_selector": [],
              "scaling": [],
              "service_mesh": [],
              "volumes": [],
              "vpc_access": [
                {
                  "network_interfaces": [
                    {}
                  ]
                }
              ]
            }
          ],
          "terminal_condition": [],
          "terraform_labels": {},
          "traffic": [],
          "traffic_statuses": [],
          "urls": []
        }
      }
    },
    {
      "address": "module.backend-service-cloud-run.google_cloud_run_v2_service_iam_member.authorize[\"allUsers\"]",
      "module_address": "module.backend-service-cloud-run",
      "mode": "managed",
      "type": "google_cloud_run_v2_service_iam_member",
      "name": "authorize",
      "index": "allUsers",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "condition": [],
          "location": "us-central1",
          "member": "allUsers",
          "name": "backend-testsrvc",
          "project": "hdcl-457412",
          "role": "roles/run.invoker"
        },
        "after_unknown": {
          "condition": [],
          "etag": true,
          "id": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "condition": []
        }
      }
    },
    {
      "address": "module.backend-service-cloud-run.google_project_iam_member.roles[\"roles/cloudsql.client\"]",
      "module_address": "module.backend-service-cloud-run",
      "mode": "managed",
      "type": "google_project_iam_member",
      "name": "roles",
      "index": "roles/cloudsql.client",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "condition": [],
          "etag": "BwYzTj/kA64=",
          "id": "hdcl-457412/roles/cloudsql.client/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "role": "roles/cloudsql.client"
        },
        "after": {
          "condition": [],
          "etag": "BwYzTj/kA64=",
          "id": "hdcl-457412/roles/cloudsql.client/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "role": "roles/cloudsql.client"
        },
        "after_unknown": {},
        "before_sensitive": {
          "condition": []
        },
        "after_sensitive": {
          "condition": []
        }
      }
    },
    {
      "address": "module.backend-service-cloud-run.google_project_iam_member.roles[\"roles/cloudsql.instanceUser\"]",
      "module_address": "module.backend-service-cloud-run",
      "mode": "managed",
      "type": "google_project_iam_member",
      "name": "roles",
      "index": "roles/cloudsql.instanceUser",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "condition": [],
          "etag": "BwYzTj/kA64=",
          "id": "hdcl-457412/roles/cloudsql.instanceUser/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "role": "roles/cloudsql.instanceUser"
        },
        "after": {
          "condition": [],
          "etag": "BwYzTj/kA64=",
          "id": "hdcl-457412/roles/cloudsql.instanceUser/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "role": "roles/cloudsql.instanceUser"
        },
        "after_unknown": {},
        "before_sensitive": {
          "condition": []
        },
        "after_sensitive": {
          "condition": []
        }
      }
    },
    {
      "address": "module.backend-service-cloud-run.google_project_iam_member.roles[\"roles/monitoring.metricWriter\"]",
      "module_address": "module.backend-service-cloud-run",
      "mode": "managed",
      "type": "google_project_iam_member",
      "name": "roles",
      "index": "roles/monitoring.metricWriter",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "condition": [],
          "etag": "BwYzTj/kA64=",
          "id": "hdcl-457412/roles/monitoring.metricWriter/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "role": "roles/monitoring.metricWriter"
        },
        "after": {
          "condition": [],
          "etag": "BwYzTj/kA64=",
          "id": "hdcl-457412/roles/monitoring.metricWriter/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "role": "roles/monitoring.metricWriter"
        },
        "after_unknown": {},
        "before_sensitive": {
          "condition": []
        },
        "after_sensitive": {
          "condition": []
        }
      }
    },
    {
      "address": "module.backend-service-cloud-run.google_project_iam_member.roles[\"roles/redis.editor\"]",
      "module_address": "module.backend-service-cloud-run",
      "mode": "managed",
      "type": "google_project_iam_member",
      "name": "roles",
      "index": "roles/redis.editor",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "condition": [],
          "etag": "BwYzTj/kA64=",
          "id": "hdcl-457412/roles/redis.editor/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "role": "roles/redis.editor"
        },
        "after": {
          "condition": [],
          "etag": "BwYzTj/kA64=",
          "id": "hdcl-457412/roles/redis.editor/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "role": "roles/redis.editor"
        },
        "after_unknown": {},
        "before_sensitive": {
          "condition": []
        },
        "after_sensitive": {
          "condition": []
        }
      }
    },
    {
      "address": "module.backend-service-cloud-run.google_service_account.sa[0]",
      "module_address": "module.backend-service-cloud-run",
      "mode": "managed",
      "type": "google_service_account",
      "name": "sa",
      "index": 0,
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "account_id": "backend-testsrvc-us-central-sa",
          "create_ignore_already_exists": null,
          "description": "",
          "disabled": false,
          "display_name": "Service account for backend-testsrvc in us-central1",
          "email": "backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "id": "projects/hdcl-457412/serviceAccounts/backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "name": "projects/hdcl-457412/serviceAccounts/backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "timeouts": null,
          "unique_id": "108693367962186688347"
        },
        "after": {
          "account_id": "backend-testsrvc-us-central-sa",
          "create_ignore_already_exists": null,
          "description": "",
          "disabled": false,
          "display_name": "Service account for backend-testsrvc in us-central1",
          "email": "backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "id": "projects/hdcl-457412/serviceAccounts/backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "name": "projects/hdcl-457412/serviceAccounts/backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "timeouts": null,
          "unique_id": "108693367962186688347"
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.database-postgresql.google_sql_database.default[0]",
      "module_address": "module.database-postgresql",
      "mode": "managed",
      "type": "google_sql_database",
      "name": "default",
      "index": 0,
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "charset": "",
          "deletion_policy": "ABANDON",
          "instance": "db-pqsql",
          "name": "database",
          "project": "hdcl-457412",
          "timeouts": null
        },
        "after_unknown": {
          "collation": true,
          "id": true,
          "self_link": true
        },
        "before_sensitive": false,
        "after_sensitive": {}
      }
    },
    {
      "address": "module.database-postgresql.google_sql_database_instance.default",
      "module_address": "module.database-postgresql",
      "mode": "managed",
      "type": "google_sql_database_instance",
      "name": "default",
      "provider_name": "registry.terraform.io/hashicorp/google-beta",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "clone": [],
          "database_version": "POSTGRES_16",
          "deletion_protection": false,
          "instance_type": "CLOUD_SQL_INSTANCE",
          "name": "db-pqsql",
          "project": "hdcl-457412",
          "region": "us-central1",
          "restore_backup_context": [],
          "root_password": null,
          "settings": [
            {
              "activation_policy": "ALWAYS",
              "active_directory_config": [],
              "advanced_machine_features": [],
              "availability_type": "REGIONAL",
              "backup_configuration": [
                {
                  "binary_log_enabled": null,
                  "enabled": true,
                  "location": null,
                  "point_in_time_recovery_enabled": true
                }
              ],
              "collation": null,
              "connector_enforcement": "NOT_REQUIRED",
              "data_cache_config": [
                {
                  "data_cache_enabled": true
                }
              ],
              "database_flags": [
                {
                  "name": "cloudsql.iam_authentication",
                  "value": "on"
                }
              ],
              "deletion_protection_enabled": false,
              "deny_maintenance_period": [],
              "disk_autoresize": true,
              "disk_autoresize_limit": 0,
              "disk_size": 10,
              "disk_type": "PD_SSD",
              "edition": "ENTERPRISE_PLUS",
              "enable_dataplex_integration": null,
              "enable_google_ml_integration": false,
              "ip_configuration": [
                {
                  "allocated_ip_range": null,
                  "authorized_networks": [],
                  "enable_private_path_for_google_cloud_services": true,
                  "ipv4_enabled": true,
                  "private_network": google_compute_network.peering_network.id,
                  "psc_config": [],
                  "server_ca_pool": null
                }
              ],
              "location_preference": [
                {
                  "follow_gae_application": null,
                  "secondary_zone": null,
                  "zone": "us-central1-a"
                }
              ],
              "maintenance_window": [
                {
                  "day": 1,
                  "hour": 23,
                  "update_track": "canary"
                }
              ],
              "password_validation_policy": [],
              "pricing_plan": "PER_USE",
              "sql_server_audit_config": [],
              "tier": "db-perf-optimized-N-8",
              "time_zone": null
            }
          ],
          "timeouts": {
            "create": "30m",
            "delete": "30m",
            "update": "30m"
          }
        },
        "after_unknown": {
          "available_maintenance_versions": true,
          "clone": [],
          "connection_name": true,
          "dns_name": true,
          "encryption_key_name": true,
          "first_ip_address": true,
          "id": true,
          "ip_address": true,
          "maintenance_version": true,
          "master_instance_name": true,
          "private_ip_address": true,
          "psc_service_attachment_link": true,
          "public_ip_address": false,
          "replica_configuration": true,
          "replica_names": true,
          "replication_cluster": true,
          "restore_backup_context": [],
          "self_link": true,
          "server_ca_cert": true,
          "service_account_email_address": true,
          "settings": [
            {
              "active_directory_config": [],
              "advanced_machine_features": [],
              "backup_configuration": [
                {
                  "backup_retention_settings": true,
                  "start_time": true,
                  "transaction_log_retention_days": true
                }
              ],
              "data_cache_config": [
                {}
              ],
              "database_flags": [
                {}
              ],
              "deny_maintenance_period": [],
              "insights_config": true,
              "ip_configuration": [
                {
                  "authorized_networks": [],
                  "psc_config": [],
                  "server_ca_mode": true,
                  "ssl_mode": true
                }
              ],
              "location_preference": [
                {}
              ],
              "maintenance_window": [
                {}
              ],
              "password_validation_policy": [],
              "sql_server_audit_config": [],
              "user_labels": true,
              "version": true
            }
          ],
          "timeouts": {}
        },
        "before_sensitive": false,
        "after_sensitive": {
          "available_maintenance_versions": [],
          "clone": [],
          "ip_address": [],
          "replica_configuration": [],
          "replica_names": [],
          "replication_cluster": [],
          "restore_backup_context": [],
          "root_password": true,
          "server_ca_cert": true,
          "settings": [
            {
              "active_directory_config": [],
              "advanced_machine_features": [],
              "backup_configuration": [
                {
                  "backup_retention_settings": []
                }
              ],
              "data_cache_config": [
                {}
              ],
              "database_flags": [
                {}
              ],
              "deny_maintenance_period": [],
              "insights_config": [],
              "ip_configuration": [
                {
                  "authorized_networks": [],
                  "psc_config": []
                }
              ],
              "location_preference": [
                {}
              ],
              "maintenance_window": [
                {}
              ],
              "password_validation_policy": [],
              "sql_server_audit_config": [],
              "user_labels": {}
            }
          ],
          "timeouts": {}
        }
      }
    },
    {
      "address": "module.database-postgresql.google_sql_user.default[0]",
      "module_address": "module.database-postgresql",
      "mode": "managed",
      "type": "google_sql_user",
      "name": "default",
      "index": 0,
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "deletion_policy": "ABANDON",
          "instance": "db-pqsql",
          "name": "default",
          "password_policy": [],
          "password_wo": null,
          "password_wo_version": null,
          "project": "hdcl-457412",
          "timeouts": null,
          "type": null
        },
        "after_unknown": {
          "host": true,
          "id": true,
          "password": true,
          "password_policy": [],
          "sql_server_user_details": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "password": true,
          "password_policy": [],
          "sql_server_user_details": []
        }
      }
    },
    {
      "address": "module.database-postgresql.google_sql_user.iam_account[\"backend-testsrvc-us-central-sa\"]",
      "module_address": "module.database-postgresql",
      "mode": "managed",
      "type": "google_sql_user",
      "name": "iam_account",
      "index": "backend-testsrvc-us-central-sa",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "deletion_policy": "ABANDON",
          "instance": "db-pqsql",
          "name": "backend-testsrvc-us-central-sa@hdcl-457412.iam",
          "password": null,
          "password_policy": [],
          "password_wo": null,
          "password_wo_version": null,
          "project": "hdcl-457412",
          "timeouts": null,
          "type": "CLOUD_IAM_SERVICE_ACCOUNT"
        },
        "after_unknown": {
          "host": true,
          "id": true,
          "password_policy": [],
          "sql_server_user_details": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "password": true,
          "password_policy": [],
          "sql_server_user_details": []
        }
      }
    },
    {
      "address": "module.database-postgresql.null_resource.module_depends_on",
      "module_address": "module.database-postgresql",
      "mode": "managed",
      "type": "null_resource",
      "name": "module_depends_on",
      "provider_name": "registry.terraform.io/hashicorp/null",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "id": "7575780228065869329",
          "triggers": {
            "value": "0"
          }
        },
        "after": {
          "id": "7575780228065869329",
          "triggers": {
            "value": "0"
          }
        },
        "after_unknown": {},
        "before_sensitive": {
          "triggers": {}
        },
        "after_sensitive": {
          "triggers": {}
        }
      }
    },
    {
      "address": "module.database-postgresql.random_password.user-password[0]",
      "module_address": "module.database-postgresql",
      "mode": "managed",
      "type": "random_password",
      "name": "user-password",
      "index": 0,
      "provider_name": "registry.terraform.io/hashicorp/random",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "keepers": {
            "name": "db-pqsql"
          },
          "length": 32,
          "lower": true,
          "min_lower": 1,
          "min_numeric": 1,
          "min_special": 0,
          "min_upper": 1,
          "number": true,
          "numeric": true,
          "override_special": null,
          "special": false,
          "upper": true
        },
        "after_unknown": {
          "bcrypt_hash": true,
          "id": true,
          "keepers": {},
          "result": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "bcrypt_hash": true,
          "keepers": {},
          "result": true
        }
      }
    },
    {
      "address": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
      "module_address": "module.frontend-service-cloud-run",
      "mode": "managed",
      "type": "google_cloud_run_v2_service",
      "name": "main",
      "provider_name": "registry.terraform.io/hashicorp/google-beta",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "annotations": null,
          "binary_authorization": [],
          "build_config": [],
          "client": null,
          "client_version": null,
          "custom_audiences": null,
          "default_uri_disabled": null,
          "deletion_protection": false,
          "description": null,
          "effective_labels": {
            "goog-adc-tf-deployment": "adc",
            "goog-terraform-provisioned": "true"
          },
          "iap_enabled": null,
          "ingress": "INGRESS_TRAFFIC_ALL",
          "invoker_iam_disabled": null,
          "labels": null,
          "launch_stage": "GA",
          "location": "us-central1",
          "name": "frontend-testsrvc",
          "project": "hdcl-457412",
          "scaling": [],
          "template": [
            {
              "annotations": null,
              "containers": [
                {
                  "args": null,
                  "base_image_uri": null,
                  "command": null,
                  "depends_on": null,
                  "env": [
                    {
                      "name": "backend_service_cloud_run_SERVICE_ENDPOINT",
                      "value_source": []
                    }
                  ],
                  "image": "gcr.io/design-center-container-repo/three-tier-app-fe:latest-02012025",
                  "liveness_probe": [],
                  "name": "",
                  "ports": [
                    {
                      "container_port": 80,
                      "name": "http1"
                    }
                  ],
                  "resources": [
                    {
                      "cpu_idle": true,
                      "startup_cpu_boost": false
                    }
                  ],
                  "volume_mounts": [],
                  "working_dir": null
                },
                {
                  "args": null,
                  "base_image_uri": null,
                  "command": null,
                  "env": [],
                  "image": "us-docker.pkg.dev/cloud-ops-agents-artifacts/cloud-run-gmp-sidecar/cloud-run-gmp-sidecar:1.1.1",
                  "liveness_probe": [],
                  "name": "collector",
                  "resources": [
                    {
                      "cpu_idle": true,
                      "startup_cpu_boost": false
                    }
                  ],
                  "volume_mounts": [],
                  "working_dir": null
                }
              ],
              "encryption_key": null,
              "execution_environment": "EXECUTION_ENVIRONMENT_GEN2",
              "gpu_zonal_redundancy_disabled": null,
              "labels": null,
              "node_selector": [],
              "revision": null,
              "service_account": "frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
              "service_mesh": [],
              "session_affinity": null,
              "volumes": [],
              "vpc_access": [
                {
                  "connector": null,
                  "egress": "ALL_TRAFFIC",
                  "network_interfaces": [
                    {
                      "network": "default",
                      "subnetwork": "default",
                      "tags": null
                    }
                  ]
                }
              ]
            }
          ],
          "terraform_labels": {
            "goog-adc-tf-deployment": "adc",
            "goog-terraform-provisioned": "true"
          },
          "timeouts": null
        },
        "after_unknown": {
          "binary_authorization": [],
          "build_config": [],
          "conditions": true,
          "create_time": true,
          "creator": true,
          "delete_time": true,
          "effective_annotations": true,
          "effective_labels": {},
          "etag": true,
          "expire_time": true,
          "generation": true,
          "id": true,
          "last_modifier": true,
          "latest_created_revision": true,
          "latest_ready_revision": true,
          "observed_generation": true,
          "reconciling": true,
          "scaling": [],
          "template": [
            {
              "containers": [
                {
                  "build_info": true,
                  "env": [
                    {
                      "value": true,
                      "value_source": []
                    }
                  ],
                  "liveness_probe": [],
                  "ports": [
                    {}
                  ],
                  "resources": [
                    {
                      "limits": true
                    }
                  ],
                  "startup_probe": true,
                  "volume_mounts": []
                },
                {
                  "build_info": true,
                  "depends_on": true,
                  "env": [],
                  "liveness_probe": [],
                  "ports": true,
                  "resources": [
                    {
                      "limits": true
                    }
                  ],
                  "startup_probe": true,
                  "volume_mounts": []
                }
              ],
              "max_instance_request_concurrency": true,
              "node_selector": [],
              "scaling": true,
              "service_mesh": [],
              "timeout": true,
              "volumes": [],
              "vpc_access": [
                {
                  "network_interfaces": [
                    {}
                  ]
                }
              ]
            }
          ],
          "terminal_condition": true,
          "terraform_labels": {},
          "traffic": true,
          "traffic_statuses": true,
          "uid": true,
          "update_time": true,
          "uri": true,
          "urls": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "binary_authorization": [],
          "build_config": [],
          "conditions": [],
          "effective_annotations": {},
          "effective_labels": {},
          "scaling": [],
          "template": [
            {
              "containers": [
                {
                  "build_info": [],
                  "env": [
                    {
                      "value_source": []
                    }
                  ],
                  "liveness_probe": [],
                  "ports": [
                    {}
                  ],
                  "resources": [
                    {
                      "limits": {}
                    }
                  ],
                  "startup_probe": [],
                  "volume_mounts": []
                },
                {
                  "build_info": [],
                  "depends_on": [],
                  "env": [],
                  "liveness_probe": [],
                  "ports": [],
                  "resources": [
                    {
                      "limits": {}
                    }
                  ],
                  "startup_probe": [],
                  "volume_mounts": []
                }
              ],
              "node_selector": [],
              "scaling": [],
              "service_mesh": [],
              "volumes": [],
              "vpc_access": [
                {
                  "network_interfaces": [
                    {}
                  ]
                }
              ]
            }
          ],
          "terminal_condition": [],
          "terraform_labels": {},
          "traffic": [],
          "traffic_statuses": [],
          "urls": []
        }
      }
    },
    {
      "address": "module.frontend-service-cloud-run.google_cloud_run_v2_service_iam_member.authorize[\"allUsers\"]",
      "module_address": "module.frontend-service-cloud-run",
      "mode": "managed",
      "type": "google_cloud_run_v2_service_iam_member",
      "name": "authorize",
      "index": "allUsers",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "condition": [],
          "location": "us-central1",
          "member": "allUsers",
          "name": "frontend-testsrvc",
          "project": "hdcl-457412",
          "role": "roles/run.invoker"
        },
        "after_unknown": {
          "condition": [],
          "etag": true,
          "id": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "condition": []
        }
      }
    },
    {
      "address": "module.frontend-service-cloud-run.google_project_iam_member.roles[\"roles/monitoring.metricWriter\"]",
      "module_address": "module.frontend-service-cloud-run",
      "mode": "managed",
      "type": "google_project_iam_member",
      "name": "roles",
      "index": "roles/monitoring.metricWriter",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "condition": [],
          "etag": "BwYzTj/kA64=",
          "id": "hdcl-457412/roles/monitoring.metricWriter/serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "role": "roles/monitoring.metricWriter"
        },
        "after": {
          "condition": [],
          "etag": "BwYzTj/kA64=",
          "id": "hdcl-457412/roles/monitoring.metricWriter/serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "role": "roles/monitoring.metricWriter"
        },
        "after_unknown": {},
        "before_sensitive": {
          "condition": []
        },
        "after_sensitive": {
          "condition": []
        }
      }
    },
    {
      "address": "module.frontend-service-cloud-run.google_project_iam_member.roles[\"roles/run.invoker\"]",
      "module_address": "module.frontend-service-cloud-run",
      "mode": "managed",
      "type": "google_project_iam_member",
      "name": "roles",
      "index": "roles/run.invoker",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "condition": [],
          "etag": "BwYzTj/kA64=",
          "id": "hdcl-457412/roles/run.invoker/serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "role": "roles/run.invoker"
        },
        "after": {
          "condition": [],
          "etag": "BwYzTj/kA64=",
          "id": "hdcl-457412/roles/run.invoker/serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "role": "roles/run.invoker"
        },
        "after_unknown": {},
        "before_sensitive": {
          "condition": []
        },
        "after_sensitive": {
          "condition": []
        }
      }
    },
    {
      "address": "module.frontend-service-cloud-run.google_service_account.sa[0]",
      "module_address": "module.frontend-service-cloud-run",
      "mode": "managed",
      "type": "google_service_account",
      "name": "sa",
      "index": 0,
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "account_id": "frontend-testsrvc-us-centra-sa",
          "create_ignore_already_exists": null,
          "description": "",
          "disabled": false,
          "display_name": "Service account for frontend-testsrvc in us-central1",
          "email": "frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "id": "projects/hdcl-457412/serviceAccounts/frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "name": "projects/hdcl-457412/serviceAccounts/frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "timeouts": null,
          "unique_id": "117930405471444033520"
        },
        "after": {
          "account_id": "frontend-testsrvc-us-centra-sa",
          "create_ignore_already_exists": null,
          "description": "",
          "disabled": false,
          "display_name": "Service account for frontend-testsrvc in us-central1",
          "email": "frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "id": "projects/hdcl-457412/serviceAccounts/frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "member": "serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "name": "projects/hdcl-457412/serviceAccounts/frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
          "project": "hdcl-457412",
          "timeouts": null,
          "unique_id": "117930405471444033520"
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.memorystore.google_redis_instance.default",
      "module_address": "module.memorystore",
      "mode": "managed",
      "type": "google_redis_instance",
      "name": "default",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "update"
        ],
        "before": {
          "alternative_location_id": "",
          "auth_enabled": true,
          "auth_string": "42904321-b4a6-40f2-a60d-aca3611d7d86",
          "authorized_network": "projects/hdcl-457412/global/networks/default",
          "connect_mode": "DIRECT_PEERING",
          "create_time": "2025-04-21T18:19:48.048849327Z",
          "current_location_id": "us-central1-a",
          "customer_managed_key": "",
          "display_name": "",
          "effective_labels": {
            "goog-adc-tf-deployment": "adc",
            "goog-ccm": "true",
            "goog-terraform-provisioned": "true"
          },
          "host": "10.230.96.139",
          "id": "projects/hdcl-457412/locations/us-central1/instances/memstore-redis-tst",
          "labels": {
            "goog-ccm": "true"
          },
          "location_id": "us-central1-a",
          "maintenance_policy": [],
          "maintenance_schedule": [],
          "maintenance_version": "20241107_00_00",
          "memory_size_gb": 1,
          "name": "memstore-redis-tst",
          "nodes": [
            {
              "id": "node-0",
              "zone": "us-central1-a"
            }
          ],
          "persistence_config": [
            {
              "persistence_mode": "DISABLED",
              "rdb_next_snapshot_time": "",
              "rdb_snapshot_period": "",
              "rdb_snapshot_start_time": ""
            }
          ],
          "persistence_iam_identity": "serviceAccount:service-107091554857@cloud-redis.iam.gserviceaccount.com",
          "port": 6379,
          "project": "hdcl-457412",
          "read_endpoint": "",
          "read_endpoint_port": 0,
          "read_replicas_mode": "READ_REPLICAS_DISABLED",
          "redis_configs": {},
          "redis_version": "REDIS_6_X",
          "region": "us-central1",
          "replica_count": 0,
          "reserved_ip_range": null,
          "secondary_ip_range": "",
          "server_ca_certs": [],
          "terraform_labels": {
            "goog-adc-tf-deployment": "adc",
            "goog-ccm": "true",
            "goog-terraform-provisioned": "true"
          },
          "tier": "BASIC",
          "timeouts": null,
          "transit_encryption_mode": "DISABLED"
        },
        "after": {
          "alternative_location_id": "",
          "auth_enabled": true,
          "auth_string": "42904321-b4a6-40f2-a60d-aca3611d7d86",
          "authorized_network": "projects/hdcl-457412/global/networks/default",
          "connect_mode": "DIRECT_PEERING",
          "create_time": "2025-04-21T18:19:48.048849327Z",
          "current_location_id": "us-central1-a",
          "customer_managed_key": "",
          "display_name": "",
          "effective_labels": {
            "goog-adc-tf-deployment": "adc",
            "goog-terraform-provisioned": "true"
          },
          "host": "10.230.96.139",
          "id": "projects/hdcl-457412/locations/us-central1/instances/memstore-redis-tst",
          "labels": {},
          "location_id": "us-central1-a",
          "maintenance_policy": [],
          "maintenance_schedule": [],
          "maintenance_version": "20241107_00_00",
          "memory_size_gb": 1,
          "name": "memstore-redis-tst",
          "nodes": [
            {
              "id": "node-0",
              "zone": "us-central1-a"
            }
          ],
          "persistence_config": [
            {
              "persistence_mode": "DISABLED",
              "rdb_next_snapshot_time": "",
              "rdb_snapshot_period": "",
              "rdb_snapshot_start_time": ""
            }
          ],
          "persistence_iam_identity": "serviceAccount:service-107091554857@cloud-redis.iam.gserviceaccount.com",
          "port": 6379,
          "project": "hdcl-457412",
          "read_endpoint": "",
          "read_endpoint_port": 0,
          "read_replicas_mode": "READ_REPLICAS_DISABLED",
          "redis_configs": {},
          "redis_version": "REDIS_6_X",
          "region": "us-central1",
          "replica_count": 0,
          "reserved_ip_range": null,
          "secondary_ip_range": "",
          "server_ca_certs": [],
          "terraform_labels": {
            "goog-adc-tf-deployment": "adc",
            "goog-terraform-provisioned": "true"
          },
          "tier": "BASIC",
          "timeouts": null,
          "transit_encryption_mode": "DISABLED"
        },
        "after_unknown": {},
        "before_sensitive": {
          "auth_string": true,
          "effective_labels": {},
          "labels": {},
          "maintenance_policy": [],
          "maintenance_schedule": [],
          "nodes": [
            {}
          ],
          "persistence_config": [
            {}
          ],
          "redis_configs": {},
          "server_ca_certs": [],
          "terraform_labels": {}
        },
        "after_sensitive": {
          "auth_string": true,
          "effective_labels": {},
          "labels": {},
          "maintenance_policy": [],
          "maintenance_schedule": [],
          "nodes": [
            {}
          ],
          "persistence_config": [
            {}
          ],
          "redis_configs": {},
          "server_ca_certs": [],
          "terraform_labels": {}
        }
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"accesscontextmanager.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "accesscontextmanager.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/accesscontextmanager.googleapis.com",
          "project": "hdcl-457412",
          "service": "accesscontextmanager.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/accesscontextmanager.googleapis.com",
          "project": "hdcl-457412",
          "service": "accesscontextmanager.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"apphub.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "apphub.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/apphub.googleapis.com",
          "project": "hdcl-457412",
          "service": "apphub.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/apphub.googleapis.com",
          "project": "hdcl-457412",
          "service": "apphub.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"cloudbilling.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "cloudbilling.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudbilling.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudbilling.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudbilling.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudbilling.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"cloudkms.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "cloudkms.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudkms.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudkms.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudkms.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudkms.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"cloudresourcemanager.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "cloudresourcemanager.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudresourcemanager.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudresourcemanager.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudresourcemanager.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudresourcemanager.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"cloudscheduler.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "cloudscheduler.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudscheduler.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudscheduler.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudscheduler.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudscheduler.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"compute.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "compute.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/compute.googleapis.com",
          "project": "hdcl-457412",
          "service": "compute.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/compute.googleapis.com",
          "project": "hdcl-457412",
          "service": "compute.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"iam.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "iam.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/iam.googleapis.com",
          "project": "hdcl-457412",
          "service": "iam.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/iam.googleapis.com",
          "project": "hdcl-457412",
          "service": "iam.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"memcache.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "memcache.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/memcache.googleapis.com",
          "project": "hdcl-457412",
          "service": "memcache.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/memcache.googleapis.com",
          "project": "hdcl-457412",
          "service": "memcache.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"memorystore.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "memorystore.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/memorystore.googleapis.com",
          "project": "hdcl-457412",
          "service": "memorystore.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/memorystore.googleapis.com",
          "project": "hdcl-457412",
          "service": "memorystore.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"monitoring.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "monitoring.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/monitoring.googleapis.com",
          "project": "hdcl-457412",
          "service": "monitoring.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/monitoring.googleapis.com",
          "project": "hdcl-457412",
          "service": "monitoring.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"networkconnectivity.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "networkconnectivity.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/networkconnectivity.googleapis.com",
          "project": "hdcl-457412",
          "service": "networkconnectivity.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/networkconnectivity.googleapis.com",
          "project": "hdcl-457412",
          "service": "networkconnectivity.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"redis.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "redis.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/redis.googleapis.com",
          "project": "hdcl-457412",
          "service": "redis.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/redis.googleapis.com",
          "project": "hdcl-457412",
          "service": "redis.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"run.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "run.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/run.googleapis.com",
          "project": "hdcl-457412",
          "service": "run.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/run.googleapis.com",
          "project": "hdcl-457412",
          "service": "run.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"serviceconsumermanagement.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "serviceconsumermanagement.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/serviceconsumermanagement.googleapis.com",
          "project": "hdcl-457412",
          "service": "serviceconsumermanagement.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/serviceconsumermanagement.googleapis.com",
          "project": "hdcl-457412",
          "service": "serviceconsumermanagement.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"servicenetworking.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "servicenetworking.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/servicenetworking.googleapis.com",
          "project": "hdcl-457412",
          "service": "servicenetworking.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/servicenetworking.googleapis.com",
          "project": "hdcl-457412",
          "service": "servicenetworking.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"serviceusage.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "serviceusage.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/serviceusage.googleapis.com",
          "project": "hdcl-457412",
          "service": "serviceusage.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/serviceusage.googleapis.com",
          "project": "hdcl-457412",
          "service": "serviceusage.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"sqladmin.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "sqladmin.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/sqladmin.googleapis.com",
          "project": "hdcl-457412",
          "service": "sqladmin.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/sqladmin.googleapis.com",
          "project": "hdcl-457412",
          "service": "sqladmin.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"storage-api.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "storage-api.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/storage-api.googleapis.com",
          "project": "hdcl-457412",
          "service": "storage-api.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/storage-api.googleapis.com",
          "project": "hdcl-457412",
          "service": "storage-api.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-billing-project.google_project_service.project_services[\"workflows.googleapis.com\"]",
      "module_address": "module.project-services-billing-project",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "workflows.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/workflows.googleapis.com",
          "project": "hdcl-457412",
          "service": "workflows.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/workflows.googleapis.com",
          "project": "hdcl-457412",
          "service": "workflows.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"accesscontextmanager.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "accesscontextmanager.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/accesscontextmanager.googleapis.com",
          "project": "hdcl-457412",
          "service": "accesscontextmanager.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/accesscontextmanager.googleapis.com",
          "project": "hdcl-457412",
          "service": "accesscontextmanager.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"cloudbilling.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "cloudbilling.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudbilling.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudbilling.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudbilling.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudbilling.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"cloudkms.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "cloudkms.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudkms.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudkms.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudkms.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudkms.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"cloudresourcemanager.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "cloudresourcemanager.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudresourcemanager.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudresourcemanager.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudresourcemanager.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudresourcemanager.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"cloudscheduler.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "cloudscheduler.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudscheduler.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudscheduler.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/cloudscheduler.googleapis.com",
          "project": "hdcl-457412",
          "service": "cloudscheduler.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"compute.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "compute.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/compute.googleapis.com",
          "project": "hdcl-457412",
          "service": "compute.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/compute.googleapis.com",
          "project": "hdcl-457412",
          "service": "compute.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"iam.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "iam.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/iam.googleapis.com",
          "project": "hdcl-457412",
          "service": "iam.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/iam.googleapis.com",
          "project": "hdcl-457412",
          "service": "iam.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"memcache.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "memcache.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/memcache.googleapis.com",
          "project": "hdcl-457412",
          "service": "memcache.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/memcache.googleapis.com",
          "project": "hdcl-457412",
          "service": "memcache.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"memorystore.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "memorystore.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/memorystore.googleapis.com",
          "project": "hdcl-457412",
          "service": "memorystore.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/memorystore.googleapis.com",
          "project": "hdcl-457412",
          "service": "memorystore.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"monitoring.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "monitoring.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/monitoring.googleapis.com",
          "project": "hdcl-457412",
          "service": "monitoring.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/monitoring.googleapis.com",
          "project": "hdcl-457412",
          "service": "monitoring.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"networkconnectivity.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "networkconnectivity.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/networkconnectivity.googleapis.com",
          "project": "hdcl-457412",
          "service": "networkconnectivity.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/networkconnectivity.googleapis.com",
          "project": "hdcl-457412",
          "service": "networkconnectivity.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"redis.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "redis.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/redis.googleapis.com",
          "project": "hdcl-457412",
          "service": "redis.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/redis.googleapis.com",
          "project": "hdcl-457412",
          "service": "redis.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"run.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "run.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/run.googleapis.com",
          "project": "hdcl-457412",
          "service": "run.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/run.googleapis.com",
          "project": "hdcl-457412",
          "service": "run.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"serviceconsumermanagement.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "serviceconsumermanagement.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/serviceconsumermanagement.googleapis.com",
          "project": "hdcl-457412",
          "service": "serviceconsumermanagement.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/serviceconsumermanagement.googleapis.com",
          "project": "hdcl-457412",
          "service": "serviceconsumermanagement.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"servicenetworking.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "servicenetworking.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/servicenetworking.googleapis.com",
          "project": "hdcl-457412",
          "service": "servicenetworking.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/servicenetworking.googleapis.com",
          "project": "hdcl-457412",
          "service": "servicenetworking.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"serviceusage.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "serviceusage.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/serviceusage.googleapis.com",
          "project": "hdcl-457412",
          "service": "serviceusage.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/serviceusage.googleapis.com",
          "project": "hdcl-457412",
          "service": "serviceusage.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"sqladmin.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "sqladmin.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/sqladmin.googleapis.com",
          "project": "hdcl-457412",
          "service": "sqladmin.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/sqladmin.googleapis.com",
          "project": "hdcl-457412",
          "service": "sqladmin.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"storage-api.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "storage-api.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/storage-api.googleapis.com",
          "project": "hdcl-457412",
          "service": "storage-api.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/storage-api.googleapis.com",
          "project": "hdcl-457412",
          "service": "storage-api.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"workflows.googleapis.com\"]",
      "module_address": "module.project-services-hdcl-457412",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "workflows.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/workflows.googleapis.com",
          "project": "hdcl-457412",
          "service": "workflows.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": true,
          "disable_on_destroy": false,
          "id": "hdcl-457412/workflows.googleapis.com",
          "project": "hdcl-457412",
          "service": "workflows.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    },
    {
      "address": "module.memorystore.module.enable_apis.google_project_service.project_services[\"redis.googleapis.com\"]",
      "module_address": "module.memorystore.module.enable_apis",
      "mode": "managed",
      "type": "google_project_service",
      "name": "project_services",
      "index": "redis.googleapis.com",
      "provider_name": "registry.terraform.io/hashicorp/google",
      "change": {
        "actions": [
          "no-op"
        ],
        "before": {
          "disable_dependent_services": false,
          "disable_on_destroy": false,
          "id": "hdcl-457412/redis.googleapis.com",
          "project": "hdcl-457412",
          "service": "redis.googleapis.com",
          "timeouts": null
        },
        "after": {
          "disable_dependent_services": false,
          "disable_on_destroy": false,
          "id": "hdcl-457412/redis.googleapis.com",
          "project": "hdcl-457412",
          "service": "redis.googleapis.com",
          "timeouts": null
        },
        "after_unknown": {},
        "before_sensitive": {},
        "after_sensitive": {}
      }
    }
  ],
  "output_changes": {
    "backend-service-cloud-run_service_uri": {
      "actions": [
        "create"
      ],
      "before": null,
      "after_unknown": true,
      "before_sensitive": false,
      "after_sensitive": false
    },
    "frontend-service-cloud-run_service_uri": {
      "actions": [
        "create"
      ],
      "before": null,
      "after_unknown": true,
      "before_sensitive": false,
      "after_sensitive": false
    },
    "memorystore_host": {
      "actions": [
        "no-op"
      ],
      "before": "10.230.96.139",
      "after": "10.230.96.139",
      "after_unknown": false,
      "before_sensitive": false,
      "after_sensitive": false
    },
    "memorystore_port": {
      "actions": [
        "no-op"
      ],
      "before": 6379,
      "after": 6379,
      "after_unknown": false,
      "before_sensitive": false,
      "after_sensitive": false
    }
  },
  "prior_state": {
    "format_version": "1.0",
    "terraform_version": "1.5.7",
    "values": {
      "outputs": {
        "memorystore_host": {
          "sensitive": false,
          "value": "10.230.96.139",
          "type": "string"
        },
        "memorystore_port": {
          "sensitive": false,
          "value": 6379,
          "type": "number"
        }
      },
      "root_module": {
        "child_modules": [
          {
            "resources": [
              {
                "address": "module.apphub.data.google_apphub_discovered_service.services[\"memstore-redis-tst-c29d0cf17634c2dae33ca86144969093\"]",
                "mode": "data",
                "type": "google_apphub_discovered_service",
                "name": "services",
                "index": "memstore-redis-tst-c29d0cf17634c2dae33ca86144969093",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "id": "projects/google-mpf-437786488991/locations/us-central1/discoveredServices/apphub-00000000-0000-0000-e19c-22a9ee6ff518",
                  "location": "us-central1",
                  "name": "projects/google-mpf-437786488991/locations/us-central1/discoveredServices/apphub-00000000-0000-0000-e19c-22a9ee6ff518",
                  "project": "google-mpf-437786488991",
                  "service_properties": [
                    {
                      "gcp_project": "projects/hdcl-457412",
                      "location": "us-central1",
                      "zone": ""
                    }
                  ],
                  "service_reference": [
                    {
                      "path": "",
                      "uri": "//redis.googleapis.com/projects/107091554857/locations/us-central1/instances/memstore-redis-tst"
                    }
                  ],
                  "service_uri": "//redis.googleapis.com/projects/hdcl-457412/locations/us-central1/instances/memstore-redis-tst"
                },
                "sensitive_values": {
                  "service_properties": [
                    {}
                  ],
                  "service_reference": [
                    {}
                  ]
                }
              }
            ],
            "address": "module.apphub"
          },
          {
            "resources": [
              {
                "address": "module.backend-service-cloud-run.google_project_iam_member.roles[\"roles/cloudsql.client\"]",
                "mode": "managed",
                "type": "google_project_iam_member",
                "name": "roles",
                "index": "roles/cloudsql.client",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "condition": [],
                  "etag": "BwYzTj/kA64=",
                  "id": "hdcl-457412/roles/cloudsql.client/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                  "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                  "project": "hdcl-457412",
                  "role": "roles/cloudsql.client"
                },
                "sensitive_values": {
                  "condition": []
                },
                "depends_on": [
                  "module.backend-service-cloud-run.google_service_account.sa",
                  "module.project-services-billing-project.data.google_compute_default_service_account.default",
                  "module.project-services-billing-project.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-billing-project.google_project_service.project_services",
                  "module.project-services-billing-project.google_project_service_identity.project_service_identities",
                  "module.project-services-hdcl-457412.data.google_compute_default_service_account.default",
                  "module.project-services-hdcl-457412.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-hdcl-457412.google_project_service.project_services",
                  "module.project-services-hdcl-457412.google_project_service_identity.project_service_identities"
                ]
              },
              {
                "address": "module.backend-service-cloud-run.google_project_iam_member.roles[\"roles/cloudsql.instanceUser\"]",
                "mode": "managed",
                "type": "google_project_iam_member",
                "name": "roles",
                "index": "roles/cloudsql.instanceUser",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "condition": [],
                  "etag": "BwYzTj/kA64=",
                  "id": "hdcl-457412/roles/cloudsql.instanceUser/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                  "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                  "project": "hdcl-457412",
                  "role": "roles/cloudsql.instanceUser"
                },
                "sensitive_values": {
                  "condition": []
                },
                "depends_on": [
                  "module.backend-service-cloud-run.google_service_account.sa",
                  "module.project-services-billing-project.data.google_compute_default_service_account.default",
                  "module.project-services-billing-project.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-billing-project.google_project_service.project_services",
                  "module.project-services-billing-project.google_project_service_identity.project_service_identities",
                  "module.project-services-hdcl-457412.data.google_compute_default_service_account.default",
                  "module.project-services-hdcl-457412.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-hdcl-457412.google_project_service.project_services",
                  "module.project-services-hdcl-457412.google_project_service_identity.project_service_identities"
                ]
              },
              {
                "address": "module.backend-service-cloud-run.google_project_iam_member.roles[\"roles/monitoring.metricWriter\"]",
                "mode": "managed",
                "type": "google_project_iam_member",
                "name": "roles",
                "index": "roles/monitoring.metricWriter",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "condition": [],
                  "etag": "BwYzTj/kA64=",
                  "id": "hdcl-457412/roles/monitoring.metricWriter/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                  "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                  "project": "hdcl-457412",
                  "role": "roles/monitoring.metricWriter"
                },
                "sensitive_values": {
                  "condition": []
                },
                "depends_on": [
                  "module.backend-service-cloud-run.google_service_account.sa",
                  "module.project-services-billing-project.data.google_compute_default_service_account.default",
                  "module.project-services-billing-project.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-billing-project.google_project_service.project_services",
                  "module.project-services-billing-project.google_project_service_identity.project_service_identities",
                  "module.project-services-hdcl-457412.data.google_compute_default_service_account.default",
                  "module.project-services-hdcl-457412.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-hdcl-457412.google_project_service.project_services",
                  "module.project-services-hdcl-457412.google_project_service_identity.project_service_identities"
                ]
              },
              {
                "address": "module.backend-service-cloud-run.google_project_iam_member.roles[\"roles/redis.editor\"]",
                "mode": "managed",
                "type": "google_project_iam_member",
                "name": "roles",
                "index": "roles/redis.editor",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "condition": [],
                  "etag": "BwYzTj/kA64=",
                  "id": "hdcl-457412/roles/redis.editor/serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                  "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                  "project": "hdcl-457412",
                  "role": "roles/redis.editor"
                },
                "sensitive_values": {
                  "condition": []
                },
                "depends_on": [
                  "module.backend-service-cloud-run.google_service_account.sa",
                  "module.project-services-billing-project.data.google_compute_default_service_account.default",
                  "module.project-services-billing-project.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-billing-project.google_project_service.project_services",
                  "module.project-services-billing-project.google_project_service_identity.project_service_identities",
                  "module.project-services-hdcl-457412.data.google_compute_default_service_account.default",
                  "module.project-services-hdcl-457412.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-hdcl-457412.google_project_service.project_services",
                  "module.project-services-hdcl-457412.google_project_service_identity.project_service_identities"
                ]
              },
              {
                "address": "module.backend-service-cloud-run.google_service_account.sa[0]",
                "mode": "managed",
                "type": "google_service_account",
                "name": "sa",
                "index": 0,
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "account_id": "backend-testsrvc-us-central-sa",
                  "create_ignore_already_exists": null,
                  "description": "",
                  "disabled": false,
                  "display_name": "Service account for backend-testsrvc in us-central1",
                  "email": "backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                  "id": "projects/hdcl-457412/serviceAccounts/backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                  "member": "serviceAccount:backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                  "name": "projects/hdcl-457412/serviceAccounts/backend-testsrvc-us-central-sa@hdcl-457412.iam.gserviceaccount.com",
                  "project": "hdcl-457412",
                  "timeouts": null,
                  "unique_id": "108693367962186688347"
                },
                "sensitive_values": {},
                "depends_on": [
                  "module.project-services-billing-project.data.google_compute_default_service_account.default",
                  "module.project-services-billing-project.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-billing-project.google_project_service.project_services",
                  "module.project-services-billing-project.google_project_service_identity.project_service_identities",
                  "module.project-services-hdcl-457412.data.google_compute_default_service_account.default",
                  "module.project-services-hdcl-457412.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-hdcl-457412.google_project_service.project_services",
                  "module.project-services-hdcl-457412.google_project_service_identity.project_service_identities"
                ]
              }
            ],
            "address": "module.backend-service-cloud-run"
          },
          {
            "resources": [
              {
                "address": "module.database-postgresql.null_resource.module_depends_on",
                "mode": "managed",
                "type": "null_resource",
                "name": "module_depends_on",
                "provider_name": "registry.terraform.io/hashicorp/null",
                "schema_version": 0,
                "values": {
                  "id": "7575780228065869329",
                  "triggers": {
                    "value": "0"
                  }
                },
                "sensitive_values": {
                  "triggers": {}
                },
                "depends_on": [
                  "module.project-services-billing-project.data.google_compute_default_service_account.default",
                  "module.project-services-billing-project.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-billing-project.google_project_service.project_services",
                  "module.project-services-billing-project.google_project_service_identity.project_service_identities",
                  "module.project-services-hdcl-457412.data.google_compute_default_service_account.default",
                  "module.project-services-hdcl-457412.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-hdcl-457412.google_project_service.project_services",
                  "module.project-services-hdcl-457412.google_project_service_identity.project_service_identities"
                ]
              }
            ],
            "address": "module.database-postgresql"
          },
          {
            "resources": [
              {
                "address": "module.frontend-service-cloud-run.google_project_iam_member.roles[\"roles/monitoring.metricWriter\"]",
                "mode": "managed",
                "type": "google_project_iam_member",
                "name": "roles",
                "index": "roles/monitoring.metricWriter",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "condition": [],
                  "etag": "BwYzTj/kA64=",
                  "id": "hdcl-457412/roles/monitoring.metricWriter/serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                  "member": "serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                  "project": "hdcl-457412",
                  "role": "roles/monitoring.metricWriter"
                },
                "sensitive_values": {
                  "condition": []
                },
                "depends_on": [
                  "module.frontend-service-cloud-run.google_service_account.sa",
                  "module.project-services-billing-project.data.google_compute_default_service_account.default",
                  "module.project-services-billing-project.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-billing-project.google_project_service.project_services",
                  "module.project-services-billing-project.google_project_service_identity.project_service_identities",
                  "module.project-services-hdcl-457412.data.google_compute_default_service_account.default",
                  "module.project-services-hdcl-457412.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-hdcl-457412.google_project_service.project_services",
                  "module.project-services-hdcl-457412.google_project_service_identity.project_service_identities"
                ]
              },
              {
                "address": "module.frontend-service-cloud-run.google_project_iam_member.roles[\"roles/run.invoker\"]",
                "mode": "managed",
                "type": "google_project_iam_member",
                "name": "roles",
                "index": "roles/run.invoker",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "condition": [],
                  "etag": "BwYzTj/kA64=",
                  "id": "hdcl-457412/roles/run.invoker/serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                  "member": "serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                  "project": "hdcl-457412",
                  "role": "roles/run.invoker"
                },
                "sensitive_values": {
                  "condition": []
                },
                "depends_on": [
                  "module.frontend-service-cloud-run.google_service_account.sa",
                  "module.project-services-billing-project.data.google_compute_default_service_account.default",
                  "module.project-services-billing-project.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-billing-project.google_project_service.project_services",
                  "module.project-services-billing-project.google_project_service_identity.project_service_identities",
                  "module.project-services-hdcl-457412.data.google_compute_default_service_account.default",
                  "module.project-services-hdcl-457412.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-hdcl-457412.google_project_service.project_services",
                  "module.project-services-hdcl-457412.google_project_service_identity.project_service_identities"
                ]
              },
              {
                "address": "module.frontend-service-cloud-run.google_service_account.sa[0]",
                "mode": "managed",
                "type": "google_service_account",
                "name": "sa",
                "index": 0,
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "account_id": "frontend-testsrvc-us-centra-sa",
                  "create_ignore_already_exists": null,
                  "description": "",
                  "disabled": false,
                  "display_name": "Service account for frontend-testsrvc in us-central1",
                  "email": "frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                  "id": "projects/hdcl-457412/serviceAccounts/frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                  "member": "serviceAccount:frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                  "name": "projects/hdcl-457412/serviceAccounts/frontend-testsrvc-us-centra-sa@hdcl-457412.iam.gserviceaccount.com",
                  "project": "hdcl-457412",
                  "timeouts": null,
                  "unique_id": "117930405471444033520"
                },
                "sensitive_values": {},
                "depends_on": [
                  "module.project-services-billing-project.data.google_compute_default_service_account.default",
                  "module.project-services-billing-project.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-billing-project.google_project_service.project_services",
                  "module.project-services-billing-project.google_project_service_identity.project_service_identities",
                  "module.project-services-hdcl-457412.data.google_compute_default_service_account.default",
                  "module.project-services-hdcl-457412.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-hdcl-457412.google_project_service.project_services",
                  "module.project-services-hdcl-457412.google_project_service_identity.project_service_identities"
                ]
              }
            ],
            "address": "module.frontend-service-cloud-run"
          },
          {
            "resources": [
              {
                "address": "module.memorystore.google_redis_instance.default",
                "mode": "managed",
                "type": "google_redis_instance",
                "name": "default",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "alternative_location_id": "",
                  "auth_enabled": true,
                  "auth_string": "42904321-b4a6-40f2-a60d-aca3611d7d86",
                  "authorized_network": "projects/hdcl-457412/global/networks/default",
                  "connect_mode": "DIRECT_PEERING",
                  "create_time": "2025-04-21T18:19:48.048849327Z",
                  "current_location_id": "us-central1-a",
                  "customer_managed_key": "",
                  "display_name": "",
                  "effective_labels": {
                    "goog-adc-tf-deployment": "adc",
                    "goog-ccm": "true",
                    "goog-terraform-provisioned": "true"
                  },
                  "host": "10.230.96.139",
                  "id": "projects/hdcl-457412/locations/us-central1/instances/memstore-redis-tst",
                  "labels": {
                    "goog-ccm": "true"
                  },
                  "location_id": "us-central1-a",
                  "maintenance_policy": [],
                  "maintenance_schedule": [],
                  "maintenance_version": "20241107_00_00",
                  "memory_size_gb": 1,
                  "name": "memstore-redis-tst",
                  "nodes": [
                    {
                      "id": "node-0",
                      "zone": "us-central1-a"
                    }
                  ],
                  "persistence_config": [
                    {
                      "persistence_mode": "DISABLED",
                      "rdb_next_snapshot_time": "",
                      "rdb_snapshot_period": "",
                      "rdb_snapshot_start_time": ""
                    }
                  ],
                  "persistence_iam_identity": "serviceAccount:service-107091554857@cloud-redis.iam.gserviceaccount.com",
                  "port": 6379,
                  "project": "hdcl-457412",
                  "read_endpoint": "",
                  "read_endpoint_port": 0,
                  "read_replicas_mode": "READ_REPLICAS_DISABLED",
                  "redis_configs": {},
                  "redis_version": "REDIS_6_X",
                  "region": "us-central1",
                  "replica_count": 0,
                  "reserved_ip_range": null,
                  "secondary_ip_range": "",
                  "server_ca_certs": [],
                  "terraform_labels": {
                    "goog-adc-tf-deployment": "adc",
                    "goog-ccm": "true",
                    "goog-terraform-provisioned": "true"
                  },
                  "tier": "BASIC",
                  "timeouts": null,
                  "transit_encryption_mode": "DISABLED"
                },
                "sensitive_values": {
                  "auth_string": true,
                  "effective_labels": {},
                  "labels": {},
                  "maintenance_policy": [],
                  "maintenance_schedule": [],
                  "nodes": [
                    {}
                  ],
                  "persistence_config": [
                    {}
                  ],
                  "redis_configs": {},
                  "server_ca_certs": [],
                  "terraform_labels": {}
                },
                "depends_on": [
                  "module.memorystore.module.enable_apis.data.google_compute_default_service_account.default",
                  "module.memorystore.module.enable_apis.google_project_iam_member.project_service_identity_roles",
                  "module.memorystore.module.enable_apis.google_project_service.project_services",
                  "module.memorystore.module.enable_apis.google_project_service_identity.project_service_identities",
                  "module.project-services-billing-project.data.google_compute_default_service_account.default",
                  "module.project-services-billing-project.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-billing-project.google_project_service.project_services",
                  "module.project-services-billing-project.google_project_service_identity.project_service_identities",
                  "module.project-services-hdcl-457412.data.google_compute_default_service_account.default",
                  "module.project-services-hdcl-457412.google_project_iam_member.project_service_identity_roles",
                  "module.project-services-hdcl-457412.google_project_service.project_services",
                  "module.project-services-hdcl-457412.google_project_service_identity.project_service_identities"
                ]
              }
            ],
            "address": "module.memorystore",
            "child_modules": [
              {
                "resources": [
                  {
                    "address": "module.memorystore.module.enable_apis.google_project_service.project_services[\"redis.googleapis.com\"]",
                    "mode": "managed",
                    "type": "google_project_service",
                    "name": "project_services",
                    "index": "redis.googleapis.com",
                    "provider_name": "registry.terraform.io/hashicorp/google",
                    "schema_version": 0,
                    "values": {
                      "disable_dependent_services": false,
                      "disable_on_destroy": false,
                      "id": "hdcl-457412/redis.googleapis.com",
                      "project": "hdcl-457412",
                      "service": "redis.googleapis.com",
                      "timeouts": null
                    },
                    "sensitive_values": {},
                    "depends_on": [
                      "module.project-services-billing-project.data.google_compute_default_service_account.default",
                      "module.project-services-billing-project.google_project_iam_member.project_service_identity_roles",
                      "module.project-services-billing-project.google_project_service.project_services",
                      "module.project-services-billing-project.google_project_service_identity.project_service_identities",
                      "module.project-services-hdcl-457412.data.google_compute_default_service_account.default",
                      "module.project-services-hdcl-457412.google_project_iam_member.project_service_identity_roles",
                      "module.project-services-hdcl-457412.google_project_service.project_services",
                      "module.project-services-hdcl-457412.google_project_service_identity.project_service_identities"
                    ]
                  }
                ],
                "address": "module.memorystore.module.enable_apis"
              }
            ]
          },
          {
            "resources": [
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"accesscontextmanager.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "accesscontextmanager.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/accesscontextmanager.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "accesscontextmanager.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"apphub.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "apphub.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/apphub.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "apphub.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"cloudbilling.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "cloudbilling.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/cloudbilling.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "cloudbilling.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"cloudkms.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "cloudkms.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/cloudkms.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "cloudkms.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"cloudresourcemanager.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "cloudresourcemanager.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/cloudresourcemanager.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "cloudresourcemanager.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"cloudscheduler.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "cloudscheduler.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/cloudscheduler.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "cloudscheduler.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"compute.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "compute.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/compute.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "compute.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"iam.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "iam.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/iam.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "iam.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"memcache.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "memcache.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/memcache.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "memcache.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"memorystore.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "memorystore.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/memorystore.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "memorystore.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"monitoring.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "monitoring.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/monitoring.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "monitoring.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"networkconnectivity.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "networkconnectivity.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/networkconnectivity.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "networkconnectivity.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"redis.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "redis.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/redis.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "redis.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"run.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "run.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/run.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "run.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"serviceconsumermanagement.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "serviceconsumermanagement.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/serviceconsumermanagement.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "serviceconsumermanagement.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"servicenetworking.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "servicenetworking.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/servicenetworking.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "servicenetworking.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"serviceusage.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "serviceusage.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/serviceusage.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "serviceusage.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"sqladmin.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "sqladmin.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/sqladmin.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "sqladmin.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"storage-api.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "storage-api.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/storage-api.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "storage-api.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-billing-project.google_project_service.project_services[\"workflows.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "workflows.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/workflows.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "workflows.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              }
            ],
            "address": "module.project-services-billing-project"
          },
          {
            "resources": [
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"accesscontextmanager.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "accesscontextmanager.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/accesscontextmanager.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "accesscontextmanager.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"cloudbilling.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "cloudbilling.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/cloudbilling.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "cloudbilling.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"cloudkms.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "cloudkms.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/cloudkms.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "cloudkms.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"cloudresourcemanager.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "cloudresourcemanager.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/cloudresourcemanager.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "cloudresourcemanager.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"cloudscheduler.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "cloudscheduler.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/cloudscheduler.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "cloudscheduler.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"compute.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "compute.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/compute.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "compute.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"iam.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "iam.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/iam.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "iam.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"memcache.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "memcache.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/memcache.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "memcache.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"memorystore.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "memorystore.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/memorystore.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "memorystore.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"monitoring.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "monitoring.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/monitoring.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "monitoring.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"networkconnectivity.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "networkconnectivity.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/networkconnectivity.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "networkconnectivity.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"redis.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "redis.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/redis.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "redis.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"run.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "run.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/run.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "run.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"serviceconsumermanagement.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "serviceconsumermanagement.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/serviceconsumermanagement.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "serviceconsumermanagement.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"servicenetworking.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "servicenetworking.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/servicenetworking.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "servicenetworking.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"serviceusage.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "serviceusage.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/serviceusage.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "serviceusage.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"sqladmin.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "sqladmin.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/sqladmin.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "sqladmin.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"storage-api.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "storage-api.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/storage-api.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "storage-api.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              },
              {
                "address": "module.project-services-hdcl-457412.google_project_service.project_services[\"workflows.googleapis.com\"]",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "index": "workflows.googleapis.com",
                "provider_name": "registry.terraform.io/hashicorp/google",
                "schema_version": 0,
                "values": {
                  "disable_dependent_services": true,
                  "disable_on_destroy": false,
                  "id": "hdcl-457412/workflows.googleapis.com",
                  "project": "hdcl-457412",
                  "service": "workflows.googleapis.com",
                  "timeouts": null
                },
                "sensitive_values": {}
              }
            ],
            "address": "module.project-services-hdcl-457412"
          }
        ]
      }
    }
  },
  "configuration": {
    "provider_config": {
      "google": {
        "name": "google",
        "full_name": "registry.terraform.io/hashicorp/google",
        "expressions": {
          "billing_project": {
            "constant_value": "hdcl-457412"
          },
          "default_labels": {
            "constant_value": {
              "goog-adc-tf-deployment": "adc"
            }
          },
          "user_project_override": {
            "constant_value": true
          }
        }
      },
      "google-beta": {
        "name": "google-beta",
        "full_name": "registry.terraform.io/hashicorp/google-beta",
        "expressions": {
          "billing_project": {
            "constant_value": "hdcl-457412"
          },
          "default_labels": {
            "constant_value": {
              "goog-adc-tf-deployment": "adc"
            }
          },
          "user_project_override": {
            "constant_value": true
          }
        }
      },
      "module.database-postgresql:null": {
        "name": "null",
        "full_name": "registry.terraform.io/hashicorp/null",
        "version_constraint": "~> 3.1",
        "module_address": "module.database-postgresql"
      },
      "module.database-postgresql:random": {
        "name": "random",
        "full_name": "registry.terraform.io/hashicorp/random",
        "version_constraint": "~> 3.1",
        "module_address": "module.database-postgresql"
      },
      "module.memorystore.module.enable_apis:google-beta": {
        "name": "google-beta",
        "full_name": "registry.terraform.io/hashicorp/google-beta",
        "version_constraint": ">= 3.43.0, < 7.0.0",
        "module_address": "module.memorystore.module.enable_apis"
      }
    },
    "root_module": {
      "outputs": {
        "backend-service-cloud-run_service_uri": {
          "expression": {
            "references": [
              "module.backend-service-cloud-run.service_uri",
              "module.backend-service-cloud-run"
            ]
          },
          "description": "The main URI in which this Service is serving traffic."
        },
        "frontend-service-cloud-run_service_uri": {
          "expression": {
            "references": [
              "module.frontend-service-cloud-run.service_uri",
              "module.frontend-service-cloud-run"
            ]
          },
          "description": "The main URI in which this Service is serving traffic."
        },
        "memorystore_host": {
          "expression": {
            "references": [
              "module.memorystore.host",
              "module.memorystore"
            ]
          },
          "description": "The IP address of the instance."
        },
        "memorystore_port": {
          "expression": {
            "references": [
              "module.memorystore.port",
              "module.memorystore"
            ]
          },
          "description": "The port number of the exposed Redis endpoint."
        }
      },
      "module_calls": {
        "apphub": {
          "source": "github.com/GoogleCloudPlatform/terraform-google-apphub?ref=v0.3.0",
          "expressions": {
            "application_id": {
              "constant_value": "threetiertest"
            },
            "location": {
              "constant_value": "us-central1"
            },
            "project_id": {
              "constant_value": "google-mpf-437786488991"
            },
            "service_uris": {
              "references": [
                "module.frontend-service-cloud-run.apphub_service_uri",
                "module.frontend-service-cloud-run",
                "module.backend-service-cloud-run.apphub_service_uri",
                "module.backend-service-cloud-run",
                "module.database-postgresql.apphub_service_uri",
                "module.database-postgresql",
                "module.memorystore.apphub_service_uri",
                "module.memorystore"
              ]
            }
          },
          "module": {
            "outputs": {
              "application_id": {
                "expression": {
                  "references": [
                    "var.create_application",
                    "google_apphub_application.apphub_application[0].id",
                    "google_apphub_application.apphub_application[0]",
                    "google_apphub_application.apphub_application"
                  ]
                },
                "description": "The apphub application id in format projects/{{project}}/locations/{{location}}/applications/{{application_id}}"
              },
              "service_ids": {
                "expression": {
                  "references": [
                    "google_apphub_service.register_services"
                  ]
                },
                "description": "The list of service ids registered with application."
              },
              "workload_ids": {
                "expression": {
                  "references": [
                    "google_apphub_workload.register_workloads"
                  ]
                },
                "description": "The list of workload ids registered with application."
              }
            },
            "resources": [
              {
                "address": "google_apphub_application.apphub_application",
                "mode": "managed",
                "type": "google_apphub_application",
                "name": "apphub_application",
                "provider_config_key": "google",
                "expressions": {
                  "application_id": {
                    "references": [
                      "var.application_id"
                    ]
                  },
                  "description": {
                    "references": [
                      "var.description"
                    ]
                  },
                  "display_name": {
                    "references": [
                      "var.display_name"
                    ]
                  },
                  "location": {
                    "references": [
                      "var.location"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "scope": [
                    {
                      "type": {
                        "references": [
                          "var.scope.type",
                          "var.scope"
                        ]
                      }
                    }
                  ]
                },
                "schema_version": 0,
                "count_expression": {
                  "references": [
                    "var.create_application"
                  ]
                }
              },
              {
                "address": "google_apphub_service.register_services",
                "mode": "managed",
                "type": "google_apphub_service",
                "name": "register_services",
                "provider_config_key": "google",
                "expressions": {
                  "application_id": {
                    "references": [
                      "var.application_id"
                    ]
                  },
                  "discovered_service": {
                    "references": [
                      "data.google_apphub_discovered_service.services",
                      "each.value.service_id",
                      "each.value"
                    ]
                  },
                  "location": {
                    "references": [
                      "var.location"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "service_id": {
                    "references": [
                      "each.value.service_id",
                      "each.value"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "var.service_uris"
                  ]
                }
              },
              {
                "address": "google_apphub_service_project_attachment.attach_service_project",
                "mode": "managed",
                "type": "google_apphub_service_project_attachment",
                "name": "attach_service_project",
                "provider_config_key": "google",
                "expressions": {
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "service_project_attachment_id": {
                    "references": [
                      "each.value"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "var.service_project_ids"
                  ]
                }
              },
              {
                "address": "google_apphub_workload.register_workloads",
                "mode": "managed",
                "type": "google_apphub_workload",
                "name": "register_workloads",
                "provider_config_key": "google",
                "expressions": {
                  "application_id": {
                    "references": [
                      "var.application_id"
                    ]
                  },
                  "discovered_workload": {
                    "references": [
                      "data.google_apphub_discovered_workload.workloads",
                      "each.value.workload_id",
                      "each.value"
                    ]
                  },
                  "location": {
                    "references": [
                      "var.location"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "workload_id": {
                    "references": [
                      "each.value.workload_id",
                      "each.value"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "var.workload_uris"
                  ]
                }
              },
              {
                "address": "data.google_apphub_discovered_service.services",
                "mode": "data",
                "type": "google_apphub_discovered_service",
                "name": "services",
                "provider_config_key": "google",
                "expressions": {
                  "location": {
                    "references": [
                      "each.value.location",
                      "each.value"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "service_uri": {
                    "references": [
                      "each.value.service_uri",
                      "each.value"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "var.service_uris"
                  ]
                },
                "depends_on": [
                  "google_apphub_service_project_attachment.attach_service_project"
                ]
              },
              {
                "address": "data.google_apphub_discovered_workload.workloads",
                "mode": "data",
                "type": "google_apphub_discovered_workload",
                "name": "workloads",
                "provider_config_key": "google",
                "expressions": {
                  "location": {
                    "references": [
                      "each.value.location",
                      "each.value"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "workload_uri": {
                    "references": [
                      "each.value.workload_uri",
                      "each.value"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "var.workload_uris"
                  ]
                },
                "depends_on": [
                  "google_apphub_service_project_attachment.attach_service_project"
                ]
              }
            ],
            "variables": {
              "application_id": {
                "description": "The AppHub application identifier"
              },
              "attributes": {
                "default": null,
                "description": "Attributes for the AppHub application"
              },
              "create_application": {
                "default": false,
                "description": "Create apphub application when true"
              },
              "description": {
                "default": "",
                "description": "User-defined description of AppHub application"
              },
              "display_name": {
                "default": "",
                "description": "User-defined name for the AppHub application"
              },
              "location": {
                "description": "The location of AppHub application."
              },
              "project_id": {
                "description": "The project ID of the host project where AppHub application is created."
              },
              "scope": {
                "default": {
                  "type": "REGIONAL"
                },
                "description": "Scope of the AppHub application. Possible values are: REGIONAL, GLOBAL."
              },
              "service_project_ids": {
                "default": [],
                "description": "The list of service projects to attach with host project."
              },
              "service_uris": {
                "default": [],
                "description": "The list of service uris in CAIS style to register"
              },
              "workload_uris": {
                "default": [],
                "description": "The list of workload uris in CAIS style to register"
              }
            }
          }
        },
        "backend-service-cloud-run": {
          "source": "github.com/GoogleCloudPlatform/terraform-google-cloud-run//modules/v2?ref=v0.17.2",
          "expressions": {
            "cloud_run_deletion_protection": {
              "constant_value": false
            },
            "containers": {
              "references": [
                "module.database-postgresql.instance_first_ip_address",
                "module.database-postgresql",
                "module.database-postgresql.env_vars.CLOUD_SQL_DATABASE_NAME",
                "module.database-postgresql.env_vars",
                "module.database-postgresql",
                "module.database-postgresql.instance_connection_name",
                "module.database-postgresql",
                "module.memorystore.auth_string",
                "module.memorystore",
                "module.memorystore.host",
                "module.memorystore",
                "module.memorystore.env_vars.REDIS_PORT",
                "module.memorystore.env_vars",
                "module.memorystore"
              ]
            },
            "enable_prometheus_sidecar": {
              "constant_value": true
            },
            "location": {
              "constant_value": "us-central1"
            },
            "members": {
              "constant_value": [
                "allUsers"
              ]
            },
            "project_id": {
              "constant_value": "hdcl-457412"
            },
            "service_account_project_roles": {},
            "service_name": {
              "constant_value": "backend-testsrvc"
            },
            "vpc_access": {
              "constant_value": {
                "egress": "PRIVATE_RANGES_ONLY",
                "network_interfaces": {
                  "network": "default",
                  "subnetwork": "default"
                }
              }
            }
          },
          "module": {
            "outputs": {
              "apphub_service_uri": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.id",
                    "google_cloud_run_v2_service.main",
                    "var.service_name",
                    "var.location",
                    "var.project_id",
                    "var.location"
                  ]
                },
                "description": "Service URI in CAIS style to be used by Apphub."
              },
              "creator": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.creator",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Email address of the authenticated creator."
              },
              "effective_annotations": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.effective_annotations",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services."
              },
              "last_modifier": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.last_modifier",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Email address of the last authenticated modifier."
              },
              "latest_created_revision": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.latest_created_revision",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Name of the last created revision. See comments in reconciling for additional information on reconciliation process in Cloud Run."
              },
              "latest_ready_revision": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.latest_ready_revision",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Name of the latest revision that is serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run."
              },
              "location": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.location",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Location in which the Cloud Run service was created"
              },
              "observed_generation": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.observed_generation",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "The generation of this Service currently serving traffic."
              },
              "project_id": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.project",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Google Cloud project in which the service was created"
              },
              "service_account_id": {
                "expression": {
                  "references": [
                    "local.service_account_output"
                  ]
                },
                "description": "Service account id and email"
              },
              "service_id": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.id",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Unique Identifier for the created service with format projects/{{project}}/locations/{{location}}/services/{{name}}"
              },
              "service_name": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.name",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Name of the created service"
              },
              "service_uri": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.uri",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "The main URI in which this Service is serving traffic."
              },
              "traffic_statuses": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.traffic_statuses",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Detailed status information for corresponding traffic targets."
              }
            },
            "resources": [
              {
                "address": "google_cloud_run_v2_service.main",
                "mode": "managed",
                "type": "google_cloud_run_v2_service",
                "name": "main",
                "provider_config_key": "google-beta",
                "expressions": {
                  "annotations": {
                    "references": [
                      "var.service_annotations"
                    ]
                  },
                  "client": {
                    "references": [
                      "var.client.name",
                      "var.client"
                    ]
                  },
                  "client_version": {
                    "references": [
                      "var.client.version",
                      "var.client"
                    ]
                  },
                  "custom_audiences": {
                    "references": [
                      "var.custom_audiences"
                    ]
                  },
                  "deletion_protection": {
                    "references": [
                      "var.cloud_run_deletion_protection"
                    ]
                  },
                  "description": {
                    "references": [
                      "var.description"
                    ]
                  },
                  "ingress": {
                    "references": [
                      "var.ingress"
                    ]
                  },
                  "labels": {
                    "references": [
                      "var.service_labels"
                    ]
                  },
                  "launch_stage": {
                    "references": [
                      "var.launch_stage"
                    ]
                  },
                  "location": {
                    "references": [
                      "var.location"
                    ]
                  },
                  "name": {
                    "references": [
                      "var.service_name"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "template": [
                    {
                      "annotations": {
                        "references": [
                          "var.template_annotations"
                        ]
                      },
                      "encryption_key": {
                        "references": [
                          "var.encryption_key"
                        ]
                      },
                      "execution_environment": {
                        "references": [
                          "var.execution_environment"
                        ]
                      },
                      "labels": {
                        "references": [
                          "var.template_labels"
                        ]
                      },
                      "max_instance_request_concurrency": {
                        "references": [
                          "var.max_instance_request_concurrency"
                        ]
                      },
                      "revision": {
                        "references": [
                          "var.revision"
                        ]
                      },
                      "service_account": {
                        "references": [
                          "local.service_account"
                        ]
                      },
                      "session_affinity": {
                        "references": [
                          "var.session_affinity"
                        ]
                      },
                      "timeout": {
                        "references": [
                          "var.timeout"
                        ]
                      }
                    }
                  ]
                },
                "schema_version": 0,
                "depends_on": [
                  "google_project_iam_member.roles"
                ]
              },
              {
                "address": "google_cloud_run_v2_service_iam_member.authorize",
                "mode": "managed",
                "type": "google_cloud_run_v2_service_iam_member",
                "name": "authorize",
                "provider_config_key": "google",
                "expressions": {
                  "location": {
                    "references": [
                      "google_cloud_run_v2_service.main.location",
                      "google_cloud_run_v2_service.main"
                    ]
                  },
                  "member": {
                    "references": [
                      "each.value"
                    ]
                  },
                  "name": {
                    "references": [
                      "google_cloud_run_v2_service.main.name",
                      "google_cloud_run_v2_service.main"
                    ]
                  },
                  "project": {
                    "references": [
                      "google_cloud_run_v2_service.main.project",
                      "google_cloud_run_v2_service.main"
                    ]
                  },
                  "role": {
                    "constant_value": "roles/run.invoker"
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "var.members"
                  ]
                }
              },
              {
                "address": "google_project_iam_member.roles",
                "mode": "managed",
                "type": "google_project_iam_member",
                "name": "roles",
                "provider_config_key": "google",
                "expressions": {
                  "member": {
                    "references": [
                      "local.service_account"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "role": {
                    "references": [
                      "each.value"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "local.service_account_project_roles"
                  ]
                }
              },
              {
                "address": "google_service_account.sa",
                "mode": "managed",
                "type": "google_service_account",
                "name": "sa",
                "provider_config_key": "google",
                "expressions": {
                  "account_id": {
                    "references": [
                      "local.service_account_prefix"
                    ]
                  },
                  "display_name": {
                    "references": [
                      "var.service_name",
                      "var.location"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  }
                },
                "schema_version": 0,
                "count_expression": {
                  "references": [
                    "local.create_service_account"
                  ]
                }
              },
              {
                "address": "data.google_service_account.existing_sa",
                "mode": "data",
                "type": "google_service_account",
                "name": "existing_sa",
                "provider_config_key": "google",
                "expressions": {
                  "account_id": {
                    "references": [
                      "google_cloud_run_v2_service.main.template[0].service_account",
                      "google_cloud_run_v2_service.main.template[0]",
                      "google_cloud_run_v2_service.main.template",
                      "google_cloud_run_v2_service.main"
                    ]
                  }
                },
                "schema_version": 0,
                "count_expression": {
                  "references": [
                    "local.create_service_account"
                  ]
                }
              }
            ],
            "variables": {
              "binary_authorization": {
                "default": null,
                "description": "Settings for the Binary Authorization feature."
              },
              "client": {
                "default": {
                  "name": null,
                  "version": null
                },
                "description": "Arbitrary identifier for the API client and version identifier"
              },
              "cloud_run_deletion_protection": {
                "default": true,
                "description": "This field prevents Terraform from destroying or recreating the Cloud Run v2 Jobs and Services"
              },
              "containers": {
                "description": "Map of container images for the service"
              },
              "create_service_account": {
                "default": true,
                "description": "Create a new service account for cloud run service"
              },
              "custom_audiences": {
                "default": null,
                "description": "One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. Refer https://cloud.google.com/run/docs/configuring/custom-audiences"
              },
              "description": {
                "default": null,
                "description": "Cloud Run service description. This field currently has a 512-character limit."
              },
              "enable_prometheus_sidecar": {
                "default": false,
                "description": "Enable Prometheus sidecar in Cloud Run instance."
              },
              "encryption_key": {
                "default": null,
                "description": "A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. This is optional."
              },
              "execution_environment": {
                "default": "EXECUTION_ENVIRONMENT_GEN2",
                "description": "The sandbox environment to host this Revision."
              },
              "ingress": {
                "default": "INGRESS_TRAFFIC_ALL",
                "description": "Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active."
              },
              "launch_stage": {
                "default": "GA",
                "description": "The launch stage as defined by Google Cloud Platform Launch Stages. Cloud Run supports ALPHA, BETA, and GA. If no value is specified, GA is assumed."
              },
              "location": {
                "description": "Cloud Run service deployment location"
              },
              "max_instance_request_concurrency": {
                "default": null,
                "description": "Sets the maximum number of requests that each serving instance can receive. This is optional."
              },
              "members": {
                "default": [],
                "description": "Users/SAs to be given invoker access to the service. Grant invoker access by specifying the users or service accounts (SAs). Use allUsers for public access, allAuthenticatedUsers for access by logged-in Google users, or provide a list of specific users/SAs. See the complete list of available options: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_v2_service_iam#member\\/members-1"
              },
              "project_id": {
                "description": "The project ID to deploy to"
              },
              "revision": {
                "default": null,
                "description": "The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name"
              },
              "service_account": {
                "default": null,
                "description": "Email address of the IAM service account associated with the revision of the service"
              },
              "service_account_project_roles": {
                "default": [],
                "description": "Roles to grant to the newly created cloud run SA in specified project. Should be used with create_service_account set to true and no input for service_account"
              },
              "service_annotations": {
                "default": {},
                "description": "Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Refer https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_v2_service#annotations"
              },
              "service_labels": {
                "default": {},
                "description": "Unstructured key value map that can be used to organize and categorize objects. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels"
              },
              "service_name": {
                "description": "The name of the Cloud Run service to create"
              },
              "service_scaling": {
                "default": null,
                "description": "Scaling settings that apply to the whole service"
              },
              "session_affinity": {
                "default": null,
                "description": "Enables session affinity. For more information, go to https://cloud.google.com/run/docs/configuring/session-affinity"
              },
              "template_annotations": {
                "default": {},
                "description": "Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Refer https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_v2_service#annotations"
              },
              "template_labels": {
                "default": {},
                "description": "Unstructured key value map that can be used to organize and categorize objects. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels"
              },
              "template_scaling": {
                "default": null,
                "description": "Scaling settings for this Revision."
              },
              "timeout": {
                "default": null,
                "description": "Max allowed time for an instance to respond to a request. A duration in seconds with up to nine fractional digits, ending with 's'"
              },
              "traffic": {
                "default": [],
                "description": "Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision."
              },
              "volumes": {
                "default": [],
                "description": "Volumes needed for environment variables (when using secret)"
              },
              "vpc_access": {
                "default": null,
                "description": "VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc"
              }
            }
          },
          "depends_on": [
            "module.project-services-hdcl-457412",
            "module.project-services-billing-project"
          ]
        },
        "database-postgresql": {
          "source": "github.com/terraform-google-modules/terraform-google-sql-db//modules/postgresql?ref=v25.2.2",
          "expressions": {
            "availability_type": {
              "constant_value": "REGIONAL"
            },
            "backup_configuration": {
              "constant_value": {
                "enabled": true,
                "point_in_time_recovery_enabled": true
              }
            },
            "data_cache_enabled": {
              "constant_value": true
            },
            "database_deletion_policy": {
              "constant_value": "ABANDON"
            },
            "database_flags": {
              "constant_value": [
                {
                  "name": "cloudsql.iam_authentication",
                  "value": "on"
                }
              ]
            },
            "database_version": {
              "constant_value": "POSTGRES_16"
            },
            "db_name": {
              "constant_value": "database"
            },
            "deletion_protection": {
              "constant_value": false
            },
            "deletion_protection_enabled": {
              "constant_value": false
            },
            "disk_autoresize": {
              "constant_value": true
            },
            "edition": {
              "constant_value": "ENTERPRISE_PLUS"
            },
            "iam_users": {
              "references": [
                "module.backend-service-cloud-run.service_account_id.email",
                "module.backend-service-cloud-run.service_account_id",
                "module.backend-service-cloud-run",
                "module.backend-service-cloud-run.service_account_id.id",
                "module.backend-service-cloud-run.service_account_id",
                "module.backend-service-cloud-run"
              ]
            },
            "ip_configuration": {
              "constant_value": {
                "enable_private_path_for_google_cloud_services": true,
                "ipv4_enabled": true,
                "private_network": google_compute_network.peering_network.id,
                "psc_enabled": false
              }
            },
            "name": {
              "constant_value": "db-pqsql"
            },
            "project_id": {
              "constant_value": "hdcl-457412"
            },
            "region": {
              "constant_value": "us-central1"
            },
            "tier": {
              "constant_value": "db-perf-optimized-N-8"
            },
            "user_deletion_policy": {
              "constant_value": "ABANDON"
            },
            "zone": {
              "constant_value": "us-central1-a"
            }
          },
          "module": {
            "outputs": {
              "additional_users": {
                "sensitive": true,
                "expression": {
                  "references": [
                    "google_sql_user.additional_users"
                  ]
                },
                "description": "List of maps of additional users and passwords"
              },
              "apphub_service_uri": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.default.self_link",
                    "google_sql_database_instance.default",
                    "var.name",
                    "var.region",
                    "var.project_id",
                    "var.region"
                  ]
                },
                "description": "Service URI in CAIS style to be used by Apphub."
              },
              "dns_name": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.default.dns_name",
                    "google_sql_database_instance.default"
                  ]
                },
                "description": "DNS name of the instance endpoint"
              },
              "env_vars": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.default.first_ip_address",
                    "google_sql_database_instance.default",
                    "google_sql_database_instance.default.connection_name",
                    "google_sql_database_instance.default",
                    "local.database_name"
                  ]
                },
                "description": "Exported environment variables"
              },
              "generated_user_password": {
                "sensitive": true,
                "expression": {
                  "references": [
                    "var.enable_default_user",
                    "random_password.user-password[0].result",
                    "random_password.user-password[0]",
                    "random_password.user-password"
                  ]
                },
                "description": "The auto generated default user password if not input password was provided"
              },
              "iam_users": {
                "expression": {
                  "references": [
                    "var.iam_users"
                  ]
                },
                "description": "The list of the IAM users with access to the CloudSQL instance"
              },
              "instance_connection_name": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.default.connection_name",
                    "google_sql_database_instance.default"
                  ]
                },
                "description": "The connection name of the master instance to be used in connection strings"
              },
              "instance_first_ip_address": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.default.first_ip_address",
                    "google_sql_database_instance.default"
                  ]
                },
                "description": "The first IPv4 address of the addresses assigned."
              },
              "instance_ip_address": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.default.ip_address",
                    "google_sql_database_instance.default"
                  ]
                },
                "description": "The IPv4 address assigned for the master instance"
              },
              "instance_name": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.default.name",
                    "google_sql_database_instance.default"
                  ]
                },
                "description": "The instance name for the master instance"
              },
              "instance_psc_attachment": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.default.psc_service_attachment_link",
                    "google_sql_database_instance.default"
                  ]
                },
                "description": "The psc_service_attachment_link created for the master instance"
              },
              "instance_self_link": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.default.self_link",
                    "google_sql_database_instance.default"
                  ]
                },
                "description": "The URI of the master instance"
              },
              "instance_server_ca_cert": {
                "sensitive": true,
                "expression": {
                  "references": [
                    "google_sql_database_instance.default.server_ca_cert",
                    "google_sql_database_instance.default"
                  ]
                },
                "description": "The CA certificate information used to connect to the SQL instance via SSL"
              },
              "instance_service_account_email_address": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.default.service_account_email_address",
                    "google_sql_database_instance.default"
                  ]
                },
                "description": "The service account email address assigned to the master instance"
              },
              "instances": {
                "sensitive": true,
                "expression": {
                  "references": [
                    "google_sql_database_instance.default",
                    "google_sql_database_instance.replicas"
                  ]
                },
                "description": "A list of all `google_sql_database_instance` resources we've created"
              },
              "primary": {
                "sensitive": true,
                "expression": {
                  "references": [
                    "google_sql_database_instance.default"
                  ]
                },
                "description": "The `google_sql_database_instance` resource representing the primary instance"
              },
              "private_ip_address": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.default.private_ip_address",
                    "google_sql_database_instance.default"
                  ]
                },
                "description": "The first private (PRIVATE) IPv4 address assigned for the master instance"
              },
              "public_ip_address": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.default.public_ip_address",
                    "google_sql_database_instance.default"
                  ]
                },
                "description": "The first public (PRIMARY) IPv4 address assigned for the master instance"
              },
              "read_replica_instance_names": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.replicas"
                  ]
                },
                "description": "The instance names for the read replica instances"
              },
              "replicas": {
                "sensitive": true,
                "expression": {
                  "references": [
                    "google_sql_database_instance.replicas"
                  ]
                },
                "description": "A list of `google_sql_database_instance` resources representing the replicas"
              },
              "replicas_instance_connection_names": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.replicas"
                  ]
                },
                "description": "The connection names of the replica instances to be used in connection strings"
              },
              "replicas_instance_first_ip_addresses": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.replicas"
                  ]
                },
                "description": "The first IPv4 addresses of the addresses assigned for the replica instances"
              },
              "replicas_instance_self_links": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.replicas"
                  ]
                },
                "description": "The URIs of the replica instances"
              },
              "replicas_instance_server_ca_certs": {
                "sensitive": true,
                "expression": {
                  "references": [
                    "google_sql_database_instance.replicas"
                  ]
                },
                "description": "The CA certificates information used to connect to the replica instances via SSL"
              },
              "replicas_instance_service_account_email_addresses": {
                "expression": {
                  "references": [
                    "google_sql_database_instance.replicas"
                  ]
                },
                "description": "The service account email addresses assigned to the replica instances"
              }
            },
            "resources": [
              {
                "address": "google_project_iam_member.database_integration",
                "mode": "managed",
                "type": "google_project_iam_member",
                "name": "database_integration",
                "provider_config_key": "google",
                "expressions": {
                  "member": {
                    "references": [
                      "google_sql_database_instance.default.service_account_email_address",
                      "google_sql_database_instance.default"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "role": {
                    "references": [
                      "each.value"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "var.database_integration_roles"
                  ]
                }
              },
              {
                "address": "google_sql_database.additional_databases",
                "mode": "managed",
                "type": "google_sql_database",
                "name": "additional_databases",
                "provider_config_key": "google",
                "expressions": {
                  "charset": {
                    "references": [
                      "each.value"
                    ]
                  },
                  "collation": {
                    "references": [
                      "each.value"
                    ]
                  },
                  "deletion_policy": {
                    "references": [
                      "var.database_deletion_policy"
                    ]
                  },
                  "instance": {
                    "references": [
                      "google_sql_database_instance.default.name",
                      "google_sql_database_instance.default"
                    ]
                  },
                  "name": {
                    "references": [
                      "each.value.name",
                      "each.value"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "local.databases"
                  ]
                },
                "depends_on": [
                  "null_resource.module_depends_on",
                  "google_sql_database_instance.default"
                ]
              },
              {
                "address": "google_sql_database.default",
                "mode": "managed",
                "type": "google_sql_database",
                "name": "default",
                "provider_config_key": "google",
                "expressions": {
                  "charset": {
                    "references": [
                      "var.db_charset"
                    ]
                  },
                  "collation": {
                    "references": [
                      "var.db_collation"
                    ]
                  },
                  "deletion_policy": {
                    "references": [
                      "var.database_deletion_policy"
                    ]
                  },
                  "instance": {
                    "references": [
                      "google_sql_database_instance.default.name",
                      "google_sql_database_instance.default"
                    ]
                  },
                  "name": {
                    "references": [
                      "var.db_name"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  }
                },
                "schema_version": 0,
                "count_expression": {
                  "references": [
                    "var.enable_default_db"
                  ]
                },
                "depends_on": [
                  "null_resource.module_depends_on",
                  "google_sql_database_instance.default"
                ]
              },
              {
                "address": "google_sql_database_instance.default",
                "mode": "managed",
                "type": "google_sql_database_instance",
                "name": "default",
                "provider_config_key": "google-beta",
                "expressions": {
                  "database_version": {
                    "references": [
                      "var.database_version",
                      "var.database_version",
                      "var.database_version",
                      "var.database_version"
                    ]
                  },
                  "deletion_protection": {
                    "references": [
                      "var.deletion_protection"
                    ]
                  },
                  "encryption_key_name": {
                    "references": [
                      "var.encryption_key_name"
                    ]
                  },
                  "instance_type": {
                    "references": [
                      "local.is_secondary_instance",
                      "var.instance_type"
                    ]
                  },
                  "maintenance_version": {
                    "references": [
                      "var.maintenance_version"
                    ]
                  },
                  "master_instance_name": {
                    "references": [
                      "var.master_instance_name"
                    ]
                  },
                  "name": {
                    "references": [
                      "local.instance_name"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "region": {
                    "references": [
                      "var.region"
                    ]
                  },
                  "root_password": {
                    "references": [
                      "var.root_password"
                    ]
                  },
                  "settings": [
                    {
                      "activation_policy": {
                        "references": [
                          "var.activation_policy"
                        ]
                      },
                      "availability_type": {
                        "references": [
                          "var.availability_type"
                        ]
                      },
                      "connector_enforcement": {
                        "references": [
                          "local.connector_enforcement"
                        ]
                      },
                      "deletion_protection_enabled": {
                        "references": [
                          "var.deletion_protection_enabled"
                        ]
                      },
                      "disk_autoresize": {
                        "references": [
                          "var.disk_autoresize"
                        ]
                      },
                      "disk_autoresize_limit": {
                        "references": [
                          "var.disk_autoresize_limit"
                        ]
                      },
                      "disk_size": {
                        "references": [
                          "var.disk_size"
                        ]
                      },
                      "disk_type": {
                        "references": [
                          "var.disk_type"
                        ]
                      },
                      "edition": {
                        "references": [
                          "var.edition"
                        ]
                      },
                      "enable_google_ml_integration": {
                        "references": [
                          "var.enable_google_ml_integration"
                        ]
                      },
                      "pricing_plan": {
                        "references": [
                          "var.pricing_plan"
                        ]
                      },
                      "tier": {
                        "references": [
                          "var.tier"
                        ]
                      },
                      "user_labels": {
                        "references": [
                          "var.user_labels"
                        ]
                      }
                    }
                  ],
                  "timeouts": {
                    "create": {
                      "references": [
                        "var.create_timeout"
                      ]
                    },
                    "delete": {
                      "references": [
                        "var.delete_timeout"
                      ]
                    },
                    "update": {
                      "references": [
                        "var.update_timeout"
                      ]
                    }
                  }
                },
                "schema_version": 0,
                "depends_on": [
                  "null_resource.module_depends_on"
                ]
              },
              {
                "address": "google_sql_database_instance.replicas",
                "mode": "managed",
                "type": "google_sql_database_instance",
                "name": "replicas",
                "provider_config_key": "google-beta",
                "expressions": {
                  "database_version": {
                    "references": [
                      "var.database_version"
                    ]
                  },
                  "deletion_protection": {
                    "references": [
                      "var.read_replica_deletion_protection"
                    ]
                  },
                  "encryption_key_name": {
                    "references": [
                      "each.value",
                      "var.zone",
                      "var.region",
                      "each.value.encryption_key_name",
                      "each.value"
                    ]
                  },
                  "master_instance_name": {
                    "references": [
                      "google_sql_database_instance.default.name",
                      "google_sql_database_instance.default"
                    ]
                  },
                  "name": {
                    "references": [
                      "each.value.name_override",
                      "each.value",
                      "each.value.name_override",
                      "each.value",
                      "local.instance_name",
                      "var.read_replica_name_suffix",
                      "each.value.name",
                      "each.value",
                      "each.value.name_override",
                      "each.value"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "region": {
                    "references": [
                      "each.value",
                      "var.zone"
                    ]
                  },
                  "settings": [
                    {
                      "activation_policy": {
                        "constant_value": "ALWAYS"
                      },
                      "availability_type": {
                        "references": [
                          "each.value",
                          "var.availability_type",
                          "each.value"
                        ]
                      },
                      "deletion_protection_enabled": {
                        "references": [
                          "var.read_replica_deletion_protection_enabled"
                        ]
                      },
                      "disk_autoresize": {
                        "references": [
                          "each.value",
                          "var.disk_autoresize"
                        ]
                      },
                      "disk_autoresize_limit": {
                        "references": [
                          "each.value",
                          "var.disk_autoresize_limit"
                        ]
                      },
                      "disk_size": {
                        "references": [
                          "each.value",
                          "var.disk_size"
                        ]
                      },
                      "disk_type": {
                        "references": [
                          "each.value",
                          "var.disk_type"
                        ]
                      },
                      "edition": {
                        "references": [
                          "each.value",
                          "var.edition",
                          "each.value"
                        ]
                      },
                      "location_preference": [
                        {
                          "zone": {
                            "references": [
                              "each.value",
                              "local.zone"
                            ]
                          }
                        }
                      ],
                      "pricing_plan": {
                        "constant_value": "PER_USE"
                      },
                      "tier": {
                        "references": [
                          "each.value",
                          "var.tier",
                          "each.value"
                        ]
                      },
                      "user_labels": {
                        "references": [
                          "each.value",
                          "var.user_labels"
                        ]
                      }
                    }
                  ],
                  "timeouts": {
                    "create": {
                      "references": [
                        "var.create_timeout"
                      ]
                    },
                    "delete": {
                      "references": [
                        "var.delete_timeout"
                      ]
                    },
                    "update": {
                      "references": [
                        "var.update_timeout"
                      ]
                    }
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "local.replicas"
                  ]
                },
                "depends_on": [
                  "google_sql_database_instance.default"
                ]
              },
              {
                "address": "google_sql_user.additional_users",
                "mode": "managed",
                "type": "google_sql_user",
                "name": "additional_users",
                "provider_config_key": "google",
                "expressions": {
                  "deletion_policy": {
                    "references": [
                      "var.user_deletion_policy"
                    ]
                  },
                  "instance": {
                    "references": [
                      "google_sql_database_instance.default.name",
                      "google_sql_database_instance.default"
                    ]
                  },
                  "name": {
                    "references": [
                      "each.value.name",
                      "each.value"
                    ]
                  },
                  "password": {
                    "references": [
                      "each.value.random_password",
                      "each.value",
                      "random_password.additional_passwords",
                      "each.value.name",
                      "each.value",
                      "each.value.password",
                      "each.value"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  }
                },
                "schema_version": 1,
                "for_each_expression": {
                  "references": [
                    "local.users"
                  ]
                },
                "depends_on": [
                  "null_resource.module_depends_on",
                  "google_sql_database_instance.default",
                  "google_sql_database_instance.replicas"
                ]
              },
              {
                "address": "google_sql_user.default",
                "mode": "managed",
                "type": "google_sql_user",
                "name": "default",
                "provider_config_key": "google",
                "expressions": {
                  "deletion_policy": {
                    "references": [
                      "var.user_deletion_policy"
                    ]
                  },
                  "instance": {
                    "references": [
                      "google_sql_database_instance.default.name",
                      "google_sql_database_instance.default"
                    ]
                  },
                  "name": {
                    "references": [
                      "var.user_name"
                    ]
                  },
                  "password": {
                    "references": [
                      "var.user_password",
                      "random_password.user-password[0].result",
                      "random_password.user-password[0]",
                      "random_password.user-password",
                      "var.user_password"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  }
                },
                "schema_version": 1,
                "count_expression": {
                  "references": [
                    "var.enable_default_user"
                  ]
                },
                "depends_on": [
                  "null_resource.module_depends_on",
                  "google_sql_database_instance.default",
                  "google_sql_database_instance.replicas"
                ]
              },
              {
                "address": "google_sql_user.iam_account",
                "mode": "managed",
                "type": "google_sql_user",
                "name": "iam_account",
                "provider_config_key": "google",
                "expressions": {
                  "deletion_policy": {
                    "references": [
                      "var.user_deletion_policy"
                    ]
                  },
                  "instance": {
                    "references": [
                      "google_sql_database_instance.default.name",
                      "google_sql_database_instance.default"
                    ]
                  },
                  "name": {
                    "references": [
                      "each.value.email",
                      "each.value"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "type": {
                    "references": [
                      "each.value.type",
                      "each.value"
                    ]
                  }
                },
                "schema_version": 1,
                "for_each_expression": {
                  "references": [
                    "local.iam_users"
                  ]
                },
                "depends_on": [
                  "null_resource.module_depends_on"
                ]
              },
              {
                "address": "null_resource.module_depends_on",
                "mode": "managed",
                "type": "null_resource",
                "name": "module_depends_on",
                "provider_config_key": "module.database-postgresql:null",
                "expressions": {
                  "triggers": {
                    "references": [
                      "var.module_depends_on"
                    ]
                  }
                },
                "schema_version": 0
              },
              {
                "address": "random_id.suffix",
                "mode": "managed",
                "type": "random_id",
                "name": "suffix",
                "provider_config_key": "module.database-postgresql:random",
                "expressions": {
                  "byte_length": {
                    "constant_value": 4
                  }
                },
                "schema_version": 0,
                "count_expression": {
                  "references": [
                    "var.random_instance_name"
                  ]
                }
              },
              {
                "address": "random_password.additional_passwords",
                "mode": "managed",
                "type": "random_password",
                "name": "additional_passwords",
                "provider_config_key": "module.database-postgresql:random",
                "expressions": {
                  "keepers": {
                    "references": [
                      "google_sql_database_instance.default.name",
                      "google_sql_database_instance.default"
                    ]
                  },
                  "length": {
                    "references": [
                      "var.password_validation_policy_config",
                      "var.password_validation_policy_config.min_length",
                      "var.password_validation_policy_config",
                      "var.password_validation_policy_config.min_length",
                      "var.password_validation_policy_config"
                    ]
                  },
                  "min_lower": {
                    "constant_value": 1
                  },
                  "min_numeric": {
                    "constant_value": 1
                  },
                  "min_special": {
                    "references": [
                      "var.enable_random_password_special",
                      "var.password_validation_policy_config",
                      "var.password_validation_policy_config.complexity",
                      "var.password_validation_policy_config"
                    ]
                  },
                  "min_upper": {
                    "constant_value": 1
                  },
                  "special": {
                    "references": [
                      "var.enable_random_password_special",
                      "var.password_validation_policy_config",
                      "var.password_validation_policy_config.complexity",
                      "var.password_validation_policy_config"
                    ]
                  }
                },
                "schema_version": 3,
                "for_each_expression": {
                  "references": [
                    "local.users"
                  ]
                },
                "depends_on": [
                  "null_resource.module_depends_on",
                  "google_sql_database_instance.default"
                ]
              },
              {
                "address": "random_password.user-password",
                "mode": "managed",
                "type": "random_password",
                "name": "user-password",
                "provider_config_key": "module.database-postgresql:random",
                "expressions": {
                  "keepers": {
                    "references": [
                      "google_sql_database_instance.default.name",
                      "google_sql_database_instance.default"
                    ]
                  },
                  "length": {
                    "references": [
                      "var.password_validation_policy_config",
                      "var.password_validation_policy_config.min_length",
                      "var.password_validation_policy_config",
                      "var.password_validation_policy_config.min_length",
                      "var.password_validation_policy_config"
                    ]
                  },
                  "min_lower": {
                    "constant_value": 1
                  },
                  "min_numeric": {
                    "constant_value": 1
                  },
                  "min_special": {
                    "references": [
                      "var.enable_random_password_special",
                      "var.password_validation_policy_config",
                      "var.password_validation_policy_config.complexity",
                      "var.password_validation_policy_config"
                    ]
                  },
                  "min_upper": {
                    "constant_value": 1
                  },
                  "special": {
                    "references": [
                      "var.enable_random_password_special",
                      "var.password_validation_policy_config",
                      "var.password_validation_policy_config.complexity",
                      "var.password_validation_policy_config"
                    ]
                  }
                },
                "schema_version": 3,
                "count_expression": {
                  "references": [
                    "var.enable_default_user"
                  ]
                },
                "depends_on": [
                  "null_resource.module_depends_on",
                  "google_sql_database_instance.default"
                ]
              },
              {
                "address": "data.google_compute_zones.available",
                "mode": "data",
                "type": "google_compute_zones",
                "name": "available",
                "provider_config_key": "google",
                "expressions": {
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "region": {
                    "references": [
                      "var.region"
                    ]
                  }
                },
                "schema_version": 0,
                "count_expression": {
                  "references": [
                    "var.zone"
                  ]
                }
              }
            ],
            "variables": {
              "activation_policy": {
                "default": "ALWAYS",
                "description": "The activation policy for the Cloud SQL instance.Can be either `ALWAYS`, `NEVER` or `ON_DEMAND`."
              },
              "additional_databases": {
                "default": [],
                "description": "A list of databases to be created in your cluster"
              },
              "additional_users": {
                "default": [],
                "description": "A list of users to be created in your cluster. A random password would be set for the user if the `random_password` variable is set."
              },
              "availability_type": {
                "default": "ZONAL",
                "description": "The availability type for the Cloud SQL instance.This is only used to set up high availability for the PostgreSQL instance. Can be either `ZONAL` or `REGIONAL`."
              },
              "backup_configuration": {
                "default": {
                  "enabled": false,
                  "location": null,
                  "point_in_time_recovery_enabled": false,
                  "retained_backups": null,
                  "retention_unit": null,
                  "start_time": null,
                  "transaction_log_retention_days": null
                },
                "description": "The backup_configuration settings subblock for the database setings"
              },
              "connector_enforcement": {
                "default": false,
                "description": "Enforce that clients use the connector library"
              },
              "create_timeout": {
                "default": "30m",
                "description": "The optional timout that is applied to limit long database creates."
              },
              "data_cache_enabled": {
                "default": false,
                "description": "Whether data cache is enabled for the instance. Defaults to false. Feature is only available for ENTERPRISE_PLUS tier and supported database_versions"
              },
              "database_deletion_policy": {
                "default": null,
                "description": "The deletion policy for the database. Setting ABANDON allows the resource to be abandoned rather than deleted. This is useful for Postgres, where databases cannot be deleted from the API if there are users other than cloudsqlsuperuser with access. Possible values are: \"ABANDON\"."
              },
              "database_flags": {
                "default": [],
                "description": "The database flags for the Cloud SQL instance. See [more details](https://cloud.google.com/sql/docs/postgres/flags)"
              },
              "database_integration_roles": {
                "default": [],
                "description": "The roles required by default database instance service account for integration with GCP services"
              },
              "database_version": {
                "description": "The database version to use. Can be 9_6, 14, 15, 16, 17."
              },
              "db_charset": {
                "default": "",
                "description": "The charset for the default database"
              },
              "db_collation": {
                "default": "",
                "description": "The collation for the default database. Example: 'en_US.UTF8'"
              },
              "db_name": {
                "default": "default",
                "description": "The name of the default database to create. This should be unique per Cloud SQL instance."
              },
              "delete_timeout": {
                "default": "30m",
                "description": "The optional timout that is applied to limit long database deletes."
              },
              "deletion_protection": {
                "default": true,
                "description": "Used to block Terraform from deleting a SQL Instance."
              },
              "deletion_protection_enabled": {
                "default": false,
                "description": "Enables protection of an Cloud SQL instance from accidental deletion across all surfaces (API, gcloud, Cloud Console and Terraform)."
              },
              "deny_maintenance_period": {
                "default": [],
                "description": "The Deny Maintenance Period fields to prevent automatic maintenance from occurring during a 90-day time period. List accepts only one value. See [more details](https://cloud.google.com/sql/docs/postgres/maintenance)"
              },
              "disk_autoresize": {
                "default": true,
                "description": "Configuration to increase storage size."
              },
              "disk_autoresize_limit": {
                "default": 0,
                "description": "The maximum size to which storage can be auto increased."
              },
              "disk_size": {
                "default": 10,
                "description": "The disk size (in GB) for the Cloud SQL instance."
              },
              "disk_type": {
                "default": "PD_SSD",
                "description": "The disk type for the Cloud SQL instance."
              },
              "edition": {
                "default": null,
                "description": "The edition of the Cloud SQL instance, can be ENTERPRISE or ENTERPRISE_PLUS."
              },
              "enable_default_db": {
                "default": true,
                "description": "Enable or disable the creation of the default database"
              },
              "enable_default_user": {
                "default": true,
                "description": "Enable or disable the creation of the default user"
              },
              "enable_google_ml_integration": {
                "default": false,
                "description": "Enable database ML integration"
              },
              "enable_random_password_special": {
                "default": false,
                "description": "Enable special characters in generated random passwords."
              },
              "encryption_key_name": {
                "default": null,
                "description": "The full path to the encryption key used for the CMEK disk encryption"
              },
              "follow_gae_application": {
                "default": null,
                "description": "A Google App Engine application whose zone to remain in. Must be in the same region as this instance."
              },
              "iam_users": {
                "default": [],
                "description": "A list of IAM users to be created in your CloudSQL instance. iam.users.type can be CLOUD_IAM_USER, CLOUD_IAM_SERVICE_ACCOUNT, CLOUD_IAM_GROUP and is required for type CLOUD_IAM_GROUP (IAM groups)"
              },
              "insights_config": {
                "default": null,
                "description": "The insights_config settings for the database."
              },
              "instance_type": {
                "default": "CLOUD_SQL_INSTANCE",
                "description": "The type of the instance. The supported values are SQL_INSTANCE_TYPE_UNSPECIFIED, CLOUD_SQL_INSTANCE, ON_PREMISES_INSTANCE and READ_REPLICA_INSTANCE. Set to READ_REPLICA_INSTANCE if master_instance_name value is provided"
              },
              "ip_configuration": {
                "default": {
                  "allocated_ip_range": null,
                  "authorized_networks": [],
                  "enable_private_path_for_google_cloud_services": false,
                  "ipv4_enabled": true,
                  "private_network": google_compute_network.peering_network.id,
                  "psc_allowed_consumer_projects": [],
                  "psc_enabled": false,
                  "ssl_mode": null
                },
                "description": "The ip configuration for the Cloud SQL instances."
              },
              "maintenance_version": {
                "default": null,
                "description": "The current software version on the instance. This attribute can not be set during creation. Refer to available_maintenance_versions attribute to see what maintenance_version are available for upgrade. When this attribute gets updated, it will cause an instance restart. Setting a maintenance_version value that is older than the current one on the instance will be ignored"
              },
              "maintenance_window_day": {
                "default": 1,
                "description": "The day of week (1-7) for the Cloud SQL instance maintenance."
              },
              "maintenance_window_hour": {
                "default": 23,
                "description": "The hour of day (0-23) maintenance window for the Cloud SQL instance maintenance."
              },
              "maintenance_window_update_track": {
                "default": "canary",
                "description": "The update track of maintenance window for the Cloud SQL instance maintenance.Can be either `canary` or `stable`."
              },
              "master_instance_name": {
                "default": null,
                "description": "Name of the master instance if this is a failover replica. Required for creating failover replica instance. Not needed for master instance. When removed, next terraform apply will promote this failover failover replica instance as master instance"
              },
              "module_depends_on": {
                "default": [],
                "description": "List of modules or resources this module depends on."
              },
              "name": {
                "description": "The name of the Cloud SQL instance"
              },
              "password_validation_policy_config": {
                "default": null,
                "description": "The password validation policy settings for the database instance."
              },
              "pricing_plan": {
                "default": "PER_USE",
                "description": "The pricing plan for the Cloud SQL instance."
              },
              "project_id": {
                "description": "The project ID to manage the Cloud SQL resources"
              },
              "random_instance_name": {
                "default": false,
                "description": "Sets random suffix at the end of the Cloud SQL resource name"
              },
              "read_replica_deletion_protection": {
                "default": false,
                "description": "Used to block Terraform from deleting replica SQL Instances."
              },
              "read_replica_deletion_protection_enabled": {
                "default": false,
                "description": "Enables protection of replica instance from accidental deletion across all surfaces (API, gcloud, Cloud Console and Terraform)."
              },
              "read_replica_name_suffix": {
                "default": "",
                "description": "The optional suffix to add to the read instance name"
              },
              "read_replicas": {
                "default": [],
                "description": "List of read replicas to create. Encryption key is required for replica in different region. For replica in same region as master set encryption_key_name = null"
              },
              "region": {
                "default": "us-central1",
                "description": "The region of the Cloud SQL resources"
              },
              "root_password": {
                "default": null,
                "description": "Initial root password during creation"
              },
              "secondary_zone": {
                "default": null,
                "description": "The preferred zone for the replica instance, it should be something like: `us-central1-a`, `us-east1-c`."
              },
              "tier": {
                "default": "db-f1-micro",
                "description": "The tier for the Cloud SQL instance."
              },
              "update_timeout": {
                "default": "30m",
                "description": "The optional timout that is applied to limit long database updates."
              },
              "user_deletion_policy": {
                "default": null,
                "description": "The deletion policy for the user. Setting ABANDON allows the resource to be abandoned rather than deleted. This is useful for Postgres, where users cannot be deleted from the API if they have been granted SQL roles. Possible values are: \"ABANDON\"."
              },
              "user_labels": {
                "default": {},
                "description": "The key/value labels for the Cloud SQL instances."
              },
              "user_name": {
                "default": "default",
                "description": "The name of the default user"
              },
              "user_password": {
                "default": "",
                "description": "The password for the default user. If not set, a random one will be generated and available in the generated_user_password output variable."
              },
              "zone": {
                "default": null,
                "description": "The zone for the Cloud SQL instance, it should be something like: `us-central1-a`, `us-east1-c`."
              }
            }
          },
          "depends_on": [
            "module.project-services-hdcl-457412",
            "module.project-services-billing-project"
          ]
        },
        "frontend-service-cloud-run": {
          "source": "github.com/GoogleCloudPlatform/terraform-google-cloud-run//modules/v2?ref=v0.17.2",
          "expressions": {
            "cloud_run_deletion_protection": {
              "constant_value": false
            },
            "containers": {
              "references": [
                "module.backend-service-cloud-run.service_uri",
                "module.backend-service-cloud-run"
              ]
            },
            "enable_prometheus_sidecar": {
              "constant_value": true
            },
            "location": {
              "constant_value": "us-central1"
            },
            "members": {
              "constant_value": [
                "allUsers"
              ]
            },
            "project_id": {
              "constant_value": "hdcl-457412"
            },
            "service_account_project_roles": {
              "constant_value": [
                "roles/run.invoker"
              ]
            },
            "service_name": {
              "constant_value": "frontend-testsrvc"
            },
            "vpc_access": {
              "constant_value": {
                "egress": "ALL_TRAFFIC",
                "network_interfaces": {
                  "network": "default",
                  "subnetwork": "default"
                }
              }
            }
          },
          "module": {
            "outputs": {
              "apphub_service_uri": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.id",
                    "google_cloud_run_v2_service.main",
                    "var.service_name",
                    "var.location",
                    "var.project_id",
                    "var.location"
                  ]
                },
                "description": "Service URI in CAIS style to be used by Apphub."
              },
              "creator": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.creator",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Email address of the authenticated creator."
              },
              "effective_annotations": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.effective_annotations",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services."
              },
              "last_modifier": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.last_modifier",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Email address of the last authenticated modifier."
              },
              "latest_created_revision": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.latest_created_revision",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Name of the last created revision. See comments in reconciling for additional information on reconciliation process in Cloud Run."
              },
              "latest_ready_revision": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.latest_ready_revision",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Name of the latest revision that is serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run."
              },
              "location": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.location",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Location in which the Cloud Run service was created"
              },
              "observed_generation": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.observed_generation",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "The generation of this Service currently serving traffic."
              },
              "project_id": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.project",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Google Cloud project in which the service was created"
              },
              "service_account_id": {
                "expression": {
                  "references": [
                    "local.service_account_output"
                  ]
                },
                "description": "Service account id and email"
              },
              "service_id": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.id",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Unique Identifier for the created service with format projects/{{project}}/locations/{{location}}/services/{{name}}"
              },
              "service_name": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.name",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Name of the created service"
              },
              "service_uri": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.uri",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "The main URI in which this Service is serving traffic."
              },
              "traffic_statuses": {
                "expression": {
                  "references": [
                    "google_cloud_run_v2_service.main.traffic_statuses",
                    "google_cloud_run_v2_service.main"
                  ]
                },
                "description": "Detailed status information for corresponding traffic targets."
              }
            },
            "resources": [
              {
                "address": "google_cloud_run_v2_service.main",
                "mode": "managed",
                "type": "google_cloud_run_v2_service",
                "name": "main",
                "provider_config_key": "google-beta",
                "expressions": {
                  "annotations": {
                    "references": [
                      "var.service_annotations"
                    ]
                  },
                  "client": {
                    "references": [
                      "var.client.name",
                      "var.client"
                    ]
                  },
                  "client_version": {
                    "references": [
                      "var.client.version",
                      "var.client"
                    ]
                  },
                  "custom_audiences": {
                    "references": [
                      "var.custom_audiences"
                    ]
                  },
                  "deletion_protection": {
                    "references": [
                      "var.cloud_run_deletion_protection"
                    ]
                  },
                  "description": {
                    "references": [
                      "var.description"
                    ]
                  },
                  "ingress": {
                    "references": [
                      "var.ingress"
                    ]
                  },
                  "labels": {
                    "references": [
                      "var.service_labels"
                    ]
                  },
                  "launch_stage": {
                    "references": [
                      "var.launch_stage"
                    ]
                  },
                  "location": {
                    "references": [
                      "var.location"
                    ]
                  },
                  "name": {
                    "references": [
                      "var.service_name"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "template": [
                    {
                      "annotations": {
                        "references": [
                          "var.template_annotations"
                        ]
                      },
                      "encryption_key": {
                        "references": [
                          "var.encryption_key"
                        ]
                      },
                      "execution_environment": {
                        "references": [
                          "var.execution_environment"
                        ]
                      },
                      "labels": {
                        "references": [
                          "var.template_labels"
                        ]
                      },
                      "max_instance_request_concurrency": {
                        "references": [
                          "var.max_instance_request_concurrency"
                        ]
                      },
                      "revision": {
                        "references": [
                          "var.revision"
                        ]
                      },
                      "service_account": {
                        "references": [
                          "local.service_account"
                        ]
                      },
                      "session_affinity": {
                        "references": [
                          "var.session_affinity"
                        ]
                      },
                      "timeout": {
                        "references": [
                          "var.timeout"
                        ]
                      }
                    }
                  ]
                },
                "schema_version": 0,
                "depends_on": [
                  "google_project_iam_member.roles"
                ]
              },
              {
                "address": "google_cloud_run_v2_service_iam_member.authorize",
                "mode": "managed",
                "type": "google_cloud_run_v2_service_iam_member",
                "name": "authorize",
                "provider_config_key": "google",
                "expressions": {
                  "location": {
                    "references": [
                      "google_cloud_run_v2_service.main.location",
                      "google_cloud_run_v2_service.main"
                    ]
                  },
                  "member": {
                    "references": [
                      "each.value"
                    ]
                  },
                  "name": {
                    "references": [
                      "google_cloud_run_v2_service.main.name",
                      "google_cloud_run_v2_service.main"
                    ]
                  },
                  "project": {
                    "references": [
                      "google_cloud_run_v2_service.main.project",
                      "google_cloud_run_v2_service.main"
                    ]
                  },
                  "role": {
                    "constant_value": "roles/run.invoker"
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "var.members"
                  ]
                }
              },
              {
                "address": "google_project_iam_member.roles",
                "mode": "managed",
                "type": "google_project_iam_member",
                "name": "roles",
                "provider_config_key": "google",
                "expressions": {
                  "member": {
                    "references": [
                      "local.service_account"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "role": {
                    "references": [
                      "each.value"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "local.service_account_project_roles"
                  ]
                }
              },
              {
                "address": "google_service_account.sa",
                "mode": "managed",
                "type": "google_service_account",
                "name": "sa",
                "provider_config_key": "google",
                "expressions": {
                  "account_id": {
                    "references": [
                      "local.service_account_prefix"
                    ]
                  },
                  "display_name": {
                    "references": [
                      "var.service_name",
                      "var.location"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  }
                },
                "schema_version": 0,
                "count_expression": {
                  "references": [
                    "local.create_service_account"
                  ]
                }
              },
              {
                "address": "data.google_service_account.existing_sa",
                "mode": "data",
                "type": "google_service_account",
                "name": "existing_sa",
                "provider_config_key": "google",
                "expressions": {
                  "account_id": {
                    "references": [
                      "google_cloud_run_v2_service.main.template[0].service_account",
                      "google_cloud_run_v2_service.main.template[0]",
                      "google_cloud_run_v2_service.main.template",
                      "google_cloud_run_v2_service.main"
                    ]
                  }
                },
                "schema_version": 0,
                "count_expression": {
                  "references": [
                    "local.create_service_account"
                  ]
                }
              }
            ],
            "variables": {
              "binary_authorization": {
                "default": null,
                "description": "Settings for the Binary Authorization feature."
              },
              "client": {
                "default": {
                  "name": null,
                  "version": null
                },
                "description": "Arbitrary identifier for the API client and version identifier"
              },
              "cloud_run_deletion_protection": {
                "default": true,
                "description": "This field prevents Terraform from destroying or recreating the Cloud Run v2 Jobs and Services"
              },
              "containers": {
                "description": "Map of container images for the service"
              },
              "create_service_account": {
                "default": true,
                "description": "Create a new service account for cloud run service"
              },
              "custom_audiences": {
                "default": null,
                "description": "One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. Refer https://cloud.google.com/run/docs/configuring/custom-audiences"
              },
              "description": {
                "default": null,
                "description": "Cloud Run service description. This field currently has a 512-character limit."
              },
              "enable_prometheus_sidecar": {
                "default": false,
                "description": "Enable Prometheus sidecar in Cloud Run instance."
              },
              "encryption_key": {
                "default": null,
                "description": "A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. This is optional."
              },
              "execution_environment": {
                "default": "EXECUTION_ENVIRONMENT_GEN2",
                "description": "The sandbox environment to host this Revision."
              },
              "ingress": {
                "default": "INGRESS_TRAFFIC_ALL",
                "description": "Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active."
              },
              "launch_stage": {
                "default": "GA",
                "description": "The launch stage as defined by Google Cloud Platform Launch Stages. Cloud Run supports ALPHA, BETA, and GA. If no value is specified, GA is assumed."
              },
              "location": {
                "description": "Cloud Run service deployment location"
              },
              "max_instance_request_concurrency": {
                "default": null,
                "description": "Sets the maximum number of requests that each serving instance can receive. This is optional."
              },
              "members": {
                "default": [],
                "description": "Users/SAs to be given invoker access to the service. Grant invoker access by specifying the users or service accounts (SAs). Use allUsers for public access, allAuthenticatedUsers for access by logged-in Google users, or provide a list of specific users/SAs. See the complete list of available options: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_v2_service_iam#member\\/members-1"
              },
              "project_id": {
                "description": "The project ID to deploy to"
              },
              "revision": {
                "default": null,
                "description": "The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name"
              },
              "service_account": {
                "default": null,
                "description": "Email address of the IAM service account associated with the revision of the service"
              },
              "service_account_project_roles": {
                "default": [],
                "description": "Roles to grant to the newly created cloud run SA in specified project. Should be used with create_service_account set to true and no input for service_account"
              },
              "service_annotations": {
                "default": {},
                "description": "Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Refer https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_v2_service#annotations"
              },
              "service_labels": {
                "default": {},
                "description": "Unstructured key value map that can be used to organize and categorize objects. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels"
              },
              "service_name": {
                "description": "The name of the Cloud Run service to create"
              },
              "service_scaling": {
                "default": null,
                "description": "Scaling settings that apply to the whole service"
              },
              "session_affinity": {
                "default": null,
                "description": "Enables session affinity. For more information, go to https://cloud.google.com/run/docs/configuring/session-affinity"
              },
              "template_annotations": {
                "default": {},
                "description": "Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Refer https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_v2_service#annotations"
              },
              "template_labels": {
                "default": {},
                "description": "Unstructured key value map that can be used to organize and categorize objects. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels"
              },
              "template_scaling": {
                "default": null,
                "description": "Scaling settings for this Revision."
              },
              "timeout": {
                "default": null,
                "description": "Max allowed time for an instance to respond to a request. A duration in seconds with up to nine fractional digits, ending with 's'"
              },
              "traffic": {
                "default": [],
                "description": "Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision."
              },
              "volumes": {
                "default": [],
                "description": "Volumes needed for environment variables (when using secret)"
              },
              "vpc_access": {
                "default": null,
                "description": "VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc"
              }
            }
          },
          "depends_on": [
            "module.project-services-hdcl-457412",
            "module.project-services-billing-project"
          ]
        },
        "memorystore": {
          "source": "github.com/terraform-google-modules/terraform-google-memorystore?ref=v13.3.0",
          "expressions": {
            "auth_enabled": {
              "constant_value": true
            },
            "connect_mode": {
              "constant_value": "DIRECT_PEERING"
            },
            "location_id": {
              "constant_value": "us-central1-a"
            },
            "name": {
              "constant_value": "memstore-redis-tst"
            },
            "project_id": {
              "constant_value": "hdcl-457412"
            },
            "redis_version": {
              "constant_value": "REDIS_6_X"
            },
            "region": {
              "constant_value": "us-central1"
            },
            "tier": {
              "constant_value": "BASIC"
            },
            "transit_encryption_mode": {
              "constant_value": "DISABLED"
            }
          },
          "module": {
            "outputs": {
              "apphub_service_uri": {
                "expression": {
                  "references": [
                    "google_redis_instance.default.id",
                    "google_redis_instance.default",
                    "var.name",
                    "var.region",
                    "var.project_id",
                    "var.region"
                  ]
                },
                "description": "Service URI in CAIS style to be used by Apphub."
              },
              "auth_string": {
                "sensitive": true,
                "expression": {
                  "references": [
                    "google_redis_instance.default.auth_string",
                    "google_redis_instance.default"
                  ]
                },
                "description": "AUTH String set on the instance. This field will only be populated if auth_enabled is true."
              },
              "current_location_id": {
                "expression": {
                  "references": [
                    "google_redis_instance.default.current_location_id",
                    "google_redis_instance.default"
                  ]
                },
                "description": "The current zone where the Redis endpoint is placed."
              },
              "env_vars": {
                "expression": {
                  "references": [
                    "google_redis_instance.default.host",
                    "google_redis_instance.default",
                    "google_redis_instance.default.port",
                    "google_redis_instance.default"
                  ]
                },
                "description": "Exported environment variables"
              },
              "host": {
                "expression": {
                  "references": [
                    "google_redis_instance.default.host",
                    "google_redis_instance.default"
                  ]
                },
                "description": "The IP address of the instance."
              },
              "id": {
                "expression": {
                  "references": [
                    "google_redis_instance.default.id",
                    "google_redis_instance.default"
                  ]
                },
                "description": "The memorystore instance ID."
              },
              "persistence_iam_identity": {
                "expression": {
                  "references": [
                    "google_redis_instance.default.persistence_iam_identity",
                    "google_redis_instance.default"
                  ]
                },
                "description": "Cloud IAM identity used by import/export operations. Format is 'serviceAccount:'. May change over time"
              },
              "port": {
                "expression": {
                  "references": [
                    "google_redis_instance.default.port",
                    "google_redis_instance.default"
                  ]
                },
                "description": "The port number of the exposed Redis endpoint."
              },
              "read_endpoint": {
                "expression": {
                  "references": [
                    "google_redis_instance.default.read_endpoint",
                    "google_redis_instance.default"
                  ]
                },
                "description": " The IP address of the exposed readonly Redis endpoint."
              },
              "region": {
                "expression": {
                  "references": [
                    "google_redis_instance.default.region",
                    "google_redis_instance.default"
                  ]
                },
                "description": "The region the instance lives in."
              },
              "server_ca_certs": {
                "expression": {
                  "references": [
                    "google_redis_instance.default.server_ca_certs",
                    "google_redis_instance.default"
                  ]
                },
                "description": "List of server CA certificates for the instance"
              }
            },
            "resources": [
              {
                "address": "google_redis_instance.default",
                "mode": "managed",
                "type": "google_redis_instance",
                "name": "default",
                "provider_config_key": "google",
                "expressions": {
                  "alternative_location_id": {
                    "references": [
                      "var.alternative_location_id"
                    ]
                  },
                  "auth_enabled": {
                    "references": [
                      "var.auth_enabled"
                    ]
                  },
                  "authorized_network": {
                    "references": [
                      "var.authorized_network"
                    ]
                  },
                  "connect_mode": {
                    "references": [
                      "var.connect_mode"
                    ]
                  },
                  "customer_managed_key": {
                    "references": [
                      "var.customer_managed_key"
                    ]
                  },
                  "display_name": {
                    "references": [
                      "var.display_name"
                    ]
                  },
                  "labels": {
                    "references": [
                      "var.labels"
                    ]
                  },
                  "location_id": {
                    "references": [
                      "var.location_id"
                    ]
                  },
                  "memory_size_gb": {
                    "references": [
                      "var.memory_size_gb"
                    ]
                  },
                  "name": {
                    "references": [
                      "var.name"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "read_replicas_mode": {
                    "references": [
                      "var.tier",
                      "var.read_replicas_mode"
                    ]
                  },
                  "redis_configs": {
                    "references": [
                      "var.redis_configs"
                    ]
                  },
                  "redis_version": {
                    "references": [
                      "var.redis_version"
                    ]
                  },
                  "region": {
                    "references": [
                      "var.region"
                    ]
                  },
                  "replica_count": {
                    "references": [
                      "var.tier",
                      "var.replica_count"
                    ]
                  },
                  "reserved_ip_range": {
                    "references": [
                      "var.reserved_ip_range"
                    ]
                  },
                  "secondary_ip_range": {
                    "references": [
                      "var.secondary_ip_range"
                    ]
                  },
                  "tier": {
                    "references": [
                      "var.tier"
                    ]
                  },
                  "transit_encryption_mode": {
                    "references": [
                      "var.transit_encryption_mode"
                    ]
                  }
                },
                "schema_version": 0,
                "depends_on": [
                  "module.enable_apis"
                ]
              }
            ],
            "module_calls": {
              "enable_apis": {
                "source": "terraform-google-modules/project-factory/google//modules/project_services",
                "expressions": {
                  "activate_apis": {
                    "constant_value": [
                      "redis.googleapis.com"
                    ]
                  },
                  "disable_dependent_services": {
                    "constant_value": false
                  },
                  "disable_services_on_destroy": {
                    "constant_value": false
                  },
                  "enable_apis": {
                    "references": [
                      "var.enable_apis"
                    ]
                  },
                  "project_id": {
                    "references": [
                      "var.project_id"
                    ]
                  }
                },
                "module": {
                  "outputs": {
                    "enabled_api_identities": {
                      "expression": {
                        "references": [
                          "google_project_service_identity.project_service_identities"
                        ]
                      },
                      "description": "Enabled API identities in the project"
                    },
                    "enabled_apis": {
                      "expression": {
                        "references": [
                          "google_project_service.project_services"
                        ]
                      },
                      "description": "Enabled APIs in the project"
                    },
                    "project_id": {
                      "expression": {
                        "references": [
                          "google_project_service.project_services",
                          "var.project_id"
                        ]
                      },
                      "description": "The GCP project you want to enable APIs on"
                    }
                  },
                  "resources": [
                    {
                      "address": "google_project_iam_member.project_service_identity_roles",
                      "mode": "managed",
                      "type": "google_project_iam_member",
                      "name": "project_service_identity_roles",
                      "provider_config_key": "google",
                      "expressions": {
                        "member": {
                          "references": [
                            "each.value.email",
                            "each.value"
                          ]
                        },
                        "project": {
                          "references": [
                            "var.project_id"
                          ]
                        },
                        "role": {
                          "references": [
                            "each.value.role",
                            "each.value"
                          ]
                        }
                      },
                      "schema_version": 0,
                      "for_each_expression": {
                        "references": [
                          "local.add_service_roles"
                        ]
                      }
                    },
                    {
                      "address": "google_project_service.project_services",
                      "mode": "managed",
                      "type": "google_project_service",
                      "name": "project_services",
                      "provider_config_key": "google",
                      "expressions": {
                        "disable_dependent_services": {
                          "references": [
                            "var.disable_dependent_services"
                          ]
                        },
                        "disable_on_destroy": {
                          "references": [
                            "var.disable_services_on_destroy"
                          ]
                        },
                        "project": {
                          "references": [
                            "var.project_id"
                          ]
                        },
                        "service": {
                          "references": [
                            "each.value"
                          ]
                        }
                      },
                      "schema_version": 0,
                      "for_each_expression": {
                        "references": [
                          "local.services"
                        ]
                      }
                    },
                    {
                      "address": "google_project_service_identity.project_service_identities",
                      "mode": "managed",
                      "type": "google_project_service_identity",
                      "name": "project_service_identities",
                      "provider_config_key": "module.memorystore.module.enable_apis:google-beta",
                      "expressions": {
                        "project": {
                          "references": [
                            "var.project_id"
                          ]
                        },
                        "service": {
                          "references": [
                            "each.value.api",
                            "each.value"
                          ]
                        }
                      },
                      "schema_version": 0,
                      "for_each_expression": {
                        "references": [
                          "var.activate_api_identities"
                        ]
                      }
                    },
                    {
                      "address": "data.google_compute_default_service_account.default",
                      "mode": "data",
                      "type": "google_compute_default_service_account",
                      "name": "default",
                      "provider_config_key": "google",
                      "expressions": {
                        "project": {
                          "references": [
                            "var.project_id"
                          ]
                        }
                      },
                      "schema_version": 0,
                      "count_expression": {
                        "references": [
                          "local.activate_compute_identity"
                        ]
                      }
                    }
                  ],
                  "variables": {
                    "activate_api_identities": {
                      "default": [],
                      "description": "    The list of service identities (Google Managed service account for the API) to force-create for the project (e.g. in order to grant additional roles).\n    APIs in this list will automatically be appended to `activate_apis`.\n    Not including the API in this list will follow the default behaviour for identity creation (which is usually when the first resource using the API is created).\n    Any roles (e.g. service agent role) must be explicitly listed. See https://cloud.google.com/iam/docs/understanding-roles#service-agent-roles-roles for a list of related roles.\n"
                    },
                    "activate_apis": {
                      "default": [],
                      "description": "The list of apis to activate within the project"
                    },
                    "disable_dependent_services": {
                      "default": true,
                      "description": "Whether services that are enabled and which depend on this service should also be disabled when this service is destroyed. https://www.terraform.io/docs/providers/google/r/google_project_service.html#disable_dependent_services"
                    },
                    "disable_services_on_destroy": {
                      "default": true,
                      "description": "Whether project services will be disabled when the resources are destroyed. https://www.terraform.io/docs/providers/google/r/google_project_service.html#disable_on_destroy"
                    },
                    "enable_apis": {
                      "default": true,
                      "description": "Whether to actually enable the APIs. If false, this module is a no-op."
                    },
                    "project_id": {
                      "description": "The GCP project you want to enable APIs on"
                    }
                  }
                },
                "version_constraint": "~> 18.0"
              }
            },
            "variables": {
              "alternative_location_id": {
                "default": null,
                "description": "The alternative zone where the instance will be provisioned."
              },
              "auth_enabled": {
                "default": false,
                "description": "Indicates whether OSS Redis AUTH is enabled for the instance. If set to true AUTH is enabled on the instance."
              },
              "authorized_network": {
                "default": null,
                "description": "The full name of the Google Compute Engine network to which the instance is connected. If left unspecified, the default network will be used."
              },
              "connect_mode": {
                "default": null,
                "description": "The connection mode of the Redis instance. Can be either DIRECT_PEERING or PRIVATE_SERVICE_ACCESS. The default connect mode if not provided is DIRECT_PEERING."
              },
              "customer_managed_key": {
                "default": null,
                "description": "Default encryption key to apply to the Redis instance. Defaults to null (Google-managed)."
              },
              "display_name": {
                "default": null,
                "description": "An arbitrary and optional user-provided name for the instance."
              },
              "enable_apis": {
                "default": true,
                "description": "Flag for enabling redis.googleapis.com in your project"
              },
              "labels": {
                "default": null,
                "description": "The resource labels to represent user provided metadata."
              },
              "location_id": {
                "default": null,
                "description": "The zone where the instance will be provisioned. If not provided, the service will choose a zone for the instance. For STANDARD_HA tier, instances will be created across two zones for protection against zonal failures. If [alternativeLocationId] is also provided, it must be different from [locationId]."
              },
              "maintenance_policy": {
                "default": null,
                "description": "The maintenance policy for an instance."
              },
              "memory_size_gb": {
                "default": 1,
                "description": "Redis memory size in GiB. Defaulted to 1 GiB"
              },
              "name": {
                "description": "The ID of the instance or a fully qualified identifier for the instance."
              },
              "persistence_config": {
                "default": null,
                "description": "The Redis persistence configuration parameters. https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#persistenceconfig"
              },
              "project_id": {
                "description": "The ID of the project in which the resource belongs to."
              },
              "read_replicas_mode": {
                "default": "READ_REPLICAS_DISABLED",
                "description": "Read replicas mode. https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#readreplicasmode "
              },
              "redis_configs": {
                "default": {},
                "description": "The Redis configuration parameters. See [more details](https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance.FIELDS.redis_configs)"
              },
              "redis_version": {
                "default": null,
                "description": "The version of Redis software."
              },
              "region": {
                "description": "The GCP region to use."
              },
              "replica_count": {
                "default": null,
                "description": "The number of replicas."
              },
              "reserved_ip_range": {
                "default": null,
                "description": "The CIDR range of internal addresses that are reserved for this instance."
              },
              "secondary_ip_range": {
                "default": null,
                "description": "Optional. Additional IP range for node placement. Required when enabling read replicas on an existing instance."
              },
              "tier": {
                "default": "STANDARD_HA",
                "description": "The service tier of the instance. https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Tier"
              },
              "transit_encryption_mode": {
                "default": "SERVER_AUTHENTICATION",
                "description": "The TLS mode of the Redis instance, If not provided, TLS is enabled for the instance."
              }
            }
          },
          "depends_on": [
            "module.project-services-hdcl-457412",
            "module.project-services-billing-project"
          ]
        },
        "project-services-billing-project": {
          "source": "github.com/terraform-google-modules/terraform-google-project-factory//modules/project_services?ref=v17.1.0",
          "expressions": {
            "activate_apis": {
              "constant_value": [
                "servicenetworking.googleapis.com",
                "cloudkms.googleapis.com",
                "storage-api.googleapis.com",
                "iam.googleapis.com",
                "compute.googleapis.com",
                "run.googleapis.com",
                "accesscontextmanager.googleapis.com",
                "monitoring.googleapis.com",
                "networkconnectivity.googleapis.com",
                "cloudscheduler.googleapis.com",
                "cloudresourcemanager.googleapis.com",
                "memcache.googleapis.com",
                "serviceusage.googleapis.com",
                "workflows.googleapis.com",
                "redis.googleapis.com",
                "cloudbilling.googleapis.com",
                "sqladmin.googleapis.com",
                "memorystore.googleapis.com",
                "serviceconsumermanagement.googleapis.com",
                "apphub.googleapis.com"
              ]
            },
            "disable_services_on_destroy": {
              "constant_value": false
            },
            "project_id": {
              "constant_value": "hdcl-457412"
            }
          },
          "module": {
            "outputs": {
              "enabled_api_identities": {
                "expression": {
                  "references": [
                    "google_project_service_identity.project_service_identities"
                  ]
                },
                "description": "Enabled API identities in the project"
              },
              "enabled_apis": {
                "expression": {
                  "references": [
                    "google_project_service.project_services"
                  ]
                },
                "description": "Enabled APIs in the project"
              },
              "project_id": {
                "expression": {
                  "references": [
                    "google_project_service.project_services",
                    "var.project_id"
                  ]
                },
                "description": "The GCP project you want to enable APIs on"
              }
            },
            "resources": [
              {
                "address": "google_project_iam_member.project_service_identity_roles",
                "mode": "managed",
                "type": "google_project_iam_member",
                "name": "project_service_identity_roles",
                "provider_config_key": "google",
                "expressions": {
                  "member": {
                    "references": [
                      "each.value.email",
                      "each.value"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "role": {
                    "references": [
                      "each.value.role",
                      "each.value"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "local.add_service_roles"
                  ]
                }
              },
              {
                "address": "google_project_service.project_services",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "provider_config_key": "google",
                "expressions": {
                  "disable_dependent_services": {
                    "references": [
                      "var.disable_dependent_services"
                    ]
                  },
                  "disable_on_destroy": {
                    "references": [
                      "var.disable_services_on_destroy"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "service": {
                    "references": [
                      "each.value"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "local.services"
                  ]
                }
              },
              {
                "address": "google_project_service_identity.project_service_identities",
                "mode": "managed",
                "type": "google_project_service_identity",
                "name": "project_service_identities",
                "provider_config_key": "google-beta",
                "expressions": {
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "service": {
                    "references": [
                      "each.value.api",
                      "each.value"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "var.activate_api_identities"
                  ]
                }
              },
              {
                "address": "data.google_compute_default_service_account.default",
                "mode": "data",
                "type": "google_compute_default_service_account",
                "name": "default",
                "provider_config_key": "google",
                "expressions": {
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  }
                },
                "schema_version": 0,
                "count_expression": {
                  "references": [
                    "local.activate_compute_identity"
                  ]
                }
              }
            ],
            "variables": {
              "activate_api_identities": {
                "default": [],
                "description": "    The list of service identities (Google Managed service account for the API) to force-create for the project (e.g. in order to grant additional roles).\n    APIs in this list will automatically be appended to `activate_apis`.\n    Not including the API in this list will follow the default behaviour for identity creation (which is usually when the first resource using the API is created).\n    Any roles (e.g. service agent role) must be explicitly listed. See https://cloud.google.com/iam/docs/understanding-roles#service-agent-roles-roles for a list of related roles.\n"
              },
              "activate_apis": {
                "default": [],
                "description": "The list of apis to activate within the project"
              },
              "disable_dependent_services": {
                "default": true,
                "description": "Whether services that are enabled and which depend on this service should also be disabled when this service is destroyed. https://www.terraform.io/docs/providers/google/r/google_project_service.html#disable_dependent_services"
              },
              "disable_services_on_destroy": {
                "default": true,
                "description": "Whether project services will be disabled when the resources are destroyed. https://www.terraform.io/docs/providers/google/r/google_project_service.html#disable_on_destroy"
              },
              "enable_apis": {
                "default": true,
                "description": "Whether to actually enable the APIs. If false, this module is a no-op."
              },
              "project_id": {
                "description": "The GCP project you want to enable APIs on"
              }
            }
          }
        },
        "project-services-hdcl-457412": {
          "source": "github.com/terraform-google-modules/terraform-google-project-factory//modules/project_services?ref=v17.1.0",
          "expressions": {
            "activate_apis": {
              "constant_value": [
                "serviceconsumermanagement.googleapis.com",
                "serviceusage.googleapis.com",
                "sqladmin.googleapis.com",
                "networkconnectivity.googleapis.com",
                "storage-api.googleapis.com",
                "cloudkms.googleapis.com",
                "compute.googleapis.com",
                "servicenetworking.googleapis.com",
                "redis.googleapis.com",
                "memorystore.googleapis.com",
                "cloudresourcemanager.googleapis.com",
                "run.googleapis.com",
                "iam.googleapis.com",
                "accesscontextmanager.googleapis.com",
                "cloudbilling.googleapis.com",
                "cloudscheduler.googleapis.com",
                "workflows.googleapis.com",
                "memcache.googleapis.com",
                "monitoring.googleapis.com"
              ]
            },
            "disable_services_on_destroy": {
              "constant_value": false
            },
            "project_id": {
              "constant_value": "hdcl-457412"
            }
          },
          "module": {
            "outputs": {
              "enabled_api_identities": {
                "expression": {
                  "references": [
                    "google_project_service_identity.project_service_identities"
                  ]
                },
                "description": "Enabled API identities in the project"
              },
              "enabled_apis": {
                "expression": {
                  "references": [
                    "google_project_service.project_services"
                  ]
                },
                "description": "Enabled APIs in the project"
              },
              "project_id": {
                "expression": {
                  "references": [
                    "google_project_service.project_services",
                    "var.project_id"
                  ]
                },
                "description": "The GCP project you want to enable APIs on"
              }
            },
            "resources": [
              {
                "address": "google_project_iam_member.project_service_identity_roles",
                "mode": "managed",
                "type": "google_project_iam_member",
                "name": "project_service_identity_roles",
                "provider_config_key": "google",
                "expressions": {
                  "member": {
                    "references": [
                      "each.value.email",
                      "each.value"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "role": {
                    "references": [
                      "each.value.role",
                      "each.value"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "local.add_service_roles"
                  ]
                }
              },
              {
                "address": "google_project_service.project_services",
                "mode": "managed",
                "type": "google_project_service",
                "name": "project_services",
                "provider_config_key": "google",
                "expressions": {
                  "disable_dependent_services": {
                    "references": [
                      "var.disable_dependent_services"
                    ]
                  },
                  "disable_on_destroy": {
                    "references": [
                      "var.disable_services_on_destroy"
                    ]
                  },
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "service": {
                    "references": [
                      "each.value"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "local.services"
                  ]
                }
              },
              {
                "address": "google_project_service_identity.project_service_identities",
                "mode": "managed",
                "type": "google_project_service_identity",
                "name": "project_service_identities",
                "provider_config_key": "google-beta",
                "expressions": {
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  },
                  "service": {
                    "references": [
                      "each.value.api",
                      "each.value"
                    ]
                  }
                },
                "schema_version": 0,
                "for_each_expression": {
                  "references": [
                    "var.activate_api_identities"
                  ]
                }
              },
              {
                "address": "data.google_compute_default_service_account.default",
                "mode": "data",
                "type": "google_compute_default_service_account",
                "name": "default",
                "provider_config_key": "google",
                "expressions": {
                  "project": {
                    "references": [
                      "var.project_id"
                    ]
                  }
                },
                "schema_version": 0,
                "count_expression": {
                  "references": [
                    "local.activate_compute_identity"
                  ]
                }
              }
            ],
            "variables": {
              "activate_api_identities": {
                "default": [],
                "description": "    The list of service identities (Google Managed service account for the API) to force-create for the project (e.g. in order to grant additional roles).\n    APIs in this list will automatically be appended to `activate_apis`.\n    Not including the API in this list will follow the default behaviour for identity creation (which is usually when the first resource using the API is created).\n    Any roles (e.g. service agent role) must be explicitly listed. See https://cloud.google.com/iam/docs/understanding-roles#service-agent-roles-roles for a list of related roles.\n"
              },
              "activate_apis": {
                "default": [],
                "description": "The list of apis to activate within the project"
              },
              "disable_dependent_services": {
                "default": true,
                "description": "Whether services that are enabled and which depend on this service should also be disabled when this service is destroyed. https://www.terraform.io/docs/providers/google/r/google_project_service.html#disable_dependent_services"
              },
              "disable_services_on_destroy": {
                "default": true,
                "description": "Whether project services will be disabled when the resources are destroyed. https://www.terraform.io/docs/providers/google/r/google_project_service.html#disable_on_destroy"
              },
              "enable_apis": {
                "default": true,
                "description": "Whether to actually enable the APIs. If false, this module is a no-op."
              },
              "project_id": {
                "description": "The GCP project you want to enable APIs on"
              }
            }
          }
        }
      }
    }
  },
  "relevant_attributes": [
    {
      "resource": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "creator"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "last_modifier"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.data.google_service_account.existing_sa[0]",
      "attribute": [
        "email"
      ]
    },
    {
      "resource": "module.database-postgresql.data.google_compute_zones.available[0]",
      "attribute": [
        "names",
        0
      ]
    },
    {
      "resource": "module.memorystore.module.enable_apis.google_project_service.project_services",
      "attribute": []
    },
    {
      "resource": "module.memorystore.google_redis_instance.default",
      "attribute": [
        "read_endpoint"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "creator"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "latest_ready_revision"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "id"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "latest_created_revision"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "template",
        0,
        "service_account"
      ]
    },
    {
      "resource": "module.database-postgresql.google_sql_database_instance.default",
      "attribute": [
        "first_ip_address"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "id"
      ]
    },
    {
      "resource": "module.apphub.google_apphub_service.register_services",
      "attribute": []
    },
    {
      "resource": "module.database-postgresql.google_sql_database_instance.default",
      "attribute": [
        "server_ca_cert"
      ]
    },
    {
      "resource": "module.database-postgresql.google_sql_database_instance.default",
      "attribute": [
        "public_ip_address"
      ]
    },
    {
      "resource": "module.database-postgresql.google_sql_database_instance.default",
      "attribute": [
        "connection_name"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "uri"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_service_account.sa[0]",
      "attribute": [
        "account_id"
      ]
    },
    {
      "resource": "module.database-postgresql.random_id.suffix[0]",
      "attribute": [
        "hex"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "location"
      ]
    },
    {
      "resource": "module.project-services-billing-project.google_project_service_identity.project_service_identities",
      "attribute": []
    },
    {
      "resource": "module.memorystore.google_redis_instance.default",
      "attribute": [
        "host"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "traffic_statuses"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "latest_ready_revision"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.data.google_service_account.existing_sa[0]",
      "attribute": [
        "member"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "name"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "project"
      ]
    },
    {
      "resource": "module.database-postgresql.google_sql_database_instance.default",
      "attribute": [
        "psc_service_attachment_link"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "template",
        0,
        "service_account"
      ]
    },
    {
      "resource": "module.apphub.data.google_apphub_discovered_workload.workloads",
      "attribute": []
    },
    {
      "resource": "module.apphub.data.google_apphub_discovered_service.services",
      "attribute": []
    },
    {
      "resource": "module.database-postgresql.google_sql_database_instance.default",
      "attribute": [
        "private_ip_address"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.google_service_account.sa[0]",
      "attribute": [
        "member"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.data.google_service_account.existing_sa[0]",
      "attribute": [
        "email"
      ]
    },
    {
      "resource": "module.database-postgresql.random_password.additional_passwords",
      "attribute": []
    },
    {
      "resource": "module.database-postgresql.google_sql_database_instance.default",
      "attribute": [
        "dns_name"
      ]
    },
    {
      "resource": "module.memorystore.google_redis_instance.default",
      "attribute": [
        "server_ca_certs"
      ]
    },
    {
      "resource": "module.database-postgresql.google_sql_user.additional_users",
      "attribute": []
    },
    {
      "resource": "module.database-postgresql.random_password.user-password[0]",
      "attribute": [
        "result"
      ]
    },
    {
      "resource": "module.memorystore.google_redis_instance.default",
      "attribute": [
        "current_location_id"
      ]
    },
    {
      "resource": "module.apphub.google_apphub_workload.register_workloads",
      "attribute": []
    },
    {
      "resource": "module.project-services-billing-project.google_project_service.project_services",
      "attribute": []
    },
    {
      "resource": "module.project-services-hdcl-457412.google_project_service.project_services",
      "attribute": []
    },
    {
      "resource": "module.memorystore.module.enable_apis.google_project_service_identity.project_service_identities",
      "attribute": []
    },
    {
      "resource": "module.database-postgresql.google_sql_database_instance.default",
      "attribute": [
        "ip_address"
      ]
    },
    {
      "resource": "module.memorystore.google_redis_instance.default",
      "attribute": [
        "port"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "name"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "project"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.data.google_service_account.existing_sa[0]",
      "attribute": [
        "account_id"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "effective_annotations"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "observed_generation"
      ]
    },
    {
      "resource": "module.memorystore.google_redis_instance.default",
      "attribute": [
        "persistence_iam_identity"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.data.google_service_account.existing_sa[0]",
      "attribute": [
        "member"
      ]
    },
    {
      "resource": "module.project-services-hdcl-457412.google_project_service_identity.project_service_identities",
      "attribute": []
    },
    {
      "resource": "module.database-postgresql.google_sql_database_instance.replicas",
      "attribute": []
    },
    {
      "resource": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "latest_created_revision"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "effective_annotations"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.google_service_account.sa[0]",
      "attribute": [
        "account_id"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.data.google_service_account.existing_sa[0]",
      "attribute": [
        "account_id"
      ]
    },
    {
      "resource": "module.database-postgresql.google_sql_database_instance.default",
      "attribute": []
    },
    {
      "resource": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "observed_generation"
      ]
    },
    {
      "resource": "module.database-postgresql.google_sql_database_instance.default",
      "attribute": [
        "service_account_email_address"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "traffic_statuses"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "last_modifier"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_service_account.sa[0]",
      "attribute": [
        "email"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_service_account.sa[0]",
      "attribute": [
        "member"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "location"
      ]
    },
    {
      "resource": "module.database-postgresql.google_sql_database_instance.default",
      "attribute": [
        "self_link"
      ]
    },
    {
      "resource": "module.backend-service-cloud-run.google_service_account.sa[0]",
      "attribute": [
        "email"
      ]
    },
    {
      "resource": "module.database-postgresql.google_sql_database_instance.default",
      "attribute": [
        "name"
      ]
    },
    {
      "resource": "module.memorystore.google_redis_instance.default",
      "attribute": [
        "region"
      ]
    },
    {
      "resource": "module.frontend-service-cloud-run.google_cloud_run_v2_service.main",
      "attribute": [
        "uri"
      ]
    },
    {
      "resource": "module.memorystore.google_redis_instance.default",
      "attribute": [
        "id"
      ]
    },
    {
      "resource": "module.memorystore.google_redis_instance.default",
      "attribute": [
        "auth_string"
      ]
    }
  ],
  "timestamp": "2025-04-22T00:57:49Z"
}
