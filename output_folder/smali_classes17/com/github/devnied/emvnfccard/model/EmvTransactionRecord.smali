.class public Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;
.super Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;
.source "EmvTransactionRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean<",
        "Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x61d9403acfb001acL


# instance fields
.field private amount:Ljava/lang/Float;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        format = "BCD_Format"
        index = 0x1
        size = 0x30
        tag = "9f02"
    .end annotation
.end field

.field private currency:Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0x4
        size = 0x10
        tag = "5f2a"
    .end annotation
.end field

.field private cyptogramData:Ljava/lang/String;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0x2
        readHexa = true
        size = 0x8
        tag = "9f27"
    .end annotation
.end field

.field private date:Ljava/util/Date;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        dateStandard = 0x1
        format = "yyMMdd"
        index = 0x5
        size = 0x18
        tag = "9a"
    .end annotation
.end field

.field private terminalCountry:Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0x3
        size = 0x10
        tag = "9f1a"
    .end annotation
.end field

.field private time:Ljava/util/Date;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        dateStandard = 0x1
        format = "HHmmss"
        index = 0x7
        size = 0x18
        tag = "9f21"
    .end annotation
.end field

.field private transactionType:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0x6
        readHexa = true
        size = 0x8
        tag = "9c"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/Float;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->amount:Ljava/lang/Float;

    return-object v0
.end method

.method public getCurrency()Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->currency:Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;

    return-object v0
.end method

.method public getCyptogramData()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->cyptogramData:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getTerminalCountry()Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->terminalCountry:Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->time:Ljava/util/Date;

    return-object v0
.end method

.method public getTransactionType()Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->transactionType:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Float;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/Float;

    .line 135
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->amount:Ljava/lang/Float;

    .line 136
    return-void
.end method

.method public setCurrency(Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;)V
    .locals 0
    .param p1, "currency"    # Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;

    .line 165
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->currency:Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;

    .line 166
    return-void
.end method

.method public setCyptogramData(Ljava/lang/String;)V
    .locals 0
    .param p1, "cyptogramData"    # Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->cyptogramData:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .line 194
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->date:Ljava/util/Date;

    .line 195
    return-void
.end method

.method public setTerminalCountry(Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;)V
    .locals 0
    .param p1, "terminalCountry"    # Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;

    .line 155
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->terminalCountry:Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;

    .line 156
    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .line 213
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->time:Ljava/util/Date;

    .line 214
    return-void
.end method

.method public setTransactionType(Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;)V
    .locals 0
    .param p1, "transactionType"    # Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    .line 175
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->transactionType:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    .line 176
    return-void
.end method
