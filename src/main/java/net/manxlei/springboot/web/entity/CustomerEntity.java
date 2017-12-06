
package net.manxlei.springboot.web.entity;

import javax.persistence.*;

@Entity
@Table(name = "tbl_customer")
public class CustomerEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(nullable = false)
	String name;
	@Column(nullable = true)
	String job;
	@Column(nullable = true)
	String company;
	@Column(nullable = true)
	String rating;
	@Column(nullable = true)
	String ratingScore;
	@Column(nullable = true)
	String detail;
	/**
	 * @return the id
	 */
	public int getId() {
		return this.id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return this.name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the job
	 */
	public String getJob() {
		return this.job;
	}
	/**
	 * @param job the job to set
	 */
	public void setJob(String job) {
		this.job = job;
	}
	/**
	 * @return the company
	 */
	public String getCompany() {
		return this.company;
	}
	/**
	 * @param company the company to set
	 */
	public void setCompany(String company) {
		this.company = company;
	}
	/**
	 * @return the rating
	 */
	public String getRating() {
		return this.rating;
	}
	/**
	 * @param rating the rating to set
	 */
	public void setRating(String rating) {
		this.rating = rating;
	}
	/**
	 * @return the ratingScore
	 */
	public String getRatingScore() {
		return this.ratingScore;
	}
	/**
	 * @param ratingScore the ratingScore to set
	 */
	public void setRatingScore(String ratingScore) {
		this.ratingScore = ratingScore;
	}
	/**
	 * @return the detail
	 */
	public String getDetail() {
		return this.detail;
	}
	/**
	 * @param detail the detail to set
	 */
	public void setDetail(String detail) {
		this.detail = detail;
	}

	

}
