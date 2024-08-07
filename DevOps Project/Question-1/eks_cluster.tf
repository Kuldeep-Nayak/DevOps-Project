resource "aws_eks_cluster" "my-cluster" {
    name = "my-cluster"
    role_arn = "aws_iam_role.eks_cluster_role.arn

    vpc_config {
        subnet_ids = [aws_subnet.eks_subnet_1.id, aws_subnet.eks_subnet_2.id]
        endpoint_public_access = true
    }
    tags = {
        Name = "my-cluster"
    }
}

resource "aws_eks_node_group" "my-node-group" {
    cluster_name = aws_eks_cluster.my-cluster.name
    node_group_name = "my-node-group"
    node_role_arn = aws_iam_role.eks_worker_node_role.arn
    subnet_ids = [aws_subnet.eks_subnet_1.id, aws_subnet.eks_subnet_2.id]

    scaling_config {
        desired_size = 2
        max_size = 3
        min_size = 1
    }

    ami_type = "AL2_x86_64"
    disk_size = 20
    instance_types = ["t3.medium"]

    tags = {
        Name = "my-node-group"
    }
}

resource "aws_iam_role_policy_attachment" "eks_worker_node_policy" {
    role = aws_iam_role.eks_worker_node_role.name
    policy_arn = "arn:aws:iam:aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_role_policy_attachment" "eks_cni_policy" {
    role = aws_iam_role.eks_worker_node_role.name
    policy_arn = "arn:aws:iam:aws:policy/AmazonEKS_CNI_Policy"
}
resource "aws_iam_role_policy_attachment" "eks_ecr_read_only" {
    role = aws_iam_role.eks_worker_node_role.name
    policy_arn = "arn:aws:iam:aws:policy/AmazonEC2ContainerRegistryReadOnly"
}