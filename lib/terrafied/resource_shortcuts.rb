class Hash
  def deep_merge(other_hash)
    self.merge(other_hash) do |key, oldval, newval|
      oldval = oldval.to_hash if oldval.respond_to?(:to_hash)
      newval = newval.to_hash if newval.respond_to?(:to_hash)
      oldval.class.to_s == 'Hash' &&
        newval.class.to_s == 'Hash' ? oldval.deep_merge(newval) : newval
    end
  end
end

class << self
  def aws_api_gateway_account(name, spec={})
    default_spec = { name: name }
    resource 'aws_api_gateway_account', name,
             default_spec.deep_merge(spec)
  end

  def aws_api_gateway_api_key(name, spec={})
    default_spec = { name: name }
    resource 'aws_api_gateway_api_key', name,
             default_spec.deep_merge(spec)
  end

  def aws_api_gateway_authorizer(name, spec={})
    default_spec = { name: name }
    resource 'aws_api_gateway_authorizer', name,
             default_spec.deep_merge(spec)
  end

  def aws_api_gateway_deployment(name, spec={})
    resource 'aws_api_gateway_deployment', name, spec
  end

  def aws_api_gateway_integration(name, spec={})
    resource 'aws_api_gateway_integration', name, spec
  end

  def aws_api_gateway_integration_response(name, spec={})
    resource 'aws_api_gateway_integration_response', name, spec
  end

  def aws_api_gateway_method(name, spec={})
    resource 'aws_api_gateway_method', name, spec
  end

  def aws_api_gateway_method_response(name, spec={})
    resource 'aws_api_gateway_method_response', name, spec
  end

  def aws_api_gateway_model(name, spec={})
    default_spec = { name: name }
    resource 'aws_api_gateway_model', name,
             default_spec.deep_merge(spec)
  end

  def aws_api_gateway_resource(name, spec={})
    resource 'aws_api_gateway_resource', name, spec
  end

  def aws_api_gateway_rest_api(name, spec={})
    default_spec = { name: name }
    resource 'aws_api_gateway_rest_api', name,
             default_spec.deep_merge(spec)
  end

  def aws_cloudformation_stack(name, spec={})
    default_spec = { name: name }
    resource 'aws_cloudformation_stack', name,
             default_spec.deep_merge(spec)
  end

  def aws_cloudfront_distribution(name, spec={})
    resource 'aws_cloudfront_distribution', name, spec
  end

  def aws_cloudfront_origin_access_identity(name, spec={})
    resource 'aws_cloudfront_origin_access_identity', name, spec
  end

  def aws_cloudtrail(name, spec={})
    default_spec = { name: name }
    resource 'aws_cloudtrail', name,
             default_spec.deep_merge(spec)
  end

  def aws_cloudwatch_event_rule(name, spec={})
    default_spec = { name: name }
    resource 'aws_cloudwatch_event_rule', name,
             default_spec.deep_merge(spec)
  end

  def aws_cloudwatch_event_target(name, spec={})
    resource 'aws_cloudwatch_event_target', name, spec
  end

  def aws_cloudwatch_log_group(name, spec={})
    default_spec = { name: name }
    resource 'aws_cloudwatch_log_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_cloudwatch_log_subscription_filter(name, spec={})
    default_spec = { name: name }
    resource 'aws_cloudwatch_log_subscription_filter', name,
             default_spec.deep_merge(spec)
  end

  def aws_cloudwatch_log_metric_filter(name, spec={})
    default_spec = { name: name }
    resource 'aws_cloudwatch_log_metric_filter', name,
             default_spec.deep_merge(spec)
  end

  def aws_cloudwatch_metric_alarm(name, spec={})
    default_spec = { alarm_name: name }
    resource 'aws_cloudwatch_metric_alarm', name,
             default_spec.deep_merge(spec)
  end

  def aws_codecommit_repository(name, spec={})
    default_spec = { repository_name: name }
    resource 'aws_codecommit_repository', name,
             default_spec.deep_merge(spec)
  end

  def aws_codedeploy_app(name, spec={})
    default_spec = { name: name }
    resource 'aws_codedeploy_app', name,
             default_spec.deep_merge(spec)
  end

  def aws_codedeploy_deployment_group(name, spec={})
    default_spec = { app_name: name }
    resource 'aws_codedeploy_deployment_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_directory_service_directory(name, spec={})
    default_spec = { name: name }
    resource 'aws_directory_service_directory', name,
             default_spec.deep_merge(spec)
  end

  def aws_dynamodb_table(name, spec={})
    default_spec = { name: name }
    resource 'aws_dynamodb_table', name,
             default_spec.deep_merge(spec)
  end

  def aws_ami(name, spec={})
    default_spec = { name: name }
    resource 'aws_ami', name,
             default_spec.deep_merge(spec)
  end

  def aws_ami_copy(name, spec={})
    default_spec = { name: name }
    resource 'aws_ami_copy', name,
             default_spec.deep_merge(spec)
  end

  def aws_ami_from_instance(name, spec={})
    default_spec = { name: name }
    resource 'aws_ami_from_instance', name,
             default_spec.deep_merge(spec)
  end

  def aws_app_cookie_stickiness_policy(name, spec={})
    default_spec = { name: name }
    resource 'aws_app_cookie_stickiness_policy', name,
             default_spec.deep_merge(spec)
  end

  def aws_autoscaling_group(name, spec={})
    default_spec = { name: name }
    resource 'aws_autoscaling_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_autoscaling_lifecycle_hook(name, spec={})
    default_spec = { name: name }
    resource 'aws_autoscaling_lifecycle_hook', name,
             default_spec.deep_merge(spec)
  end

  def aws_autoscaling_notification(name, spec={})
    resource 'aws_autoscaling_notification', name, spec
  end

  def aws_autoscaling_policy(name, spec={})
    default_spec = { name: name }
    resource 'aws_autoscaling_policy', name,
             default_spec.deep_merge(spec)
  end

  def aws_autoscaling_schedule(name, spec={})
    resource 'aws_autoscaling_schedule', name, spec
  end

  def aws_ebs_volume(name, spec={})
    resource 'aws_ebs_volume', name, spec
  end

  def aws_eip_association(name, spec={})
    resource 'aws_eip_association', name, spec
  end

  def aws_eip(name, spec={})
    resource 'aws_eip', name, spec
  end

  def aws_elb(name, spec={})
    default_spec = { name: name }
    resource 'aws_elb', name,
             default_spec.deep_merge(spec)
  end

  def aws_instance(name, spec={})
    resource 'aws_instance', name, spec
  end

  def aws_key_pair(name, spec={})
    default_spec = { key_name: name }
    resource 'aws_key_pair', name,
             default_spec.deep_merge(spec)
  end

  def aws_launch_configuration(name, spec={})
    default_spec = { name: name }
    resource 'aws_launch_configuration', name,
             default_spec.deep_merge(spec)
  end

  def aws_lb_cookie_stickiness_policy(name, spec={})
    default_spec = { name: name }
    resource 'aws_lb_cookie_stickiness_policy', name,
             default_spec.deep_merge(spec)
  end

  def aws_placement_group(name, spec={})
    default_spec = { name: name }
    resource 'aws_placement_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_proxy_protocol_policy(name, spec={})
    resource 'aws_proxy_protocol_policy', name, spec
  end

  def aws_spot_instance_request(name, spec={})
    resource 'aws_spot_instance_request', name, spec
  end

  def aws_volume_attachment(name, spec={})
    resource 'aws_volume_attachment', name, spec
  end

  def aws_ecs_cluster(name, spec={})
    default_spec = { name: name }
    resource 'aws_ecs_cluster', name,
             default_spec.deep_merge(spec)
  end

  def aws_ecs_service(name, spec={})
    default_spec = { name: name }
    resource 'aws_ecs_service', name,
             default_spec.deep_merge(spec)
  end

  def aws_ecs_task_definition(name, spec={})
    default_spec = { family: name }
    resource 'aws_ecs_task_definition', name,
             default_spec.deep_merge(spec)
  end

  def aws_ecr_repository(name, spec={})
    default_spec = { name: name }
    resource 'aws_ecr_repository', name,
             default_spec.deep_merge(spec)
  end

  def aws_ecr_repository_policy(name, spec={})
    resource 'aws_ecr_repository_policy', name, spec
  end

  def aws_efs_file_system(name, spec={})
    resource 'aws_efs_file_system', name, spec
  end

  def aws_efs_mount_target(name, spec={})
    resource 'aws_efs_mount_target', name, spec
  end

  def aws_elasticache_cluster(name, spec={})
    default_spec = { cluster_id: name }
    resource 'aws_elasticache_cluster', name,
             default_spec.deep_merge(spec)
  end

  def aws_elasticache_parameter_group(name, spec={})
    default_spec = { name: name }
    resource 'aws_elasticache_parameter_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_elasticache_security_group(name, spec={})
    default_spec = { name: name }
    resource 'aws_elasticache_security_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_elasticache_subnet_group(name, spec={})
    default_spec = { name: name }
    resource 'aws_elasticache_subnet_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_elastic_beanstalk_application(name, spec={})
    default_spec = { name: name }
    resource 'aws_elastic_beanstalk_application', name,
             default_spec.deep_merge(spec)
  end

  def aws_elastic_beanstalk_configuration_template(name, spec={})
    default_spec = { name: name }
    resource 'aws_elastic_beanstalk_configuration_template', name,
             default_spec.deep_merge(spec)
  end

  def aws_elastic_beanstalk_environment(name, spec={})
    default_spec = { name: name }
    resource 'aws_elastic_beanstalk_environment', name,
             default_spec.deep_merge(spec)
  end

  def aws_elasticsearch_domain(name, spec={})
    default_spec = { domain_name: name }
    resource 'aws_elasticsearch_domain', name,
             default_spec.deep_merge(spec)
  end

  def aws_glacier_vault(name, spec={})
    default_spec = { name: name }
    resource 'aws_glacier_vault', name,
             default_spec.deep_merge(spec)
  end

  def aws_iam_access_key(name, spec={})
    resource 'aws_iam_access_key', name, spec
  end

  def aws_iam_account_password_policy(name, spec={})
    resource 'aws_iam_account_password_policy', name, spec
  end

  def aws_iam_group(name, spec={})
    default_spec = { name: name }
    resource 'aws_iam_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_iam_group_policy(name, spec={})
    default_spec = { name: name }
    resource 'aws_iam_group_policy', name,
             default_spec.deep_merge(spec)
  end

  def aws_iam_group_membership(name, spec={})
    default_spec = { name: name }
    resource 'aws_iam_group_membership', name,
             default_spec.deep_merge(spec)
  end

  def aws_iam_instance_profile(name, spec={})
    default_spec = { name: name }
    resource 'aws_iam_instance_profile', name,
             default_spec.deep_merge(spec)
  end

  def aws_iam_policy(name, spec={})
    default_spec = { name: name }
    resource 'aws_iam_policy', name,
             default_spec.deep_merge(spec)
  end

  def aws_iam_policy_attachment(name, spec={})
    default_spec = { name: name }
    resource 'aws_iam_policy_attachment', name,
             default_spec.deep_merge(spec)
  end

  def aws_iam_role(name, spec={})
    default_spec = { name: name }
    resource 'aws_iam_role', name,
             default_spec.deep_merge(spec)
  end

  def aws_iam_role_policy(name, spec={})
    default_spec = { name: name }
    resource 'aws_iam_role_policy', name,
             default_spec.deep_merge(spec)
  end

  def aws_iam_saml_provider(name, spec={})
    default_spec = { name: name }
    resource 'aws_iam_saml_provider', name,
             default_spec.deep_merge(spec)
  end

  def aws_iam_server_certificate(name, spec={})
    default_spec = { name: name }
    resource 'aws_iam_server_certificate', name,
             default_spec.deep_merge(spec)
  end

  def aws_iam_user(name, spec={})
    default_spec = { name: name }
    resource 'aws_iam_user', name,
             default_spec.deep_merge(spec)
  end

  def aws_iam_user_policy(name, spec={})
    default_spec = { name: name }
    resource 'aws_iam_user_policy', name,
             default_spec.deep_merge(spec)
  end

  def aws_iam_user_ssh_key(name, spec={})
    default_spec = { username: name }
    resource 'aws_iam_user_ssh_key', name,
             default_spec.deep_merge(spec)
  end

  def aws_kinesis_stream(name, spec={})
    default_spec = { name: name }
    resource 'aws_kinesis_stream', name,
             default_spec.deep_merge(spec)
  end

  def aws_kinesis_firehose_delivery_stream(name, spec={})
    default_spec = { name: name }
    resource 'aws_kinesis_firehose_delivery_stream', name,
             default_spec.deep_merge(spec)
  end

  def aws_kms_key(name, spec={})
    resource 'aws_kms_key', name, spec
  end

  def aws_kms_alias(name, spec={})
    default_spec = { name: name }
    resource 'aws_kms_alias', name,
             default_spec.deep_merge(spec)
  end

  def aws_lambda_alias(name, spec={})
    default_spec = { name: name }
    resource 'aws_lambda_alias', name,
             default_spec.deep_merge(spec)
  end

  def aws_lambda_function(name, spec={})
    resource 'aws_lambda_function', name, spec
  end

  def aws_lambda_event_source_mapping(name, spec={})
    resource 'aws_lambda_event_source_mapping', name, spec
  end

  def aws_lambda_permission(name, spec={})
    resource 'aws_lambda_permission', name, spec
  end

  def aws_opsworks_custom_layer(name, spec={})
    default_spec = { name: name }
    resource 'aws_opsworks_custom_layer', name,
             default_spec.deep_merge(spec)
  end

  def aws_opsworks_ganglia_layer(name, spec={})
    default_spec = { name: name }
    resource 'aws_opsworks_ganglia_layer', name,
             default_spec.deep_merge(spec)
  end

  def aws_opsworks_haproxy_layer(name, spec={})
    default_spec = { name: name }
    resource 'aws_opsworks_haproxy_layer', name,
             default_spec.deep_merge(spec)
  end

  def aws_opsworks_instance(name, spec={})
    resource 'aws_opsworks_instance', name, spec
  end

  def aws_opsworks_java_app_layer(name, spec={})
    default_spec = { name: name }
    resource 'aws_opsworks_java_app_layer', name,
             default_spec.deep_merge(spec)
  end

  def aws_opsworks_memcached_layer(name, spec={})
    default_spec = { name: name }
    resource 'aws_opsworks_memcached_layer', name,
             default_spec.deep_merge(spec)
  end

  def aws_opsworks_mysql_layer(name, spec={})
    default_spec = { name: name }
    resource 'aws_opsworks_mysql_layer', name,
             default_spec.deep_merge(spec)
  end

  def aws_opsworks_nodejs_app_layer(name, spec={})
    default_spec = { name: name }
    resource 'aws_opsworks_nodejs_app_layer', name,
             default_spec.deep_merge(spec)
  end

  def aws_opsworks_php_app_layer(name, spec={})
    default_spec = { name: name }
    resource 'aws_opsworks_php_app_layer', name,
             default_spec.deep_merge(spec)
  end

  def aws_opsworks_rails_app_layer(name, spec={})
    default_spec = { name: name }
    resource 'aws_opsworks_rails_app_layer', name,
             default_spec.deep_merge(spec)
  end

  def aws_opsworks_stack(name, spec={})
    default_spec = { name: name }
    resource 'aws_opsworks_stack', name,
             default_spec.deep_merge(spec)
  end

  def aws_opsworks_static_web_layer(name, spec={})
    default_spec = { name: name }
    resource 'aws_opsworks_static_web_layer', name,
             default_spec.deep_merge(spec)
  end

  def aws_opsworks_application(name, spec={})
    default_spec = { name: name }
    resource 'aws_opsworks_application', name,
             default_spec.deep_merge(spec)
  end

  def aws_db_instance(name, spec={})
    resource 'aws_db_instance', name, spec
  end

  def aws_db_event_subscription(name, spec={})
    default_spec = { name: name }
    resource 'aws_db_event_subscription', name,
             default_spec.deep_merge(spec)
  end

  def aws_db_option_group(name, spec={})
    default_spec = { name: name }
    resource 'aws_db_option_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_db_parameter_group(name, spec={})
    default_spec = { name: name,
                     description: name
                   }
    resource 'aws_db_parameter_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_db_security_group(name, spec={})
    default_spec = { name: name,
                     description: name
                   }
    resource 'aws_db_security_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_db_subnet_group(name, spec={})
    default_spec = { name: name,
                     description: name
                   }
    resource 'aws_db_subnet_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_rds_cluster(name, spec={})
    default_spec = { cluster_identifier: name.downcase }
    resource 'aws_rds_cluster', name,
             default_spec.deep_merge(spec)
  end

  def aws_rds_cluster_instance(name, spec={})
    resource 'aws_rds_cluster_instance', name, spec
  end

  def aws_redshift_cluster(name, spec={})
    resource 'aws_redshift_cluster', name, spec
  end

  def aws_redshift_parameter_group(name, spec={})
    default_spec = { name: name }
    resource 'aws_redshift_parameter_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_redshift_security_group(name, spec={})
    default_spec = { name: name,
                     description: name
                   }
    resource 'aws_redshift_security_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_redshift_subnet_group(name, spec={})
    default_spec = { name: name,
                     description: name
                   }
    resource 'aws_redshift_subnet_group', name,
             default_spec.deep_merge(spec)
  end

  def aws_route53_delegation_set(name, spec={})
    resource 'aws_route53_delegation_set', name, spec
  end

  def aws_route53_health_check(name, spec={})
    resource 'aws_route53_health_check', name, spec
  end

  def aws_route53_record(name, spec={})
    default_spec = { name: name }
    resource 'aws_route53_record', name,
             default_spec.deep_merge(spec)
  end

  def aws_route53_zone(name, spec={})
    default_spec = { name: name }
    resource 'aws_route53_zone', name,
             default_spec.deep_merge(spec)
  end

  def aws_route53_zone_association(name, spec={})
    resource 'aws_route53_zone_association', name, spec
  end

  def aws_s3_bucket(name, spec={})
    default_spec = { bucket: name }
    resource 'aws_s3_bucket', name,
             default_spec.deep_merge(spec)
  end

  def aws_s3_bucket_object(name, spec={})
    resource 'aws_s3_bucket_object', name, spec
  end

  def aws_s3_bucket_notification(name, spec={})
    resource 'aws_s3_bucket_notification', name, spec
  end

  def aws_sns_topic(name, spec={})
    default_spec = { name: name }
    resource 'aws_sns_topic', name,
             default_spec.deep_merge(spec)
  end

  def aws_sns_topic_subscription(name, spec={})
    resource 'aws_sns_topic_subscription', name, spec
  end

  def aws_sqs_queue(name, spec={})
    default_spec = { name: name }
    resource 'aws_sqs_queue', name,
             default_spec.deep_merge(spec)
  end

  def aws_customer_gateway(name, spec={})
    resource 'aws_customer_gateway', name, spec
  end

  def aws_flow_log(name, spec={})
    resource 'aws_flow_log', name, spec
  end

  def aws_internet_gateway(name, spec={})
    resource 'aws_internet_gateway', name, spec
  end

  def aws_main_route_table_association(name, spec={})
    resource 'aws_main_route_table_association', name, spec
  end

  def aws_nat_gateway(name, spec={})
    resource 'aws_nat_gateway', name, spec
  end

  def aws_default_network_acl(name, spec={})
    resource 'aws_default_network_acl', name, spec
  end

  def aws_network_acl(name, spec={})
    resource 'aws_network_acl', name, spec
  end

  def aws_network_acl_rule(name, spec={})
    resource 'aws_network_acl_rule', name, spec
  end

  def aws_network_interface(name, spec={})
    resource 'aws_network_interface', name, spec
  end

  def aws_route(name, spec={})
    resource 'aws_route', name, spec
  end

  def aws_route_table(name, spec={})
    resource 'aws_route_table', name, spec
  end

  def aws_route_table_association(name, spec={})
    resource 'aws_route_table_association', name, spec
  end

  def aws_security_group(name, spec={})
    default_spec = { name: name,
                     tags: { Name: name }
                   }
    resource('aws_security_group', name,
             default_spec.deep_merge(spec={}))
  end

  def aws_security_group_rule(name, spec={})
    resource 'aws_security_group_rule', name, spec
  end

  def aws_subnet(name, spec={})
    resource 'aws_subnet', name, spec
  end

  def aws_vpc(name, spec={})
    resource 'aws_vpc', name, spec
  end

  def aws_vpc_dhcp_options(name, spec={})
   resource 'aws_vpc_dhcp_options', name, spec
  end

  def aws_vpc_dhcp_options_association(name, spec={})
    resource 'aws_vpc_dhcp_options_association', name, spec
  end

  def aws_vpc_endpoint(name, spec={})
    resource 'aws_vpc_endpoint', name, spec
  end

  def aws_vpc_peering_connection(name, spec={})
    resource 'aws_vpc_peering_connection', name, spec
  end

  def aws_vpn_connection(name, spec={})
    resource 'aws_vpn_connection', name, spec
  end

  def aws_vpn_connection_route(name, spec={})
    resource 'aws_vpn_connection_route', name, spec
  end

  def aws_vpn_gateway(name, spec={})
    resource 'aws_vpn_gateway', name, spec
  end
end
