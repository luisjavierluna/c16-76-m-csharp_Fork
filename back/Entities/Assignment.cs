using back.Entities.Common;

namespace back.Entities
{
    public class Assignment : BaseEntity
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        
        public string StatusId { get; set; }
        public AssignmentStatus Status { get; set; }

        public string ProfileId { get; set; }
        public UserProfile Profile { get; set; }
    }
}
