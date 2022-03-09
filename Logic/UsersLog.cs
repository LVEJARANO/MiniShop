using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Logic
{
    public class UsersLog
    {
        UsersDat objUse = new UsersDat();

        public DataSet showUsers()
        {
            return objUse.showUsers();
        }
        public bool saveUsers(string _mail, string _password, string _salt, string _state)
        {
            return objUse.saveUsers(_mail, _password, _salt, _state);
        }
        public bool updateUsers(int _id, string _mail, string _password, string _salt, string _state)
        {
            return objUse.updateUsers(_id, _mail, _password, _salt, _state);
        }
    }
}