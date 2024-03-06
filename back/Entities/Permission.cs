using back.Entities.Common;
using back.Enums;

namespace back.Entities
{
    public class Permission : BaseEntity
    {
        public int DaysAmount { get; set; }
        public DateTime Date { get; set; }

        public string StatusId { get; set; }
        public PermissionStatus Status { get; set; }

        public string ProfileId { get; set; }
        public UserProfile Profile { get; set; }

        public string TypeId { get; set; }
        public PermissionType Type { get; set; }

    }
}
