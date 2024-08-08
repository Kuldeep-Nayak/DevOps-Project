### Question-1: Create a EKS cluster using terraform and create VPC, IAM roles, worker nodes, enable logging for EKS through cloud watch.

Cluster is created.
![image](https://github.com/user-attachments/assets/d216e3bb-d1f1-47f0-8cf1-37daaace3a23)

Node group
![image](https://github.com/user-attachments/assets/4abf8a84-29ff-47a6-83ba-4e1b1221f8e6)

Node group and worker node(from command run in XShell)
![image](https://github.com/user-attachments/assets/6551e180-65a4-4faf-aa3b-fbedb1943d91)

VPC is created.
![image](https://github.com/user-attachments/assets/6a94b287-2794-4ab9-8667-56f009c901e7)

Necessary IAM Roles
![image](https://github.com/user-attachments/assets/b7408966-69de-4783-bbf9-2a67b81c52ed)
![image](https://github.com/user-attachments/assets/12ea622d-1f24-4ec7-b345-d23ff688d2ac)

eks_cluster_role
![image](https://github.com/user-attachments/assets/0286afe5-e4d5-458d-b5fc-88657ad2584e)

eks_worker_node_role
![image](https://github.com/user-attachments/assets/f0e6ff1f-6b35-446e-adf5-ff42a03eacd0)

EKS logs in CloudWatch
![image](https://github.com/user-attachments/assets/c7e59000-7293-48f0-ad4f-cda2eac5a40c)


### Question-2: Enable state locking using terraform through s3 and DynamoDB.

s3 bucket created
![image](https://github.com/user-attachments/assets/02592486-2898-4b70-ab20-3ba1a232f813)

No State file inside s3 bucket (Error)
![image](https://github.com/user-attachments/assets/f3d51ad8-fc44-441f-8cbf-a5cc3cd1894c)

Table created in DynamoDB
![image](https://github.com/user-attachments/assets/dc1cd894-8c30-4997-b1dd-b1a81bfd23ca)

No State Locking-Lock Id (Error)
![image](https://github.com/user-attachments/assets/bed71c5c-7f4f-4a85-9c05-8dd6d031fb67)
![image](https://github.com/user-attachments/assets/46217bdc-f910-4b23-b634-b5b4bfcfdfa6)


This is an individual project of during summer internship-3 on ‘DevOps Masters’ course.
