package com.netplus.sunyardlib;

import org.apache.commons.lang.StringUtils;

import java.util.List;

import socsi.middleware.emvl2lib.EmvApi;

public class CardReadResult {

    private final int cardResultCode;

    private String applicationPrimaryAccountNumber;
    private String cardHolderName;
    private String track2Data;
    private String applicationPANSequenceNumber;
    private String cryptogram;
    private String issuerApplicationData;
    private String unpredictableNumber;
    private String applicationTransactionCounter;
    private String terminalVerificationResults;
    private String transactionDate;
    private String transactionType;
    private String amount;
    private String transactionCurrencyCode;
    private String applicationInterchangeProfile;
    private String terminalCountryCode;
    private String cashBackAmount;
    private String terminalCapabilities;
    private String cardholderVerificationMethod;
    private String terminalType;
    private String deviceSerialNumber;
    private String authorizationResponseCode;
    private String applicationVersionNumber;
    private String transactionSequenceNumber;
    private String expirationDate;
    private String hexData;


    public CardReadResult(int cardResultCode, List<Tlv> tlvList, String hexData) {
        this.cardResultCode = cardResultCode;
        this.hexData = hexData;
        extractValues(tlvList);
    }

    private void extractValues(List<Tlv> tlvList) {
        for (Tlv tlv : tlvList) {
            switch (tlv.getTag()) {
                case "5A":
                    this.applicationPrimaryAccountNumber = tlv.getValue();
                    break;
                case "5F20":
                    this.cardHolderName = tlv.getValue();
                    break;
                case "57":
                    this.track2Data = tlv.getValue();
                    break;
                case "5F34":
                    this.applicationPANSequenceNumber = StringUtils.leftPad(tlv.getValue(), 3, '0');
                    break;
                case "9F27":
                    this.cryptogram = tlv.getValue();
                    break;
                case "9F37":
                    this.unpredictableNumber = tlv.getValue();
                    break;
                case "9F36":
                    this.applicationTransactionCounter = tlv.getValue();
                    break;
                case "95":
                    this.terminalVerificationResults = tlv.getValue();
                    break;
                case "9A":
                    this.transactionDate = tlv.getValue();
                    break;
                case "9C":
                    this.transactionType = tlv.getValue();
                    break;
                case "9F02":
                    this.amount = tlv.getValue();
                    break;
                case "5F24":
                    if(tlv.getValue().length() == 6)
                        this.expirationDate = tlv.getValue();
                    else if (tlv.getValue().length() == 4)
                        this.transactionCurrencyCode = tlv.getValue();
                    break;
                case "82":
                    this.applicationInterchangeProfile = tlv.getValue();
                    break;
                case "9F1A":
                    this.terminalCountryCode = tlv.getValue();
                    break;
                case "9F03":
                    this.cashBackAmount = tlv.getValue();
                    break;
                case "9F33":
                    this.terminalCapabilities = tlv.getValue();
                    break;
                case "9F34":
                    this.cardholderVerificationMethod = tlv.getValue();
                    break;
                case "9F35":
                    this.terminalType = tlv.getValue();
                    break;
                case "9F1E":
                    this.deviceSerialNumber = tlv.getValue();
                    break;
                case "84":
                    this.authorizationResponseCode = tlv.getValue();
                    break;
                case "9F09":
                    this.applicationVersionNumber = tlv.getValue();
                    break;
                case "9F41":
                    this.transactionSequenceNumber = tlv.getValue();
                    break;

            }
        }
    }

    public String getApplicationPrimaryAccountNumber() {
        return applicationPrimaryAccountNumber;
    }

    public String getCardHolderName() {
        return cardHolderName;
    }

    public String getTrack2Data() {
        return track2Data;
    }

    public String getApplicationPANSequenceNumber() {
        return applicationPANSequenceNumber;
    }

    public String getCryptogram() {
        return cryptogram;
    }

    public String getIssuerApplicationData() {
        return issuerApplicationData;
    }

    public String getUnpredictableNumber() {
        return unpredictableNumber;
    }

    public String getApplicationTransactionCounter() {
        return applicationTransactionCounter;
    }

    public String getTerminalVerificationResults() {
        return terminalVerificationResults;
    }

    public String getTransactionDate() {
        return transactionDate;
    }

    public String getTransactionType() {
        return transactionType;
    }

    public String getAmount() {
        return amount;
    }

    public String getTransactionCurrencyCode() {
        return transactionCurrencyCode;
    }

    public String getApplicationInterchangeProfile() {
        return applicationInterchangeProfile;
    }

    public String getTerminalCountryCode() {
        return terminalCountryCode;
    }

    public String getCashBackAmount() {
        return cashBackAmount;
    }

    public String getTerminalCapabilities() {
        return terminalCapabilities;
    }

    public String getCardholderVerificationMethod() {
        return cardholderVerificationMethod;
    }

    public String getTerminalType() {
        return terminalType;
    }

    public String getDeviceSerialNumber() {
        return deviceSerialNumber;
    }

    public String getAuthorizationResponseCode() {
        return authorizationResponseCode;
    }

    public String getApplicationVersionNumber() {
        return applicationVersionNumber;
    }

    public String getTransactionSequenceNumber() {
        return transactionSequenceNumber;
    }

    public String getExpirationDate() {
        return expirationDate;
    }

    public boolean isEMVTransGoOnline() {
        return cardResultCode == EmvApi.EMV_TRANS_GOONLINE;
    }

    public boolean isEMVTransQPBOCGOOnline() {
        return cardResultCode == EmvApi.EMV_TRANS_QPBOC_GOONLINE;
    }

    public int getReadResultCode() {
        return cardResultCode;
    }

    @Override
    public String toString() {
        return "CardReadResult{" +
                "cardResultCode=" + cardResultCode +
                ", applicationPrimaryAccountNumber='" + applicationPrimaryAccountNumber + '\'' +
                ", cardHolderName='" + cardHolderName + '\'' +
                ", track2Data='" + track2Data + '\'' +
                ", applicationPANSequenceNumber='" + applicationPANSequenceNumber + '\'' +
                ", cryptogram='" + cryptogram + '\'' +
                ", issuerApplicationData='" + issuerApplicationData + '\'' +
                ", unpredictableNumber='" + unpredictableNumber + '\'' +
                ", applicationTransactionCounter='" + applicationTransactionCounter + '\'' +
                ", terminalVerificationResults='" + terminalVerificationResults + '\'' +
                ", transactionDate='" + transactionDate + '\'' +
                ", transactionType='" + transactionType + '\'' +
                ", amount='" + amount + '\'' +
                ", transactionCurrencyCode='" + transactionCurrencyCode + '\'' +
                ", applicationInterchangeProfile='" + applicationInterchangeProfile + '\'' +
                ", terminalCountryCode='" + terminalCountryCode + '\'' +
                ", cashBackAmount='" + cashBackAmount + '\'' +
                ", terminalCapabilities='" + terminalCapabilities + '\'' +
                ", cardholderVerificationMethod='" + cardholderVerificationMethod + '\'' +
                ", terminalType='" + terminalType + '\'' +
                ", deviceSerialNumber='" + deviceSerialNumber + '\'' +
                ", authorizationResponseCode='" + authorizationResponseCode + '\'' +
                ", applicationVersionNumber='" + applicationVersionNumber + '\'' +
                ", transactionSequenceNumber='" + transactionSequenceNumber + '\'' +
                ", expirationDate='" + expirationDate + '\'' +
                '}';
    }

    public String getICCRelateData() {
        return hexData;
    }

    public boolean isEMVAccepted() {
        return cardResultCode == EmvApi.EMV_TRANS_ACCEPT || cardResultCode == EmvApi.EMV_TRANS_QPBOC_ACCEPT;
    }
}
