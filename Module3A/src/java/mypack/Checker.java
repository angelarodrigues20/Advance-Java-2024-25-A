
package mypack;


public class Checker {
    
    String name, age, hobby, gender, mail, error;
    public void Checker()
    {
        error="";
    }
    public void setName(String n)
    {
        name = n;
    }
    public void setAge(String a)
    {
        age = a;
    }
    public void setHobby(String h)
    {
        hobby = h;
    }public void setGender(String g)
    {
        gender = g;
    }
    public void setMail(String m)
    {
        mail = m;
    }
    public void setError(String e)
    {
        error = e;
    }
    
    public String getName()
    {
        return name;
    }
    public String getAge()
    {
        return age;
    }
    public String getHobby()
    {
        return hobby;
    }
    public String getGender()
    {
        return gender;
    }
    public String getMail()
    {
        return mail;
    }
    public String getError()
    {
        return error;
    }
    
    public boolean validate()
    {
        boolean res = true;
        if(name.trim().equals("")||(name==null))
        {
            error += "<br> Enter First Name";
            res = false;
        }
        if(age.length()>2||(age==null))
        {
            error += "<br>Age Invalid";
            res = false;
        }
        return res;
    }
}
