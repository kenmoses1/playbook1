DESCRIPTION

 This project was all about how to create playbooks on vscode and run the on an ansible server using 
   >>Ansible-playbook command to deploy the different playbooks which i created on .code ie
    >>docker-playbooks.yaml -To install docker on the server
    >>ndodejs-playbooks.yaml -To install and run node js on the server 
    >>first-playbooks.yaml -To ping all the nodes on the environment
    >>second-playbooks.yaml -To run shell commands on the server
    >>yolo-containers-playbooks.yaml -To delpoy containers on the server

BUILT-IN WITH

  >>Docker
  >>Nodejs

INSTALATIONS

 >>Nodejs

    name: install curl 
      ansible.builtin.apt:
        name: curl
        state: present
        update_cache: yes

        - name: download nodejs
      shell: 'curl -sL https://deb.nodesource.com/setup_16.x | bash -'

    - name: install nodejs 
      ansible.builtin.apt:
        name: nodejs
        state: present
 
 >>Docker
    
    name: install packages 
      ansible.builtin.apt:
        name: 
          - ca-certificates
          - curl
          - gnupg
        state: present
        update_cache: yes

      - name: Add Dockers official GPG key
      ansible.builtin.apt_key:
        url: https://download.docker.com/linux/debian/gpg 
        state: present

       - name: Add docker repository into sources list
      ansible.builtin.apt_repository:
        repo: deb https://download.docker.com/linux/debian bullseye stable
        state: present
       
    - name: update cache
      ansible.builtin.apt:
        update_cache: yes

    - name: install docker packages 
      ansible.builtin.apt:
        name: 
          - docker-ce
          - docker-ce-cli
          - containerd.io
          - docker-buildx-plugin
          - docker-compose-plugin
          - docker-compose
        state: present
        update_cache: yes

CONTACT
   >> https://github.com/kenmoses1/playbook1.git        

