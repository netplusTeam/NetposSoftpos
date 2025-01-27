.class public Lcom/github/devnied/emvnfccard/model/EmvTrack2;
.super Lcom/github/devnied/emvnfccard/model/AbstractData;
.source "EmvTrack2.java"


# static fields
.field private static final serialVersionUID:J = -0x2854a9213e30936fL


# instance fields
.field private cardNumber:Ljava/lang/String;

.field private expireDate:Ljava/util/Date;

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

    .line 72
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireDate()Ljava/util/Date;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->expireDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRaw()[B
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->raw:[B

    return-object v0
.end method

.method public getService()Lcom/github/devnied/emvnfccard/model/Service;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->service:Lcom/github/devnied/emvnfccard/model/Service;

    return-object v0
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->cardNumber:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setExpireDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "expireDate"    # Ljava/util/Date;

    .line 95
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->expireDate:Ljava/util/Date;

    .line 96
    return-void
.end method

.method public setRaw([B)V
    .locals 0
    .param p1, "raw"    # [B

    .line 65
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->raw:[B

    .line 66
    return-void
.end method

.method public setService(Lcom/github/devnied/emvnfccard/model/Service;)V
    .locals 0
    .param p1, "service"    # Lcom/github/devnied/emvnfccard/model/Service;

    .line 110
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->service:Lcom/github/devnied/emvnfccard/model/Service;

    .line 111
    return-void
.end method
