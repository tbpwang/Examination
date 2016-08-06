package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * Created at 221
 * 16-7-9 上午11:21.
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class User extends BaseModel {
    private Integer id;
    private String username;
    private String password;
    private String role;

    private List<Info> infos;
}
