/**
 * 
 */
package org.dimigo.vo;

/**
 * <pre>
 * org.dimigo.vo
 *  |_ UserVO
 *
 * 1. 개요 : 
 * 2. 작성일 : 2017. 9. 26.
 * </pre>
 *
 * @author      : shinjuyoung
 * @version     : 1.0
 */
public class UserVO {
	
	private String id;
	private String name;
	private String nickname;
	
	public UserVO() {}
	
	/**
	 * @param id
	 * @param name
	 * @param nickname
	 */
	public UserVO(String id, String name, String nickname) {
		super();
		this.id = id;
		this.name = name;
		this.nickname = nickname;
	}
	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the nickname
	 */
	public String getNickname() {
		return nickname;
	}
	/**
	 * @param nickname the nickname to set
	 */
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	
	
	public void SignUp{
		// 어디있는지 모름
		try{
			//excutQurty : SECLETE
			//excutQury :
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
			throw new Exception("사용자 등록에 실패하였습니다");
			
		}finally {
			if(pstmt != null) pstmt.close();
			
		}
	}

}
