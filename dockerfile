FROM frappe/erpnext:v15.23.1

# Install git
RUN apt-get update && apt-get install -y git

# Set work directory
WORKDIR /home/frappe/frappe-bench

# Update ERPNext and install HRMS
RUN bench update --patch && bench --site erpnext install-app hrms
