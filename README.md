### Question-1: Create a EKS cluster using terraform and create VPC, IAM roles, worker nodes, enable logging for EKS through cloud watch.

Cluster is created.

![Screenshot 2024-07-18 202058](https://github.com/user-attachments/assets/f7269a1e-ecee-487f-9c11-ceb866236633)

Node group

![Screenshot 2024-07-18 202155](https://github.com/user-attachments/assets/622b5bf5-f476-4bc1-996e-e7f5cef4dbdf)

Node group and worker node(from command run in XShell)

![Screenshot 2024-07-18 202611](https://github.com/user-attachments/assets/ad7669b4-d94d-44db-807b-eff940e3f03d)

VPC is created.

![Screenshot 2024-07-18 203245](https://github.com/user-attachments/assets/614ae0b3-f9d2-4c7a-a65d-28a2379c4e30)

Necessary IAM Roles

![Screenshot 2024-07-18 203426](https://github.com/user-attachments/assets/2e23ac74-3647-450e-8865-de2e5bcfedaa)
![Screenshot 2024-07-18 203634](https://github.com/user-attachments/assets/4221f2bf-a318-4147-b217-612c6a435d5e)

eks_cluster_role

![Screenshot 2024-07-18 205738](https://github.com/user-attachments/assets/cb9cb3b2-ae66-48bc-ac5c-76035d4ccf7a)

eks_worker_node_role

![Screenshot 2024-07-18 212752](https://github.com/user-attachments/assets/878d7dcc-64be-438c-96bc-b3603be9078e)

eks_worker_node_role permissions

![Screenshot 2024-07-18 213016](https://github.com/user-attachments/assets/df2499d1-3abe-4b07-9e06-694a6df94c5c)

EKS logs in CloudWatch

![Screenshot 2024-07-18 212621](https://github.com/user-attachments/assets/1c12cc2d-3883-407d-b92f-d0e6326845a2)


### Question-2: Enable state locking using terraform through s3 and DynamoDB.

s3 bucket created

![Screenshot 2024-07-18 234225](https://github.com/user-attachments/assets/f61412df-65b1-4fe1-9db0-3543a3f2e976)

No State file inside s3 bucket (Error) // The backend.tf file is not executed properly.

![Screenshot 2024-07-18 234959](https://github.com/user-attachments/assets/ded00972-e6d7-41bb-8ed8-e89b8ccfddfd)

Table created in DynamoDB

![Screenshot 2024-07-18 234747](https://github.com/user-attachments/assets/0cc29370-37c2-4af2-879e-978e4c65180c)

No State Locking-Lock Id (Error) // The backend.tf file is not executed properly.

![Screenshot 2024-07-18 235101](https://github.com/user-attachments/assets/cdc15d66-9401-4e5f-96c9-c2f2207a61f4)

This is an individual project of during summer internship-3 on ‘DevOps Masters’ course.
