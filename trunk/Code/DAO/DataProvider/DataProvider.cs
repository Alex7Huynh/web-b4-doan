using System;
using System.Data;
using System.Linq;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;

public class DataProvider
{
    private static SqlConnection _con = null;

    static DataProvider()
    {
        string strConnection = @"Data Source=.\SQLEXPRESS;Initial Catalog=RAO_VAT;Integrated Security=True;Pooling=False";
        _con = new SqlConnection(strConnection);
    }

    public DataTable ExecuteQuery(string strQuery)
    {
        DataTable resTable = new DataTable();

        try
        {
            _con.Open();

            SqlDataAdapter adapter = new SqlDataAdapter(strQuery, _con);

            adapter.Fill(resTable);
        }
        catch (Exception ex)
        {
            throw new Exception("Loi khi thuc thi lenh SQL: " + ex.Message);
        }
        finally
        {
            _con.Close();
        }

        return resTable;
    }

    public DataTable ExecuteStoreProc(string storeProcName, IList<string> arrParameterName, ArrayList arrParameterValue)
    {
        DataTable resTable = null;

        try
        {
            _con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = storeProcName;
            cmd.CommandType = CommandType.StoredProcedure;

            //Lay so parameter
            int N = arrParameterName.Count;
            for (int i = 0; i < N; i++)
            {
                SqlParameter sqlParam = new SqlParameter(arrParameterName[i], arrParameterValue[i]);
                cmd.Parameters.Add(sqlParam);
            }

            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(resTable);

            _con.Close();
        }
        catch (Exception ex)
        {
            throw new Exception("Loi khi thuc thi store procedure: " + ex.Message);
        }

        return resTable;
    }
}