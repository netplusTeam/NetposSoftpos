.class public Lorg/jpos/core/Card$Builder;
.super Ljava/lang/Object;
.source "Card.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/core/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static DEFAULT_CARD_VALIDATOR:Lorg/jpos/core/CardValidator;


# instance fields
.field private cvv:Ljava/lang/String;

.field private cvv2:Ljava/lang/String;

.field private exp:Ljava/lang/String;

.field private pan:Ljava/lang/String;

.field private serviceCode:Ljava/lang/String;

.field private track1:Lorg/jpos/core/Track1;

.field private track1Builder:Lorg/jpos/core/Track1$Builder;

.field private track2:Lorg/jpos/core/Track2;

.field private track2Builder:Lorg/jpos/core/Track2$Builder;

.field private validator:Lorg/jpos/core/CardValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Lorg/jpos/core/DefaultCardValidator;

    invoke-direct {v0}, Lorg/jpos/core/DefaultCardValidator;-><init>()V

    sput-object v0, Lorg/jpos/core/Card$Builder;->DEFAULT_CARD_VALIDATOR:Lorg/jpos/core/CardValidator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {}, Lorg/jpos/core/Track1;->builder()Lorg/jpos/core/Track1$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Card$Builder;->track1Builder:Lorg/jpos/core/Track1$Builder;

    .line 155
    invoke-static {}, Lorg/jpos/core/Track2;->builder()Lorg/jpos/core/Track2$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Card$Builder;->track2Builder:Lorg/jpos/core/Track2$Builder;

    .line 156
    sget-object v0, Lorg/jpos/core/Card$Builder;->DEFAULT_CARD_VALIDATOR:Lorg/jpos/core/CardValidator;

    iput-object v0, p0, Lorg/jpos/core/Card$Builder;->validator:Lorg/jpos/core/CardValidator;

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Lorg/jpos/core/Card$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jpos/core/Card$1;

    .line 145
    invoke-direct {p0}, Lorg/jpos/core/Card$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/jpos/core/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/core/Card$Builder;

    .line 145
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->pan:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jpos/core/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/core/Card$Builder;

    .line 145
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->exp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jpos/core/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/core/Card$Builder;

    .line 145
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->cvv2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jpos/core/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/core/Card$Builder;

    .line 145
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jpos/core/Card$Builder;)Lorg/jpos/core/Track1;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/core/Card$Builder;

    .line 145
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->track1:Lorg/jpos/core/Track1;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jpos/core/Card$Builder;)Lorg/jpos/core/Track2;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/core/Card$Builder;

    .line 145
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->track2:Lorg/jpos/core/Track2;

    return-object v0
.end method


# virtual methods
.method public build()Lorg/jpos/core/Card;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/InvalidCardException;
        }
    .end annotation

    .line 221
    new-instance v0, Lorg/jpos/core/Card;

    invoke-direct {v0, p0}, Lorg/jpos/core/Card;-><init>(Lorg/jpos/core/Card$Builder;)V

    .line 222
    .local v0, "c":Lorg/jpos/core/Card;
    iget-object v1, p0, Lorg/jpos/core/Card$Builder;->validator:Lorg/jpos/core/CardValidator;

    if-eqz v1, :cond_0

    .line 223
    invoke-interface {v1, v0}, Lorg/jpos/core/CardValidator;->validate(Lorg/jpos/core/Card;)V

    .line 224
    :cond_0
    return-object v0
.end method

.method public cvv(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;
    .locals 0
    .param p1, "cvv"    # Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lorg/jpos/core/Card$Builder;->cvv:Ljava/lang/String;

    return-object p0
.end method

.method public cvv2(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;
    .locals 0
    .param p1, "cvv2"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lorg/jpos/core/Card$Builder;->cvv2:Ljava/lang/String;

    return-object p0
.end method

.method public exp(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;
    .locals 0
    .param p1, "exp"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lorg/jpos/core/Card$Builder;->exp:Ljava/lang/String;

    return-object p0
.end method

.method public isomsg(Lorg/jpos/iso/ISOMsg;)Lorg/jpos/core/Card$Builder;
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/InvalidCardException;
        }
    .end annotation

    .line 185
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/Card$Builder;->pan(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;

    .line 187
    :cond_0
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/Card$Builder;->exp(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;

    .line 189
    :cond_1
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lorg/jpos/core/Card$Builder;->track2Builder:Lorg/jpos/core/Track2$Builder;

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jpos/core/Track2$Builder;->track(Ljava/lang/String;)Lorg/jpos/core/Track2$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/core/Track2$Builder;->build()Lorg/jpos/core/Track2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/Card$Builder;->track2(Lorg/jpos/core/Track2;)Lorg/jpos/core/Card$Builder;

    .line 191
    :cond_2
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    iget-object v1, p0, Lorg/jpos/core/Card$Builder;->track1Builder:Lorg/jpos/core/Track1$Builder;

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jpos/core/Track1$Builder;->track(Ljava/lang/String;)Lorg/jpos/core/Track1$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/core/Track1$Builder;->build()Lorg/jpos/core/Track1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/Card$Builder;->track1(Lorg/jpos/core/Track1;)Lorg/jpos/core/Card$Builder;

    .line 193
    :cond_3
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->pan:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->track2:Lorg/jpos/core/Track2;

    if-eqz v0, :cond_4

    .line 194
    invoke-virtual {v0}, Lorg/jpos/core/Track2;->getPan()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/Card$Builder;->pan(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;

    .line 195
    :cond_4
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->pan:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->track1:Lorg/jpos/core/Track1;

    if-eqz v0, :cond_5

    .line 196
    invoke-virtual {v0}, Lorg/jpos/core/Track1;->getPan()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/Card$Builder;->pan(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;

    .line 197
    :cond_5
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->exp:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->track2:Lorg/jpos/core/Track2;

    if-eqz v0, :cond_6

    .line 198
    invoke-virtual {v0}, Lorg/jpos/core/Track2;->getExp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/Card$Builder;->exp(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;

    .line 199
    :cond_6
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->exp:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->track1:Lorg/jpos/core/Track1;

    if-eqz v0, :cond_7

    .line 200
    invoke-virtual {v0}, Lorg/jpos/core/Track1;->getExp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/Card$Builder;->exp(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;

    .line 201
    :cond_7
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->track2:Lorg/jpos/core/Track2;

    if-eqz v0, :cond_a

    .line 202
    iget-object v1, p0, Lorg/jpos/core/Card$Builder;->pan:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 203
    invoke-virtual {v0}, Lorg/jpos/core/Track2;->getPan()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/Card$Builder;->pan(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;

    .line 204
    :cond_8
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->exp:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 205
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->track2:Lorg/jpos/core/Track2;

    invoke-virtual {v0}, Lorg/jpos/core/Track2;->getExp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/Card$Builder;->exp(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;

    .line 206
    :cond_9
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->serviceCode:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 207
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->track2:Lorg/jpos/core/Track2;

    invoke-virtual {v0}, Lorg/jpos/core/Track2;->getServiceCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/Card$Builder;->serviceCode(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;

    .line 209
    :cond_a
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->track1:Lorg/jpos/core/Track1;

    if-eqz v0, :cond_d

    .line 210
    iget-object v1, p0, Lorg/jpos/core/Card$Builder;->pan:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 211
    invoke-virtual {v0}, Lorg/jpos/core/Track1;->getPan()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/Card$Builder;->pan(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;

    .line 212
    :cond_b
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->exp:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 213
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->track1:Lorg/jpos/core/Track1;

    invoke-virtual {v0}, Lorg/jpos/core/Track1;->getExp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/Card$Builder;->exp(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;

    .line 214
    :cond_c
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->serviceCode:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 215
    iget-object v0, p0, Lorg/jpos/core/Card$Builder;->track1:Lorg/jpos/core/Track1;

    invoke-virtual {v0}, Lorg/jpos/core/Track1;->getServiceCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/Card$Builder;->serviceCode(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;

    .line 217
    :cond_d
    return-object p0
.end method

.method public pan(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;
    .locals 0
    .param p1, "pan"    # Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lorg/jpos/core/Card$Builder;->pan:Ljava/lang/String;

    return-object p0
.end method

.method public serviceCode(Ljava/lang/String;)Lorg/jpos/core/Card$Builder;
    .locals 0
    .param p1, "serviceCode"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lorg/jpos/core/Card$Builder;->serviceCode:Ljava/lang/String;

    return-object p0
.end method

.method public track1(Lorg/jpos/core/Track1;)Lorg/jpos/core/Card$Builder;
    .locals 0
    .param p1, "track1"    # Lorg/jpos/core/Track1;

    .line 177
    iput-object p1, p0, Lorg/jpos/core/Card$Builder;->track1:Lorg/jpos/core/Track1;

    .line 178
    return-object p0
.end method

.method public track2(Lorg/jpos/core/Track2;)Lorg/jpos/core/Card$Builder;
    .locals 0
    .param p1, "track2"    # Lorg/jpos/core/Track2;

    .line 181
    iput-object p1, p0, Lorg/jpos/core/Card$Builder;->track2:Lorg/jpos/core/Track2;

    .line 182
    return-object p0
.end method

.method public validator(Lorg/jpos/core/CardValidator;)Lorg/jpos/core/Card$Builder;
    .locals 0
    .param p1, "validator"    # Lorg/jpos/core/CardValidator;

    .line 165
    iput-object p1, p0, Lorg/jpos/core/Card$Builder;->validator:Lorg/jpos/core/CardValidator;

    .line 166
    return-object p0
.end method

.method public withTrack1Builder(Lorg/jpos/core/Track1$Builder;)Lorg/jpos/core/Card$Builder;
    .locals 0
    .param p1, "track1Builder"    # Lorg/jpos/core/Track1$Builder;

    .line 169
    iput-object p1, p0, Lorg/jpos/core/Card$Builder;->track1Builder:Lorg/jpos/core/Track1$Builder;

    .line 170
    return-object p0
.end method

.method public withTrack2Builder(Lorg/jpos/core/Track2$Builder;)Lorg/jpos/core/Card$Builder;
    .locals 0
    .param p1, "track2Builder"    # Lorg/jpos/core/Track2$Builder;

    .line 173
    iput-object p1, p0, Lorg/jpos/core/Card$Builder;->track2Builder:Lorg/jpos/core/Track2$Builder;

    .line 174
    return-object p0
.end method
