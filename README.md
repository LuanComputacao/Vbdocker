# Docker on Vagrant

## What?
A [Vagrant](https://www.vagrantup.com/) machine with [Debian](https://www.debian.org) that have the Docker installed and configured.

## Why?
* **VirtualBox no longer works after the docker environment instalation.**
  The known issue:

      README FIRST for Docker Toolbox and Docker Machine users: Docker for Windows requires Microsoft Hyper-V to run.
      The Docker for Windows installer enables Hyper-V for you, if needed, and restart your machine. After Hyper-V
      is enabled, VirtualBox no longer works, but any VirtualBox VM images remain
      (https://docs.docker.com/docker-for-windows/install/)

* To enjoy your Windows environment and **all the power of the Linux** environment and containners managed by the Tux


## How?
Using the Docker on an Vagrant VirtualBox that have a [Debian 9.4](https://www.debian.org/News/2018/20180310)

## What is necessary?
### Requirements
* more than 3GB RAM
* [VirtualBox isntalled](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant isntalled](https://www.vagrantup.com/docs/installation/)
* [Vagrant VirtualBox Pluggin installed](https://github.com/dotless-de/vagrant-vbguest)
* [SSH key available](https://help.github.com/en/enterprise/2.15/user/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
* a directory in
  * Linux: `~/workspace`
  * Windows: `%HOMEDRIVE%%HOMEPATH%\workspace`

## Running the environment
* Open a command line tool __(cmd, GitBash, Console2, PowerShell)__
* Clone this repository
* Enter into the folder/diretory
* Run the initializer
  * init.bat for windows
  * init.sh for linux
* Run `$ vagrant up`

## Using the Vagrant Debian VirtualBox
* In the root of this project run `$ vagrant ssh`
* Test the docker using the command `docker run hello-world`


## Web Connection
### Containners connection
Keep in mind that you have 3 levels of network
```
-> Guest(your windows)
  `-> Vbdocker machine
      `-> Docker instance
```

### VirtualBox IP
The VirtualBox IP is ìn the file `$HOME/.vbdocker/Vbdocker.yaml`


### Ports
You can forward the Docker ports to the VirtualBox as
```
docker run -ti --name some-nginx-server -p 8080:80 -d nginx
```

So you can connect with this server using a browser with the IP and port 

**Firefox**: http://192.168.10.25:8080/

**Microsoft things that is not really a browser**: Not works? Kkkkkk...Try to search the necessary configuration for this browser

## Initial configuration

* ip: "192.168.10.25"
* memory: 512
* cpus: 1
* Shared folders:
  * host: `~/workspace/`
  * vbdocker: `/home/vagrant/workspace/`


## If this not works
If you have this error
```
Bringing machine 'default' up with 'virtualbox' provider...Failed to locate the powershell executable on the available PATH. Pleaseensure powershell is installed and available on the local PATH, thenrun the command again
```
You will need to suply the `PATH` variable in yout `Environment Variables` editing the `System variables`
```
C:\Windows\System32\WindowsPowerShell\v1.0
```
and if you have the Git installed
```
C:\Program Files\Git\cmd
```


```

                    -oydmNNmdyo.                             
                  :mNNNNNNNNNNNNy`                           
                 /NNNNNNNNNNNNNNNm`                          
                 mNNNNNNNNNNNNNNNNs                          
                .MmoodNNNy:.:yNNNNm                          
                .N--: dNy :y- yNNNM`                         
                `N.yN:+s+-mNy sNNNM.                         
                 md/-`. . `:::NNNNM`                         
                `N-.       -- sNNNN:                         
                +Nh::.......-:/NNNNd`                        
               -NNo .------`   sNNNNd.                       
              /NNN.            `dNNNNN+                      
            .hNNN/              .NNNNNNd-                    
           /NmNNs                :NNhNNNNo                   
          sNdhNy                  :NNhdNNNh`                 
        `hNdyNh                    :NNyhNNNd`                
        hNN+Nm`                     +NN:NNNNy                
       oNNsyN-                       hN/yNNNN-               
      `NNN+od                        -o`yNNNNo               
      -MNNm.:                       yNNmhssdNo               
      +h+ohm+`                    ++NNNNNNNoN-               
    -s:    -mNh/                 // :mNNNy:.-++              
 ++/-       .mNNm+               h`   .`      s.             
o:           `dNNNh              h            .y.            
+/             oNds             -s             `o:           
/+              .s.            .y.              .y           
h                 sho:.```.:+smNo           `:++:            
o+-.`             .NNNNNNNNNNNNM.         /+/.               
  .-:////+:`     .s/:-``   ``.-/o      `/o.                  
          `://///:              .+////+/.                    



                                    ........                                            
                                   `yssssssy                                            
                                   `yssssssy                                            
                                   `yssssssy                                            
                      `ysssssssssssshyssssyy                -o-`                        
                      `hyyyyyyysssssyyyyyysy               :yoss-                       
                      `hyyyyyyysssssyyyyyysy               yo++oy/                      
                ://///+hyyyyyyysssssyyyyyyyh//////-        ho+++oy------.               
                oyyysssyssssssysysysyssssssyyyyyyy/        os++++yssssssss:             
                oyyysssyssssysysysssyssssssyyyyyyy/        .ys++oooooossy+`             
          `.....syyysssyssssssysyssshssssssysyyyyy+....--:/ossoosssssso/.               
          :yssoossssssssooooossssssssooooossosssssoooooooooooosy+--..``                 
     `:.  /yoo++ooo+++++++++++osoo+++++++++oso+++++++++++ossssyo`   `:.                 
  `.:+so+/+hyyyyyhyyssssssssyyyhhyyssssssyyhhyyyssssssssyyhyyys:::/+oso:.`              
  ````````.yyyysssssssssssssssssssssssssssssssssssssssyyyyyyy/````````````              
           /hyyysssssssssssso+ossssssssssssssssssssyyyyyyyys-                           
            +yyyyssssssssssoos/sssssssssssssssssyyyyyyyyys/`                            
             /yyyysssssssossooosssssssssssssyyyyyyyyyyys/`                              
              .oo/::::--...+sssssssssssyyyyyyyyyyyyys+-`                                
                .++/:-.....-/osyyyyyyyyyyyyyyyyyys+-`                                   
                  `-/++/::----/osyyyyyyyyyysso/-.`                                      
                      `-:://++++ossoo++/:-.``                                          

```
