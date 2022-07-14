package member;

public class MemberDTO {
    private String userid;
    private String pw;
    private String name;

    public MemberDTO() {
    }

    public MemberDTO(String userid, String pw, String name) {
        this.userid = userid;
        this.pw = pw;
        this.name = name;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "MemberDTO{" +
                "userid='" + userid + '\'' +
                ", pw='" + pw + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
