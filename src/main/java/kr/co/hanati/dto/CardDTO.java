package kr.co.hanati.dto;

import lombok.Data;

@Data
public class CardDTO {

    private String carNum; //차량번호
    private String cardNum; //카드번호
    private String cardValid1; //만료년도
    private String cardValid2; //만료일자
    private String cardOwner; //카드 소유자
    private String cardCvc; //보안코드
    private String regdate; //카드 등록 날짜
    
}