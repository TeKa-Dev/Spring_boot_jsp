package com.sign;

import javax.validation.constraints.Size;

public class User {

    @Size(min = 3, max = 10, message = "name must be min 3, max 10 symbols")
    private String name;
    private int age;
    private String sex;
    private boolean isMarried;
    private String pass;

    private final int[] ages = new int[82];
    private final String[] sexes = new String[] {"male", "female", "unknown"};

    public User() {
        for (int i = 0; i < ages.length; i++) {
            ages[i] = i + 18;
        }
    }

    public void setName(String name) {this.name = name;}
    public void setAge(int age) {this.age = age;}
    public void setSex(String sex) {this.sex = sex;}
    public void setMarried(boolean isMarried) {this.isMarried = isMarried;}
    public void setPass(String pass) {this.pass = pass;}



    public String getName() {return name;}
    public int getAge() {return age;}
    public String getSex() {return sex;}
    public boolean isMarried() {return isMarried;}
    public String getPass() {return pass;}

    public int[] getAges() {return ages;}
    public String[] getSexes() {return sexes;}

}
