package com.mlg.easylife.base.domain;

import com.mlg.easylife.base.utils.BitStatesUtils;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.util.StringUtils;

import java.util.Date;

import static com.mlg.easylife.base.domain.RealAuth.SEX_MALE;

/**
 * Created by 黄振强 on 2017/5/21.
 */
@Setter@Getter
public class Userinfo extends BaseDomain {
    private int version;//版本号(用作乐观锁)
    private long bitState;//用户状态码
    private String realName;//用户真实名称
    private String idNumber;//身份证
    private String phoneNumber;//用户电话号码
    private String email;//用户邮箱
    private String profile;//用户简介
    private int sex;//用户性别
    private int age;//用户年龄
    @DateTimeFormat(pattern="yyyy-MM-dd HH:ss:mm")
    private Date firsttime;// 登录时间
    @DateTimeFormat(pattern="yyyy-MM-dd HH:ss:mm")
    private Date lasttime;// 登录时间

    private Long realAuthId;//用户对应的实名认证对象

    private SystemDictionaryItem incomeGrade;//用户收入
    private SystemDictionaryItem Marriage;//用户婚姻情况
    private SystemDictionaryItem kidCount;//用户子女情况
    private SystemDictionaryItem educationBackground;//用户学历
    private SystemDictionaryItem houseCondition;//用户住房
    private int authScore;//用户风控总分数

    public String getSexDisplay() {
        return sex == SEX_MALE ? "男" : "女";
    }
    /**
     * 判断用户是否留有简介
     */
    public boolean getIsProfile(){
        if(profile==null||profile.trim().equals("")){
            return false;
        }
        return true;
    }
    /**
     * 判断用户是否视频认证
     */
    public boolean getIsVedioAuth(){
        return BitStatesUtils.hasState(bitState, BitStatesUtils.OP_VEDIO_AUTH);
    }
    /**
     * 判断用户是否点好赞
     */
    public boolean getIsAddGoodGlyphicon(){
        return BitStatesUtils.hasState(bitState, BitStatesUtils.OP_HAS_ADD_GOODGLYPHICON);
    }
    /**
     * 判断用户是否点中赞
     */
    public boolean getIsAddCommonGlyphicon(){
        return BitStatesUtils.hasState(bitState, BitStatesUtils.OP_HAS_ADD_COMMONGLYPHICON);
    }
    /**
     * 判断用户是否点差赞
     */
    public boolean getIsAddBadGlyphicon(){
        return BitStatesUtils.hasState(bitState, BitStatesUtils.OP_HAS_ADD_BADGLYPHICON);
    }
    /**
     * 判断用户是否实名认证
     */
    public boolean getIsRealAuth(){
        return 	BitStatesUtils.hasState(bitState, BitStatesUtils.OP_REAL_AUTH);
    }

    /**
     * 判断用户是否填写基本资料
     */
    public boolean getIsBasicInfo(){
        return BitStatesUtils.hasState(bitState, BitStatesUtils.OP_BASIC_INFO);
    }
    /**
     * 判断用户是否绑定银行卡
     *
     */
    public boolean getIsBindBank(){
        return BitStatesUtils.hasState(bitState, BitStatesUtils.OP_BIND_BANKINFO);
    }
    /**
     * 判断用户是否绑定手机
     *
     */
    public boolean getIsBindPhone(){
        return BitStatesUtils.hasState(bitState, BitStatesUtils.OP_BIND_PHONE);
    }
    /**
     * 判断用户是否绑定邮箱
     */
    public boolean getIsBindMail(){
        return BitStatesUtils.hasState(bitState, BitStatesUtils.OP_BIND_EMAIL);
    }

    /**
     *给用户添加一个状态
     */
    public void addState(Long state) {
        this.bitState=BitStatesUtils.addState(bitState, state);
    }

    /**
     * 判断用户是否有一个提现流程在审核之中
     * @return
     */
    public boolean getHasWithdrawInprocess() {
        return BitStatesUtils.hasState(bitState, BitStatesUtils.OP_HAS_MONEYWITHDRAW_PROCESS);
    }

    public boolean getHasBidRequestInprocess() {
        return BitStatesUtils.hasState(bitState, BitStatesUtils.OP_HAS_BIDREQUEST_PROCESS);
    }

    public void removeState(Long state) {
        this.bitState=BitStatesUtils.removeState(bitState, state);
    }

    /**
     * 获取用户真实名字的隐藏字符串，只显示姓氏
     *
     * 真实名字
     * @return
     */
    public String getAnonymousRealName() {
        if (StringUtils.hasLength(this.realName)) {
            int len = realName.length();
            String replace = "";
            replace += realName.charAt(0);
            for (int i = 1; i < len; i++) {
                replace += "*";
            }
            return replace;
        }
        return realName;
    }

    /**
     * 获取用户身份证号码
     *
     * 真实名字
     * @return
     */
    public String getAnonymousIdNumber() {
        if (StringUtils.hasLength(this.idNumber)) {
            int len = idNumber.length();
            String replace = "";
            replace += idNumber.charAt(0);
            for (int i = 1; i < len; i++) {
                replace += "*";
            }
            return replace;
        }
        return idNumber;
    }

}
