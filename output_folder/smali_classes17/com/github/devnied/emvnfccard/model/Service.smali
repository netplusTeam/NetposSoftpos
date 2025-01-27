.class public Lcom/github/devnied/emvnfccard/model/Service;
.super Lcom/github/devnied/emvnfccard/model/AbstractData;
.source "Service.java"


# static fields
.field private static final serialVersionUID:J = 0x4789de6d8ac9b518L


# instance fields
.field private serviceCode1:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

.field private serviceCode2:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

.field private serviceCode3:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "pData"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/github/devnied/emvnfccard/model/AbstractData;-><init>()V

    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 64
    new-instance v0, Lfr/devnied/bitlib/BitUtils;

    const/4 v1, 0x4

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/devnied/bitlib/BytesUtils;->fromString(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lfr/devnied/bitlib/BitUtils;-><init>([B)V

    .line 65
    .local v0, "bit":Lfr/devnied/bitlib/BitUtils;
    invoke-virtual {v0, v1}, Lfr/devnied/bitlib/BitUtils;->getNextInteger(I)I

    move-result v2

    const-class v3, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    invoke-static {v2, v3}, Lcom/github/devnied/emvnfccard/utils/EnumUtils;->getValue(ILjava/lang/Class;)Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;

    move-result-object v2

    check-cast v2, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    iput-object v2, p0, Lcom/github/devnied/emvnfccard/model/Service;->serviceCode1:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    .line 66
    invoke-virtual {v0, v1}, Lfr/devnied/bitlib/BitUtils;->getNextInteger(I)I

    move-result v2

    const-class v3, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    invoke-static {v2, v3}, Lcom/github/devnied/emvnfccard/utils/EnumUtils;->getValue(ILjava/lang/Class;)Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;

    move-result-object v2

    check-cast v2, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    iput-object v2, p0, Lcom/github/devnied/emvnfccard/model/Service;->serviceCode2:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    .line 67
    invoke-virtual {v0, v1}, Lfr/devnied/bitlib/BitUtils;->getNextInteger(I)I

    move-result v1

    const-class v2, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    invoke-static {v1, v2}, Lcom/github/devnied/emvnfccard/utils/EnumUtils;->getValue(ILjava/lang/Class;)Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;

    move-result-object v1

    check-cast v1, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    iput-object v1, p0, Lcom/github/devnied/emvnfccard/model/Service;->serviceCode3:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    .line 69
    .end local v0    # "bit":Lfr/devnied/bitlib/BitUtils;
    :cond_0
    return-void
.end method


# virtual methods
.method public getServiceCode1()Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/Service;->serviceCode1:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    return-object v0
.end method

.method public getServiceCode2()Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/Service;->serviceCode2:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    return-object v0
.end method

.method public getServiceCode3()Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/Service;->serviceCode3:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    return-object v0
.end method
