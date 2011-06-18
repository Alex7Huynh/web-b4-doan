using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Xml.Linq;
using System.Timers;
using System.Threading;
using System.IO;
using BUS;
using DAO;

namespace TaskSchedulerSample
{
    public class Task
    {
        #region Fields

        System.Timers.Timer timer = null;

        #endregion

        #region Properties

        public string Name { get; set; }

        public bool IsRunning { get; set; }

        public DateTime LastRunTime { get; set; }

        public bool IsLastRunSuccessful { get; set; }

        public double Interval { get; set; }

        public bool Stopped { get; set; }

        public int MaTinRaoVat { get; set; }

        public int LoaiTinRaoVat { get; set; }

        public int chitiethosotuyendung { get; set; }

        #endregion

        #region Public Constructors 

        public Task(double interval, int matinraovat,int loaitinraovat,int chitiethosotuyendung)
        {
            this.Interval = interval;
            this.MaTinRaoVat = matinraovat;
            this.LoaiTinRaoVat = loaitinraovat;
            this.chitiethosotuyendung = chitiethosotuyendung;
            Initialize();
        }

        #endregion

        #region Public Methods

        public void Start()
        {
            this.Stopped = false;
            this.StartTask();
        }

        public void Stop()
        {
            this.Stopped = true;
        }

        #endregion

        #region Private Methods

        private void Initialize()
        {
            this.Stopped = false;

            timer = new System.Timers.Timer(this.Interval);
            timer.Elapsed += new ElapsedEventHandler(timer_Elapsed);
            timer.Enabled = true;
        }

        private void StartTask()
        {
            
            if (!this.Stopped)
            {
                Execute();

               

            }
        }

        private void Execute()
        {
            try
            {
                this.IsRunning = true;

                this.LastRunTime = DateTime.Now;
                // loaitinraovat: 1: tinraovatthuong ; 2:tinraovatbatdongsan;3:tintuyendung: 4:hstd, cthstd
                // them tin rao vat tu dong vao co so du lieu

                TINRAOVAT tinraovat = new TINRAOVAT();
               
                tinraovat = TinRaoVatBUS.TimTinRaoVatTheoMa(this.MaTinRaoVat);
                tinraovat.MaTinRaoVat = default(int);
                TinRaoVatBUS.ThemTinRaoVat(tinraovat);
                if (this.LoaiTinRaoVat == 1)
                {
                    TINRAOVATTHUONG tinraovatthuong = new TINRAOVATTHUONG();
                    tinraovatthuong = TinRaoVatThuongBUS.TimTinRaoVatThuongTheoMaTinRaoVat(this.MaTinRaoVat);
                    tinraovatthuong.MaTinRaoVatThuong = default(int);
                    tinraovatthuong.MaTinRaoVat = tinraovat.MaTinRaoVat;
                    bool kiemtra = false;
                    kiemtra = TinRaoVatThuongBUS.ThemTinRaoVatThuong(tinraovatthuong);
                }

                if (this.LoaiTinRaoVat == 2)
                {
                    TINRAOVATBATDONGSAN tinraovatbatdongsan = new TINRAOVATBATDONGSAN();
                    tinraovatbatdongsan = TinRaoVatBatDongSanBUS.TimTinRaoVatBatDongSanTheoMaTinRaoVat(this.MaTinRaoVat);
                    tinraovatbatdongsan.MaTinRaoVatBatDongSan = default(int);
                    tinraovatbatdongsan.MaTinRaoVat = tinraovat.MaTinRaoVat;
                    bool kiemtra = false;
                    kiemtra = TinRaoVatBatDongSanBUS.ThemTinRaoVatBatDongSan(tinraovatbatdongsan);

                }

                if (this.LoaiTinRaoVat == 3)
                {
                    TINTUYENDUNG tintuyendung = new TINTUYENDUNG();
                    tintuyendung = TinTuyenDungBUS.TimTinTuyenDungTheoMaTinRaoVat(this.MaTinRaoVat);
                    tintuyendung.MaTinTuyenDung = default(int);
                    tintuyendung.MaTinRaoVat = tinraovat.MaTinRaoVat;
                    bool kiemtra = false;
                    kiemtra = TinTuyenDungBUS.ThemTinTuyenDung(tintuyendung);
                }

                if (this.LoaiTinRaoVat == 4)
                {
                    HOSOTUYENDUNG hosotuyendung = new HOSOTUYENDUNG();
                    hosotuyendung = HoSoTuyenDungBUS.TimHoSoTuyenDungTheoMaTinRaoVat(this.MaTinRaoVat);
                    hosotuyendung.MaHoSoTuyenDung = default(int);
                    hosotuyendung.MaTinRaoVat = tinraovat.MaTinRaoVat;
                    bool kiemtra = false;
                    kiemtra = HoSoTuyenDungBUS.ThemHoSoTuyenDung(hosotuyendung);
                    
                    CHITIETHOSOTUYENDUNG chitiethosotuyendung = new CHITIETHOSOTUYENDUNG();
                    chitiethosotuyendung = ChiTietHoSoTuyenDungBUS.TimChiTietHoSoTuyenDungTheoMa(this.chitiethosotuyendung);
                    chitiethosotuyendung.MaHoSoTuyenDung = hosotuyendung.MaHoSoTuyenDung;
                    ChiTietHoSoTuyenDungBUS.ThemChiTietHoSoTuyenDung(chitiethosotuyendung);
                }

                this.IsLastRunSuccessful = true;
            }
            catch
            {
                this.IsLastRunSuccessful = false;
                // Handle the exception
            }
            finally
            {
                this.IsRunning = false;
            }
        }

        void timer_Elapsed(object sender, ElapsedEventArgs e)
        {
            if (!this.IsRunning)
                StartTask();
        }

        #endregion
    }
}
