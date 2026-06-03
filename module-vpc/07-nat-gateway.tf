resource "aws_nat_gateway" "name" {
    count         = var.create_elastic_ip ? var.countsub : 0
    allocation_id = aws_eip.elastic-ip[count.index].id
    subnet_id     = aws_subnet.public_subnet[count.index].id
    connectivity_type = "public"    # ← add this line

    tags = {
        Name        = "${var.environment}-nat-gateway-${count.index + 1}"
        Environment = var.environment
    }

    depends_on = [aws_internet_gateway.igw]  # ← also add this
}