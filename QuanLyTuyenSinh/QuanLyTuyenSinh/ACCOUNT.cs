
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

namespace QuanLyTuyenSinh
{
    using System;
    using System.Collections.Generic;
    using System.Data;

    public class ACCOUNT
    {
        private int iD;
        private string namePerson;
        private string userName;
        private string pass;
        private int typePerson;
        
        public int ID { private get => iD; set => iD = value; }
        public string UserName { get => userName; set => userName = value; }
        public string Pass { private get => pass; set => pass = value; }
        
        public string NamePerson { get => namePerson; set => namePerson = value; }
        public int TypePerson { get => typePerson; set => typePerson = value; }

        public ACCOUNT(string username, int typeuser)
        {
           // this.ID = id;
            this.UserName = username;
           //this.Pass = pass;
            this.TypePerson = typeuser;
        }

        public ACCOUNT(DataRow row)
        {
            // this.ID = (int)row["ID"];
            this.NamePerson = row["NamePerson"].ToString();
            this.UserName = row["UserName"].ToString();
           // this.Pass = row["Pass"].ToString();
            this.TypePerson = (int)row["TypePerson"];
        }
    }


}
