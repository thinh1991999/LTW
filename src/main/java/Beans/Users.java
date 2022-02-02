package Beans;

import java.util.ArrayList;

import DB.AllProductDB;

public class Users {
	ArrayList<User> users;
	public Users() {
		AllProductDB all=new AllProductDB();
		users=all.getAllUser();
	}
	public ArrayList<User> getUsers() {
		return users;
	}
	public void setUsers(ArrayList<User> users) {
		this.users = users;
	}
	
	public void addUser(User u) {
		this.users.add(u);
	}
	
	public boolean checked(User u) {
		for(User uu:this.users) {
			if(u.getUserName().equals(uu.getUserName())) {
				return false;
			}
		}
		return true;
	}
}
