# Instalar Docker en Linux CentOS
```````````
1. Instalar S.O. linux {CentOS | AlmaLinux}
2. Actualizar repositorios { yum update -y | apt-get update -y}
2.1 Si error en CentOS:  "Failed to download metadata for repo ‘appstream’: Cannot prepare internal mirrorlist: No URLs in mirrorlist"
2.1.a Probar https://proyectoa.com/solucion-al-error-failed-to-download-metadata-for-repo-appstream-en-centos-8/, o
2.1.b Quitar lineas con comentario (#baseurl=) de archivos .repo de /etc/yum.repos.d/* 
3. Probar de actualizar nuevamente los repositorios
3.1 Si error:
3.1.1 desinstalar runc:  sudo apt-get remove runc 
3.1.2 Probar de actualizar nuevamente los repositorios {apt-get update -y | yum update -y}
3.1.3 Instalar docker para la versión de linux siguiendo la documentacion oficial. Por ejemplo:  https://docs.docker.com/engine/install/centos/
3.1.4 Volver a instalar runc: yum install runc

```````````
