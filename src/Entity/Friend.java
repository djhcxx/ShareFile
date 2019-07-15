package Entity;


public class Friend {

  private long friendid;
  private String selfaccount;
  private String faccount;


  public long getFriendid() {
    return friendid;
  }

  public void setFriendid(long friendid) {
    this.friendid = friendid;
  }


  public String getSelfaccount() {
    return selfaccount;
  }

  public void setSelfaccount(String selfaccount) {
    this.selfaccount = selfaccount;
  }


  public String getFaccount() {
    return faccount;
  }

  public void setFaccount(String faccount) {
    this.faccount = faccount;
  }

}
