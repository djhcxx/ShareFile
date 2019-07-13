package Entity;


public class Good {

  private long goodid;
  private String gname;
  private long gprice;
  private long number;
  private String category;
  private String briefintroduction;
  private String showlink;
  private long belongstore;


  public long getGoodid() {
    return goodid;
  }

  public void setGoodid(long goodid) {
    this.goodid = goodid;
  }


  public String getGname() {
    return gname;
  }

  public void setGname(String gname) {
    this.gname = gname;
  }


  public long getGprice() {
    return gprice;
  }

  public void setGprice(long gprice) {
    this.gprice = gprice;
  }


  public long getNumber() {
    return number;
  }

  public void setNumber(long number) {
    this.number = number;
  }


  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category;
  }


  public String getBriefintroduction() {
    return briefintroduction;
  }

  public void setBriefintroduction(String briefintroduction) {
    this.briefintroduction = briefintroduction;
  }


  public String getShowlink() {
    return showlink;
  }

  public void setShowlink(String showlink) {
    this.showlink = showlink;
  }


  public long getBelongstore() {
    return belongstore;
  }

  public void setBelongstore(long belongstore) {
    this.belongstore = belongstore;
  }

}
