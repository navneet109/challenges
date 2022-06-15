resource "aws_db_instance" "rds_assessment" {

    allocated_storage               = 30
    storage_type                    = "gp2"
    engine                          = "mysql"
    engine_version                  = "5.7.38"
    instance_class                  = "db.t3.medium"
    name                            = "myrds_assessment"
    username                        = "admin"
    password                        = "12345678"
    multi_az                        = true
    port                            = 3306
    db_subnet_group_name            = var.out_rdssubnetgroup
    vpc_security_group_ids          = [var.rdsmysqlsg]
    tags                            = {
            name                    = "RDS MySQL assessment"
    }

  
}
