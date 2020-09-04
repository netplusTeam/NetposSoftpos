package com.netplus.sunyardlib;

import com.socsi.smartposapi.printer.Align;
import com.socsi.smartposapi.printer.FontLattice;
import com.socsi.smartposapi.printer.FontType;
import com.socsi.smartposapi.printer.PrintRespCode;
import com.socsi.smartposapi.printer.Printer2;
import com.socsi.smartposapi.printer.TextEntity;

import io.reactivex.Single;

/**
 * ReceiptBuilder
 */
public class ReceiptBuilder {

    private FontType mCh = FontType.SIMSUM, mEn = FontType.SIMSUM;
    private Printer2 printer;

    private String title;
    private String merchantName;
    private String terminalId;
    private String transactionType;
    private String stan;
    private String dateTime;
    private String amount;
    private String cardScheme;
    private String cardNumber;
    private String cardHolderName;
    private String authorizationCode;
    private String transactionStatus;
    private String responseCode;
    private String aid;
    private String rrn;
    private String appName;
    private String appVersion;
    private String receiptCopy;

    public ReceiptBuilder() {
        this.printer = Printer2.getInstance();
    }

    public ReceiptBuilder appendTitle(String title) {
        this.title = title;
        return this;
    }

    public ReceiptBuilder appendAddress(String merchantName) {
        this.merchantName = merchantName;
        return this;
    }

    public ReceiptBuilder appendTerminalId(String terminalId) {
        this.terminalId = terminalId;
        return this;
    }

    public ReceiptBuilder appendTransactionType(String transactionType) {
        this.transactionType = transactionType;
        return this;
    }

    public ReceiptBuilder appendStan(String stan) {
        this.stan = stan;
        return this;
    }

    public ReceiptBuilder appendDateTime(String dateTime) {
        this.dateTime = dateTime;
        return this;
    }

    public ReceiptBuilder appendAmount(String amount) {
        this.amount = amount;
        return this;
    }

    public ReceiptBuilder appendCardScheme(String cardScheme) {
        this.cardScheme = cardScheme;
        return this;
    }

    public ReceiptBuilder appendCardNumber(String number) {
        this.cardNumber = number;
        return this;
    }

    public ReceiptBuilder appendCardHolderName(String cardHolderName) {
        this.cardHolderName = cardHolderName;
        return this;
    }

    public ReceiptBuilder appendAuthorizationCode(String authCode) {
        this.authorizationCode = authCode;
        return this;
    }

    public ReceiptBuilder appendTransactionStatus(String transactionStatus) {
        this.transactionStatus = transactionStatus;
        return this;
    }

    public ReceiptBuilder appendResponseCode (String responseCode) {
        this.responseCode = responseCode;
        return this;
    }

    public ReceiptBuilder appendAID(String aid) {
        this.aid = aid;
        return this;
    }

    public ReceiptBuilder appendRRN(String rrn) {
        this.rrn = rrn;
        return this;
    }

    public ReceiptBuilder appendAppName(String appName) {
        this.appName = appName;
        return this;
    }

    public ReceiptBuilder appendAppVersion(String appVersion) {
        this.appVersion = appVersion;
        return this;
    }

    public ReceiptBuilder isCustomerCopy() {
        this.receiptCopy = "**** CUSTOMER COPY ****";
        return this;
    }

    public ReceiptBuilder isMerchantCopy() {
        this.receiptCopy = "**** MERCHANT COPY ****";
        return this;
    }


    public Single<PrintRespCode> print() {

        if(title != null)
            appendTextEntity(title);

        if(merchantName != null)
            appendTextEntity(merchantName);

        if(terminalId != null) {
            appendTextEntity("TERMINAL ID: " + terminalId);
            appendTextEntity("\n\n");
        }

        if(transactionType != null) {
            appendTextEntityFontSixteenCenter(transactionType);
            appendTextEntity("\n\n");
        }

        if(stan != null)
            appendTextEntityBold("STAN: " + stan);

        if(dateTime != null) {
            appendTextEntity("DATE/TIME: " + dateTime);
            appendTextEntity("\n");
        }

        if(amount != null) {
            appendTextEntityBold("AMOUNT: " + amount);
            appendTextEntity("\n");
        }

        if(rrn != null) {
            appendTextEntity("TRANS REF: " + rrn);
            appendTextEntity("\n");
        }

        if(cardScheme != null)
            appendTextEntity(cardScheme);

        if(cardNumber != null) {
            appendTextEntity(cardNumber);
            appendTextEntity("\n");
        }

        if(cardHolderName != null) {
            appendTextEntity(cardHolderName);
            appendTextEntity("EXPIRY DATE: **/**");
        }

        if(authorizationCode != null) {
            appendTextEntity("AUTHORIZATION CODE: " + authorizationCode);
            appendTextEntity("\n\n");
        }

        if(transactionStatus != null) {
            appendTextEntityFontSixteenCenter(transactionStatus);
            appendTextEntity("\n\n");
        }

        if(responseCode != null)
            appendTextEntity("RESPONSE CODE: " + responseCode);

        if(aid != null)
            appendTextEntity("AID: " + aid);

        if(rrn != null)
            appendTextEntity("RRN: " + rrn);

        if(appName != null && appVersion != null) {
            appendTextEntity(appName + " " + appVersion);
            appendTextEntity("\n\n");
        }

        if(receiptCopy != null) {
            appendTextEntity("Powered by NetPlus");
            appendTextEntityCenter(receiptCopy);
        }

        PrintRespCode respCode = printer.startPrint();

        return Single.just(respCode);

    }


    private void printLine(){
        appendTextEntity("-------------------------------");
    }

    private int appendTextEntity(String str) {
        int i = printer.appendTextEntity2(new TextEntity(str, mCh, mEn, FontLattice.TWENTY_FOUR, false, Align.LEFT,true));
        return i;
    }

    private int appendTextEntityBold(String str) {
        int i = printer.appendTextEntity2(new TextEntity(str, mCh, mEn, FontLattice.TWENTY_FOUR, true, Align.LEFT,true));
        return i;
    }

    private int appendTextEntityFontSixteen(String str) {
        int i = printer.appendTextEntity2(new TextEntity(str,mCh, mEn, FontLattice.FORTY_EIGHT, true, Align.LEFT,true));
        return i;
    }

    private int appendTextEntityFontSixteenCenter(String str) {
        int i = printer.appendTextEntity2(new TextEntity(str,mCh, mEn, FontLattice.FORTY_EIGHT, true, Align.CENTER,true));
        return i;
    }

    private int appendTextEntityCenter(String str) {
        int i = printer.appendTextEntity2(new TextEntity(str, mCh, mEn, FontLattice.TWENTY_FOUR, false, Align.CENTER,true));
        return i;
    }


}
