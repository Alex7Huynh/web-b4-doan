using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Xml.Linq;
using BUS;
using DAO;


namespace TaskSchedulerSample
{
    public class TaskScheduler
    {
        #region Fields

        Task task = null;

        #endregion

        #region Public Constructors

        public TaskScheduler(double Interval,int matinraovat,int loaitinraovat,int chitiethosotuyendung)
        {
            Initialize( Interval,matinraovat,loaitinraovat,chitiethosotuyendung);
        }

        #endregion

        #region Public Methods

        public void StartTask()
        {
            this.task.Start();
        }

        public void StopTask()
        {
            this.task.Stop();
        }

        #endregion

        #region Public Constructors

        private void Initialize(double Interval,int matinraovat,int loaitinraovat,int chitiethosotuyendung)
        {
            this.task = new Task(Interval,matinraovat,loaitinraovat,chitiethosotuyendung);
            
        }

        #endregion
    }
}
