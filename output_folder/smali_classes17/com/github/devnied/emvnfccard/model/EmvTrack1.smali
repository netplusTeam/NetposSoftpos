.class public Lcom/github/devnied/emvnfccard/model/EmvTrack1;
.super Lcom/github/devnied/emvnfccard/model/AbstractData;
.source "EmvTrack1.java"


# static fields
.field private static final serialVersionUID:J = 0x5bde01d458aaaa97L


# instance fields
.field private cardNumber:Ljava/lang/String;

.field private expireDate:Ljava/util/Date;

.field private formatCode:Ljava/lang/String;

.field private holderFirstname:Ljava/lang/String;

.field private holderLastname:Ljava/lang/String;

.field private raw:[B

.field private service:Lcom/github/devnied/emvnfccard/model/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/github/devnied/emvnfccard/model/AbstractData;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireDate()Ljava/util/Date;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->expireDate:Ljava/util/Date;

    return-object v0
.end method

.method public getFormatCode()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->formatCode:Ljava/lang/String;

    return-object v0
.end method

.method public getHolderFirstname()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->holderFirstname:Ljava/lang/String;

    return-object v0
.end method

.method public getHolderLastname()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->holderLastname:Ljava/lang/String;

    return-object v0
.end method

.method public getRaw()[B
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->raw:[B

    return-object v0
.end method

.method public getService()Lcom/github/devnied/emvnfccard/model/Service;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->service:Lcom/github/devnied/emvnfccard/model/Service;

    return-object v0
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->cardNumber:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setExpireDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "expireDate"    # Ljava/util/Date;

    .line 110
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->expireDate:Ljava/util/Date;

    .line 111
    return-void
.end method

.method public setFormatCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "formatCode"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->formatCode:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setHolderFirstname(Ljava/lang/String;)V
    .locals 0
    .param p1, "holderFirstname"    # Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->holderFirstname:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setHolderLastname(Ljava/lang/String;)V
    .locals 0
    .param p1, "holderLastname"    # Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->holderLastname:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setRaw([B)V
    .locals 0
    .param p1, "raw"    # [B

    .line 80
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->raw:[B

    .line 81
    return-void
.end method

.method public setService(Lcom/github/devnied/emvnfccard/model/Service;)V
    .locals 0
    .param p1, "service"    # Lcom/github/devnied/emvnfccard/model/Service;

    .line 170
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->service:Lcom/github/devnied/emvnfccard/model/Service;

    .line 171
    return-void
.end method
