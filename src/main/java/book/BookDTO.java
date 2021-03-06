package book;

public class BookDTO {
	//멤버변수
	private int id;
	private String title;
	private String author;
	private int price;
	private int qty;
	//getter,setter, 생성자2개(기본,매), toString()
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public BookDTO() {

	}
	public BookDTO(int id, String title, String author, int price, int qty) {
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.price = price;
		this.qty = qty;
	}
	@Override
	public String toString() {
		return "BookDTO [id=" + id + ", title=" + title + ", author=" + author + ", price=" + price + ", qty=" + qty
				+ "]";
	}

}
