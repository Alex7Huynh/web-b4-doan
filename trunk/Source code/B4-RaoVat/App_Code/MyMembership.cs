using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using DAO;
/// <summary>
/// Summary description for MyMembership
/// </summary>
public class MyMembershipProvider : MembershipProvider
{
    public MyMembershipProvider()
    {
        //
        // TODO: Add constructor logic here
        //

    }

    public override string ApplicationName
    {
        get
        {
            //throw new NotImplementedException();
            return AppDomain.CurrentDomain.BaseDirectory;
        }
        set
        {
            //throw new NotImplementedException();
        }
    }

    public override bool ChangePassword(string username, string oldPassword, string newPassword)
    {
        //throw new NotImplementedException();
        RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
        NGUOIDUNG user = db.NGUOIDUNGs.SingleOrDefault(p => p.TenNguoiDung == username && p.MatKhau == oldPassword);
        if (user != null)
        {
            user.MatKhau = newPassword;
            db.SubmitChanges();
            return true;
        }
        return false;
    }

    public override bool ChangePasswordQuestionAndAnswer(string username, string password, string newPasswordQuestion, string newPasswordAnswer)
    {
        throw new NotImplementedException();

    }

    public override MembershipUser CreateUser(string username, string password, string email, string passwordQuestion, string passwordAnswer, bool isApproved, object providerUserKey, out MembershipCreateStatus status)
    {
        //throw new NotImplementedException();
        RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();

        if (string.IsNullOrEmpty(username) || username.ToLower().Contains("admin"))
        {
            status = MembershipCreateStatus.DuplicateUserName;
            return null;
        }

        if (db.NGUOIDUNGs.Where(p => p.TenNguoiDung.ToLower() == username.ToLower()).Count() > 0)
        {
            status = MembershipCreateStatus.DuplicateUserName;
            return null;
        }

        if (db.NGUOIDUNGs.Where(p => p.Email == email).Count() > 0)
        {
            status = MembershipCreateStatus.DuplicateEmail;
            return null;
        }

        NGUOIDUNG ng = new NGUOIDUNG();
        {
            ng.Email = email;
            ng.MatKhau = password;
            ng.TenNguoiDung = username;
        }

        db.NGUOIDUNGs.InsertOnSubmit(ng);
        db.SubmitChanges();
        status = MembershipCreateStatus.Success;

        MembershipUser user = new MembershipUser(base.Name, ng.TenNguoiDung, providerUserKey, ng.Email, string.Empty, string.Empty, true, false, DateTime.Now, DateTime.Now, DateTime.Now, DateTime.Now, DateTime.Now);
        return user;
    }

    public override bool DeleteUser(string username, bool deleteAllRelatedData)
    {
       // throw new NotImplementedException();
        return true;
    }

    public override bool EnablePasswordReset
    {
        //get { throw new NotImplementedException(); }
        get { return true; }
    }

    public override bool EnablePasswordRetrieval
    {
        //get { throw new NotImplementedException(); }
        get { return false; }
    }

    public override MembershipUserCollection FindUsersByEmail(string emailToMatch, int pageIndex, int pageSize, out int totalRecords)
    {
        //throw new NotImplementedException();
        //Khai bao danh sach user
        MembershipUserCollection list = new MembershipUserCollection();
        RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();

        totalRecords = db.NGUOIDUNGs.Count();
        foreach(NGUOIDUNG us in db.NGUOIDUNGs.Where(p => p.Email == emailToMatch).Skip(pageIndex).Take(pageSize))
            list.Add(new MembershipUser(base.Name,us.TenNguoiDung,null, us.Email,string.Empty,string.Empty,true,false,DateTime.Now,DateTime.Now,DateTime.Now,DateTime.Now,DateTime.Now));
        return list;
    }

    public override MembershipUserCollection FindUsersByName(string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
    {
        //throw new NotImplementedException();
        //Khai bao danh sach user
        MembershipUserCollection list = new MembershipUserCollection();
        RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();

        totalRecords = db.NGUOIDUNGs.Count();
         foreach(NGUOIDUNG us in db.NGUOIDUNGs.Where(p => p.TenNguoiDung == usernameToMatch).Skip(pageIndex).Take(pageSize))
            list.Add(new MembershipUser(base.Name,us.TenNguoiDung,null, us.Email,string.Empty,string.Empty,true,false,DateTime.Now,DateTime.Now,DateTime.Now,DateTime.Now,DateTime.Now));
        return list;
    }

    public override MembershipUserCollection GetAllUsers(int pageIndex, int pageSize, out int totalRecords)
    {
        //throw new NotImplementedException();
                //Khai bao danh sach user
        MembershipUserCollection list = new MembershipUserCollection();
        RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();

        totalRecords = db.NGUOIDUNGs.Count();
         foreach(NGUOIDUNG us in db.NGUOIDUNGs.Skip(pageIndex).Take(pageSize))
            list.Add(new MembershipUser(base.Name,us.TenNguoiDung,null, us.Email,string.Empty,string.Empty,true,false,DateTime.Now,DateTime.Now,DateTime.Now,DateTime.Now,DateTime.Now));
        return list;
    }

    public override int GetNumberOfUsersOnline()
    {
        //throw new NotImplementedException();
        return 0;
    }

    public override string GetPassword(string username, string answer)
    {
       // throw new NotImplementedException();
        // Tạo một kết nối
        RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
        NGUOIDUNG ng = db.NGUOIDUNGs.SingleOrDefault(p => p.TenNguoiDung == username && p.Email == answer);
        if (ng != null)
            return ng.MatKhau;
        return string.Empty;

    }

    public override MembershipUser GetUser(string username, bool userIsOnline)
    {
       // throw new NotImplementedException();
        RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
        NGUOIDUNG ng = db.NGUOIDUNGs.SingleOrDefault(p => p.TenNguoiDung == username);
        if (ng != null)
            return new MembershipUser(base.Name, ng.TenNguoiDung, null, ng.Email, string.Empty, string.Empty, true, false, DateTime.Now, DateTime.Now, DateTime.Now, DateTime.Now, DateTime.Now);
        return null;
    }

    public override MembershipUser GetUser(object providerUserKey, bool userIsOnline)
    {
        //throw new NotImplementedException();
        return null;
    }

    public override string GetUserNameByEmail(string email)
    {
        //throw new NotImplementedException();
        RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
        NGUOIDUNG ng = db.NGUOIDUNGs.SingleOrDefault(p => p.Email == email);
        if (ng != null)
            return ng.TenNguoiDung;
        return string.Empty;
    }

    public override int MaxInvalidPasswordAttempts
    {
       // get { throw new NotImplementedException(); }
        get {return 3; }
    }

    public override int MinRequiredNonAlphanumericCharacters
    {
        //get { throw new NotImplementedException(); }
        get { return 0; }
    }

    public override int MinRequiredPasswordLength
    {
        //get { throw new NotImplementedException(); }
        get { return 20; }
    }

    public override int PasswordAttemptWindow
    {
        //get { throw new NotImplementedException(); }
        get { return 3; }
    }

    public override MembershipPasswordFormat PasswordFormat
    {
       // get { throw new NotImplementedException(); }
        get { return MembershipPasswordFormat.Hashed; }
    }

    public override string PasswordStrengthRegularExpression
    {
        //get { throw new NotImplementedException(); }
        get { return string.Empty; }
    }

    public override bool RequiresQuestionAndAnswer
    {
        //get { throw new NotImplementedException(); }

        get { return false; }
    }

    public override bool RequiresUniqueEmail
    {
       // get { throw new NotImplementedException(); }
        get { return true; }
    }

    public override string ResetPassword(string username, string answer)
    {
        //throw new NotImplementedException();
        RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
        NGUOIDUNG ng = db.NGUOIDUNGs.SingleOrDefault(p => p.TenNguoiDung == username);
        if (ng != null)
        {

            return ng.MatKhau;
        }
      
        //NGUOIDUNG ng = db.NGUOIDUNGs.SingleOrDefault(p => p.TenNguoiDung == username && p.Email == answer);
        //if (ng != null)
        //    return ng.MatKhau;
        return null;

    }

    public override bool UnlockUser(string userName)
    {
       // throw new NotImplementedException();
        return true;
    }

    public override void UpdateUser(MembershipUser user)
    {
        //throw new NotImplementedException();
        RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
        NGUOIDUNG ng = db.NGUOIDUNGs.SingleOrDefault(p => p.TenNguoiDung == user.UserName && p.Email == user.Email);
        if (ng != null)
        {
            ng.TenNguoiDung = user.UserName;
            ng.Email = user.Email;

            db.SubmitChanges();
        }
    }

    public override bool ValidateUser(string username, string password)
    {
       // throw new NotImplementedException();
        RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
        NGUOIDUNG ng = db.NGUOIDUNGs.SingleOrDefault(p => p.TenNguoiDung == username && p.MatKhau == password);
        return (ng != null);
    }
}
