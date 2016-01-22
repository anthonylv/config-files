# Setuping up remote folder sharing on Linux with Samba

1. First make sure you have samba installed
`sudo apt-get install samba`

2. Backup the original smb.conf file and create a new one in `/etc/samba/smb.conf`.

	```
	[global]
	server string = Your Server Description
	workgroup =  WORKGROUPNAME
	netbios name = yournetbiosname
	security = user
	encrypt passwords = yes
	guest account = nobody
	name resolve order = bcast host
	include = /etc/samba/smbshared.conf
	```
 Refer to the original file for details about the configuration settings.
The include setting lets you specify share options in a separate file. This may make managing shares more convenient.

3. Add the share paths and options in `smb.conf` or create the new file specified in your include option e.g. smbshared.conf file in `/etc/samba/smbshared.conf`

 ```
 [ShareLabel]
	comment = Share Description
	path = /path/to/share
	browsable = yes
	guest ok = yes
	read only = no
	available = yes
	public = no
	writable = no
	valid users = yourunixusername
```

 Set the access permissions accordingly

4. Add a samba user

 `sudo smbpasswd -a <username>`
 
 Make sure the linux user account exists or adding will fail.

5. Add the user to `etc/samba/smbusers`

 `linux_username = smb_username`
 
 This maps usernames from the clients to the server
 For more information, see http://htyp.org/smbusers

6. If you're using a firewall, allow the Samba service. For example with `ufw`, use:

 `sudo ufw allow Samba`

7. Restart samba:

 `sudo service smbd restart`
 
 (You may have to restart your machine if restarting the service doesn't work



