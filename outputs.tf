output service_port {
    value = var.service_port
}

output service_name {
    value = var.service_name
}

output service_dns_name {
    value = aws_service_discovery_service.main.name
}
