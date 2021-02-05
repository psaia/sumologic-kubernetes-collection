resource "sumologic_s3_source" "infosec-corelight" {
  name                         = "corelight Logs"
  description                  = "Log files from corelight appliances"
  category                     = "aws/s3"
  content_type                 = "AwsS3Bucket"
  scan_interval                = 300000
  paused                       = false
  collector_id                 = module.nytimes-infosec-corelight.sumologic_collector_id
  multiline_processing_enabled = false

  authentication {
    type     = "AWSRoleBasedAuthentication"
    role_arn = "arn:aws:iam::147536899606:role/corelight-sumo-ingest-role"
  }

  path {
    type            = "S3BucketPathExpression"
    bucket_name     = "infosec-corelight-396d6b7c"
    path_expression = "*"
  }

  default_date_formats {
    format  = "epoch"
    locator = "^([^.]+)\\."
  }

  filters {
    name        = "Remove Comments"
    filter_type = "Exclude"
    regexp      = "^#.*"
  }
}

# Field parsing for each log type
resource "sumologic_field_extraction_rule" "corelight-ssl" {
  name             = "Corelight ssl logs"
  scope            = "_sourcename=*/ssl_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,version,cipher,curve,server_name,resumed,last_alert,next_protocol,established,cert_chain_fuids,client_cert_chain_fuids,subject,issuer,client_subject,client_issuer,encrypted_dns_resp_h"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-weird" {
  name             = "Corelight weird logs"
  scope            = "_sourcename=*/weird_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,name,addl,notice"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-snmp" {
  name             = "Corelight snmp logs"
  scope            = "_sourcename=*/snmp_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,duration,version,community,get_requests,get_bulk_requests,get_responses,set_requests,display_string,up_since"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-corelight_overall_capture_loss" {
  name             = "Corelight corelight_overall_capture_loss logs"
  scope            = "_sourcename=*/corelight_overall_capture_loss_20*"
  parse_expression = "parse \"*\t*\t*\t*\" as ts,gaps,acks,percent_lost"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-radius" {
  name             = "Corelight radius logs"
  scope            = "_sourcename=*/radius_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,username,mac,framed_addr,tunnel_client,connect_info,reply_msg,result,ttl"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-conn_long" {
  name             = "Corelight conn_long logs"
  scope            = "_sourcename=*/conn_long_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,proto,service,duration,bytes_out,bytes_in,conn_state,local_orig,local_resp,missed_bytes,history,orig_pkts,orig_ip_bytes,resp_pkts,resp_ip_bytes,tunnel_parents,suri_ids,src_country,dest_country,orig_l2_addr,resp_l2_addr,src_host_src,src_host,dest_host_src,dest_host,vlan,inner_vlan"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-smtp_links" {
  name             = "Corelight smtp_links logs"
  scope            = "_sourcename=*/smtp_links_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,fuid,link"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-kerberos" {
  name             = "Corelight kerberos logs"
  scope            = "_sourcename=*/kerberos_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,request_type,client,service,success,error_msg,from,till,cipher,forwardable,renewable,client_cert_subject,client_cert_fuid,server_cert_subject,server_cert_fuid"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-syslog" {
  name             = "Corelight syslog logs"
  scope            = "_sourcename=*/syslog_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,proto,facility,severity,message"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-ssh" {
  name             = "Corelight ssh logs"
  scope            = "_sourcename=*/ssh_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,version,auth_success,auth_attempts,direction,client,server,cipher_alg,mac_alg,compression_alg,kex_alg,host_key_alg,host_key,remote_location_country_code,remote_location_region,remote_location_city,remote_location_latitude,remote_location_longitude,inferences"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-conn" {
  name             = "Corelight conn logs"
  scope            = "_sourcename=*/conn_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,proto,service,duration,bytes_out,bytes_in,conn_state,local_orig,local_resp,missed_bytes,history,orig_pkts,orig_ip_bytes,resp_pkts,resp_ip_bytes,tunnel_parents,suri_ids,src_country,dest_country,orig_l2_addr,resp_l2_addr,src_host_src,src_host,dest_host_src,dest_host,vlan,inner_vlan"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-notice" {
  name             = "Corelight notice logs"
  scope            = "_sourcename=*/notice_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,fuid,file_mime_type,file_desc,proto,note,msg,sub,src,dst,p,n,peer_descr,actions,suppress_for,remote_location_country_code,remote_location_region,remote_location_city,remote_location_latitude,remote_location_longitude"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-smtp" {
  name             = "Corelight smtp logs"
  scope            = "_sourcename=*/smtp_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,trans_depth,helo,mailfrom,rcptto,date,from,to,cc,reply_to,msg_id,in_reply_to,subject,x_originating_ip,first_received,second_received,last_reply,path,user_agent,tls,fuids,is_webmail"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-rdp" {
  name             = "Corelight rdp logs"
  scope            = "_sourcename=*/rdp_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,cookie,result,security_protocol,client_channels,keyboard_layout,client_build,client_name,client_dig_product_id,desktop_width,desktop_height,requested_color_depth,cert_type,cert_count,cert_permanent,encryption_level,encryption_method"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-ftp" {
  name             = "Corelight ftp logs"
  scope            = "_sourcename=*/ftp_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,user,password,command,arg,mime_type,file_size,reply_code,reply_msg,data_channel_passive,data_channel_orig_h,data_channel_resp_h,data_channel_resp_p,fuid"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-ntp" {
  name             = "Corelight ntp logs"
  scope            = "_sourcename=*/ntp_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,version,mode,stratum,poll,precision,root_delay,root_disp,ref_id,ref_time,org_time,rec_time,xmt_time,num_exts"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-x509" {
  name             = "Corelight x509 logs"
  scope            = "_sourcename=*/x509_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,id,certificate_version,certificate_serial,certificate_subject,certificate_issuer,certificate_not_valid_before,certificate_not_valid_after,certificate_key_alg,certificate_sig_alg,certificate_key_type,certificate_key_length,certificate_exponent,certificate_curve,san_dns,san_uri,san_email,san_ip,basic_constraints_ca,basic_constraints_path_len"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-pe" {
  name             = "Corelight pe logs"
  scope            = "_sourcename=*/pe_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,id,machine,compile_ts,os,subsystem,is_exe,is_64bit,uses_aslr,uses_dep,uses_code_integrity,uses_seh,has_import_table,has_export_table,has_cert_table,has_debug_data,section_names"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-dpd" {
  name             = "Corelight dpd logs"
  scope            = "_sourcename=*/dpd_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,proto,analyzer,failure_reason"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-tunnel" {
  name             = "Corelight tunnel logs"
  scope            = "_sourcename=*/tunnel_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,tunnel_type,action"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-dns" {
  name             = "Corelight dns logs"
  scope            = "_sourcename=*/dns_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,proto,trans_id,rtt,query,qclass,qclass_name,qtype,qtype_name,rcode,rcode_name,AA,TC,RD,RA,Z,answers,TTLs,rejected"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-sip" {
  name             = "Corelight sip logs"
  scope            = "_sourcename=*/sip_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,trans_depth,method,uri,date,request_from,request_to,response_from,response_to,reply_to,call_id,seq,subject,request_path,response_path,user_agent,status_code,status_msg,warning,request_body_len,response_body_len,content_type"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-http" {
  name             = "Corelight http logs"
  scope            = "_sourcename=*/http_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uid,src_ip,src_port,dest_ip,dest_port,trans_depth,method,host,uri,referrer,version,user_agent,origin,request_body_len,response_body_len,status_code,status_msg,info_code,info_msg,tags,username,password,proxied,orig_fuids,orig_filenames,orig_mime_types,resp_fuids,resp_filenames,resp_mime_types,post_body"
  enabled          = true
}

resource "sumologic_field_extraction_rule" "corelight-dhcp" {
  name             = "Corelight dhcp logs"
  scope            = "_sourcename=*/dhcp_20*"
  parse_expression = "parse \"*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\" as ts,uids,client_addr,server_addr,mac,host_name,client_fqdn,domain,requested_addr,assigned_addr,lease_time,client_message,server_message,msg_types,duration"
  enabled          = true
}