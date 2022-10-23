## alb_lb

resource "aws_lb" "nginx" {
  name="aws-lb-test"
  internal = false
  load_balancer_type = "application"
  security_groups = [ aws_security_group.alb_sg_test.id]
  subnets = [ aws_subnet.subnet1.id,aws_subnet.subnet2.id ]

   tags = local.common_tags
}

resource "aws_lb_listener" "aws_lb_test" {

    load_balancer_arn = aws_lb.nginx.arn
    port = "80"
    protocol = "HTTP"

    default_action {
        type             = "forward"
        target_group_arn = aws_alb_target_group.tg_grp.arn
    }
  tags = local.common_tags
}

resource "aws_alb_target_group" "tg_grp" {
  name="aws-target-grp"
  target_type = "instance"
  port        = 80
  protocol    = "HTTP"
  vpc_id = aws_vpc.vpc.id
  tags = local.common_tags
}

resource "aws_alb_target_group_attachment" "tg_grp_attmnt1" {
  target_group_arn = aws_alb_target_group.tg_grp.arn
  target_id = aws_instance.nginx1.id
  port=80
}
resource "aws_alb_target_group_attachment" "tg_grp_attmnt2" {
  target_group_arn = aws_alb_target_group.tg_grp.arn
  target_id = aws_instance.nginx2.id
  port=80
}