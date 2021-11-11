using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UST.Inclusione.GestioneCattedre.BLL
{
    public class SQL_DAL
    {
        public class SP_Parameter
        {
            private string _name = string.Empty;
            private object _val = null;

            public string Name { get { return this._name; } }

            public object Val { get { return this._val; } }

            public SP_Parameter(string name, object val)
            {
                this._val = val;
                this._name = name;
            }

        }

        public static long GetDBField_LONG(object input)
        {

            long ret = long.MinValue;

            if (!input.Equals(DBNull.Value))
            {
                ret = (long)input;
            }
            return ret;
        }

        public static int GetDBField_INT(object input)
        {

            int ret = int.MinValue;

            if (!input.Equals(DBNull.Value))
            {
                ret = (int)input;
            }
            return ret;
        }



        public static string GetDBField_STRING(object input)
        {

            string ret = string.Empty;

            if (!input.Equals(DBNull.Value))
            {
                ret = input.ToString();
            }
            return ret;
        }

        public static decimal GetDBField_DECIMAL(object input)
        {

            decimal ret = 0;

            if (!input.Equals(DBNull.Value))
            {
                ret = decimal.Parse(input.ToString());
            }
            return ret;
        }


        private static string _connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["connStringInclusione"].ConnectionString;
        public static void ConnectionTest()
        {
            using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(_connectionString))
            {
                System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand("", connection);
                command.Connection.Open();
                command.Connection.Close();
            }

        }

        public List<object[]> Execute_SP(string spName)
        {
            List<object[]> records = new List<object[]>();
            using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(_connectionString))
            {
                System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand(spName, connection);
                command.Connection.Open();
                System.Data.SqlClient.SqlDataReader reader = command.ExecuteReader();

                // Call Read before accessing data.
                while (reader.Read())
                {
                    object[] values = new object[reader.FieldCount];
                    reader.GetValues(values);

                    records.Add(values);
                }

                // Call Close when done reading.
                reader.Close();

                command.Connection.Close();
            }

            return records;

        }




        public List<object[]> Execute_SP(string spName, List<SP_Parameter> parameters)
        {
            List<object[]> records = new List<object[]>();
            using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(_connectionString))
            {
                System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand(spName, connection);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Connection.Open();

                foreach (SP_Parameter par in parameters)
                {
                    command.Parameters.Add(new System.Data.SqlClient.SqlParameter(par.Name, par.Val));
                }


                System.Data.SqlClient.SqlDataReader reader = command.ExecuteReader();

                // Call Read before accessing data.
                while (reader.Read())
                {
                    object[] values = new object[reader.FieldCount];
                    reader.GetValues(values);

                    records.Add(values);
                }

                // Call Close when done reading.
                reader.Close();

                command.Connection.Close();
            }

            return records;

        }

        public int Execute_Command(string spName, List<SP_Parameter> parameters)
        {
            int numRows = 0;
            using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(_connectionString))
            {
                System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand(spName, connection);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Connection.Open();

                foreach (SP_Parameter par in parameters)
                {
                    command.Parameters.Add(new System.Data.SqlClient.SqlParameter(par.Name, par.Val));
                }

                numRows = command.ExecuteNonQuery();

                command.Connection.Close();
            }

            return numRows;
        }
        public void Execute_Command(string spName)
        {
            using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(_connectionString))
            {
                System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand(spName, connection);
                command.CommandType = System.Data.CommandType.StoredProcedure;

                command.Connection.Open();
                int numRows = command.ExecuteNonQuery();

                command.Connection.Close();
            }

        }



        public int Execute_Scalar(string spName, List<SP_Parameter> parameters)
        {
            int ret = 0;
            using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(_connectionString))
            {
                System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand(spName, connection);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Connection.Open();

                foreach (SP_Parameter par in parameters)
                {
                    command.Parameters.Add(new System.Data.SqlClient.SqlParameter(par.Name, par.Val));
                }

                ret = (int) command.ExecuteScalar();

                command.Connection.Close();
            }

            return ret;
        }


    }
}