package commonUtils.domain;

import commonUtils.enumeration.TaskType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created by SinjinSong on 2017/5/25.
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TaskDescription {
    private TaskType type;
    private String desc;
}
