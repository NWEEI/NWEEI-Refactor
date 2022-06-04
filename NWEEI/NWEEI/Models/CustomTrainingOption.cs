using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NWEEI.Models
{
    public class CustomTrainingOption
    {
        private List<TrainingDetail> trainingDetails = new List<TrainingDetail>();

        public int CustomTrainingOptionID { get; set; }

        [Required(ErrorMessage = "Custom training option name is required.")]
        public string Name { get; set; }

        public List<TrainingDetail> TrainingDetails { get { return trainingDetails; } }
    }

    public class TrainingDetail
    {
        public TrainingDetail() { }

        public TrainingDetail(string detail) { Detail = detail; }

        public int TrainingDetailID { get; set; }

        public string Detail { get; set; }

        [ForeignKey("TrainingOptionID")]
        public CustomTrainingOption TrainingOption { get; set; }
    }
}
