.class public Lcom/github/devnied/emvnfccard/model/EmvCard;
.super Lcom/github/devnied/emvnfccard/model/AbstractData;
.source "EmvCard.java"


# static fields
.field private static final serialVersionUID:J = 0xa396d85190a9a35L


# instance fields
.field private final applications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/model/Application;",
            ">;"
        }
    .end annotation
.end field

.field private at:Ljava/lang/String;

.field private atrDescription:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bic:Ljava/lang/String;

.field private cplc:Lcom/github/devnied/emvnfccard/model/CPLC;

.field private holderFirstname:Ljava/lang/String;

.field private holderLastname:Ljava/lang/String;

.field private iban:Ljava/lang/String;

.field private state:Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

.field private track1:Lcom/github/devnied/emvnfccard/model/EmvTrack1;

.field private track2:Lcom/github/devnied/emvnfccard/model/EmvTrack2;

.field private type:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/github/devnied/emvnfccard/model/AbstractData;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->applications:Ljava/util/List;

    .line 97
    sget-object v0, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;->UNKNOWN:Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->state:Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .line 198
    instance-of v0, p1, Lcom/github/devnied/emvnfccard/model/EmvCard;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/model/EmvCard;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/model/EmvCard;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/github/devnied/emvnfccard/model/EmvCard;

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/model/EmvCard;->getCardNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getApplications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/model/Application;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->applications:Ljava/util/List;

    return-object v0
.end method

.method public getAt()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->at:Ljava/lang/String;

    return-object v0
.end method

.method public getAtrDescription()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->atrDescription:Ljava/util/Collection;

    return-object v0
.end method

.method public getBic()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->bic:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 2

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->track2:Lcom/github/devnied/emvnfccard/model/EmvTrack2;

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->track1:Lcom/github/devnied/emvnfccard/model/EmvTrack1;

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_1
    return-object v0
.end method

.method public getCplc()Lcom/github/devnied/emvnfccard/model/CPLC;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->cplc:Lcom/github/devnied/emvnfccard/model/CPLC;

    return-object v0
.end method

.method public getExpireDate()Ljava/util/Date;
    .locals 2

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "ret":Ljava/util/Date;
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->track2:Lcom/github/devnied/emvnfccard/model/EmvTrack2;

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    .line 171
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->track1:Lcom/github/devnied/emvnfccard/model/EmvTrack1;

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    .line 174
    :cond_1
    return-object v0
.end method

.method public getHolderFirstname()Ljava/lang/String;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->holderFirstname:Ljava/lang/String;

    .line 129
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->track1:Lcom/github/devnied/emvnfccard/model/EmvTrack1;

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->getHolderFirstname()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_0
    return-object v0
.end method

.method public getHolderLastname()Ljava/lang/String;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->holderLastname:Ljava/lang/String;

    .line 106
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->track1:Lcom/github/devnied/emvnfccard/model/EmvTrack1;

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->getHolderLastname()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_0
    return-object v0
.end method

.method public getIban()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->iban:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->state:Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    return-object v0
.end method

.method public getTrack1()Lcom/github/devnied/emvnfccard/model/EmvTrack1;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->track1:Lcom/github/devnied/emvnfccard/model/EmvTrack1;

    return-object v0
.end method

.method public getTrack2()Lcom/github/devnied/emvnfccard/model/EmvTrack2;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->track2:Lcom/github/devnied/emvnfccard/model/EmvTrack2;

    return-object v0
.end method

.method public getType()Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->type:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    return-object v0
.end method

.method public setAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "at"    # Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->at:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setAtrDescription(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 217
    .local p1, "atrDescription":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->atrDescription:Ljava/util/Collection;

    .line 218
    return-void
.end method

.method public setBic(Ljava/lang/String;)V
    .locals 0
    .param p1, "bic"    # Ljava/lang/String;

    .line 312
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->bic:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setCplc(Lcom/github/devnied/emvnfccard/model/CPLC;)V
    .locals 0
    .param p1, "cplc"    # Lcom/github/devnied/emvnfccard/model/CPLC;

    .line 357
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->cplc:Lcom/github/devnied/emvnfccard/model/CPLC;

    .line 358
    return-void
.end method

.method public setHolderFirstname(Ljava/lang/String;)V
    .locals 0
    .param p1, "holderFirstname"    # Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->holderFirstname:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setHolderLastname(Ljava/lang/String;)V
    .locals 0
    .param p1, "holderLastname"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->holderLastname:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setIban(Ljava/lang/String;)V
    .locals 0
    .param p1, "iban"    # Ljava/lang/String;

    .line 331
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->iban:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setState(Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;)V
    .locals 0
    .param p1, "state"    # Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    .line 255
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->state:Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    .line 256
    return-void
.end method

.method public setTrack1(Lcom/github/devnied/emvnfccard/model/EmvTrack1;)V
    .locals 0
    .param p1, "track1"    # Lcom/github/devnied/emvnfccard/model/EmvTrack1;

    .line 293
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->track1:Lcom/github/devnied/emvnfccard/model/EmvTrack1;

    .line 294
    return-void
.end method

.method public setTrack2(Lcom/github/devnied/emvnfccard/model/EmvTrack2;)V
    .locals 0
    .param p1, "track2"    # Lcom/github/devnied/emvnfccard/model/EmvTrack2;

    .line 274
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->track2:Lcom/github/devnied/emvnfccard/model/EmvTrack2;

    .line 275
    return-void
.end method

.method public setType(Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;)V
    .locals 0
    .param p1, "type"    # Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 193
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/EmvCard;->type:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 194
    return-void
.end method
