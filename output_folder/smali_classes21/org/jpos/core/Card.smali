.class public Lorg/jpos/core/Card;
.super Ljava/lang/Object;
.source "Card.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/core/Card$Builder;
    }
.end annotation


# static fields
.field public static final BINLEN:I = 0x6


# instance fields
.field private cvv2:Ljava/lang/String;

.field private exp:Ljava/lang/String;

.field private pan:Ljava/lang/String;

.field private serviceCode:Ljava/lang/String;

.field private track1:Lorg/jpos/core/Track1;

.field private track2:Lorg/jpos/core/Track2;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jpos/core/Card$Builder;)V
    .locals 1
    .param p1, "builder"    # Lorg/jpos/core/Card$Builder;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lorg/jpos/core/Card$Builder;->access$000(Lorg/jpos/core/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Card;->pan:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lorg/jpos/core/Card$Builder;->access$100(Lorg/jpos/core/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Card;->exp:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lorg/jpos/core/Card$Builder;->access$200(Lorg/jpos/core/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Card;->cvv2:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lorg/jpos/core/Card$Builder;->access$300(Lorg/jpos/core/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Card;->serviceCode:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lorg/jpos/core/Card$Builder;->access$400(Lorg/jpos/core/Card$Builder;)Lorg/jpos/core/Track1;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Card;->track1:Lorg/jpos/core/Track1;

    .line 53
    invoke-static {p1}, Lorg/jpos/core/Card$Builder;->access$500(Lorg/jpos/core/Card$Builder;)Lorg/jpos/core/Track2;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Card;->track2:Lorg/jpos/core/Track2;

    .line 54
    return-void
.end method

.method public static builder()Lorg/jpos/core/Card$Builder;
    .locals 2

    .line 142
    new-instance v0, Lorg/jpos/core/Card$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jpos/core/Card$Builder;-><init>(Lorg/jpos/core/Card$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 99
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 100
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/jpos/core/Card;

    .line 102
    .local v2, "card":Lorg/jpos/core/Card;
    iget-object v3, p0, Lorg/jpos/core/Card;->pan:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/core/Card;->pan:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/core/Card;->exp:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/core/Card;->exp:Ljava/lang/String;

    .line 103
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/core/Card;->cvv2:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/core/Card;->cvv2:Ljava/lang/String;

    .line 104
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/core/Card;->serviceCode:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/core/Card;->serviceCode:Ljava/lang/String;

    .line 105
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/core/Card;->track1:Lorg/jpos/core/Track1;

    iget-object v4, v2, Lorg/jpos/core/Card;->track1:Lorg/jpos/core/Track1;

    .line 106
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/core/Card;->track2:Lorg/jpos/core/Track2;

    iget-object v4, v2, Lorg/jpos/core/Card;->track2:Lorg/jpos/core/Track2;

    .line 107
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 102
    :goto_0
    return v0

    .line 100
    .end local v2    # "card":Lorg/jpos/core/Card;
    :cond_3
    :goto_1
    return v1
.end method

.method public getBin()Ljava/lang/String;
    .locals 3

    .line 89
    iget-object v0, p0, Lorg/jpos/core/Card;->pan:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCvv2()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/jpos/core/Card;->cvv2:Ljava/lang/String;

    return-object v0
.end method

.method public getExp()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/jpos/core/Card;->exp:Ljava/lang/String;

    return-object v0
.end method

.method public getPan()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/jpos/core/Card;->pan:Ljava/lang/String;

    return-object v0
.end method

.method public getPanAsNumber()Ljava/math/BigInteger;
    .locals 2

    .line 61
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/jpos/core/Card;->pan:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getServiceCode()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/jpos/core/Card;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack1()Lorg/jpos/core/Track1;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/jpos/core/Card;->track1:Lorg/jpos/core/Track1;

    return-object v0
.end method

.method public getTrack2()Lorg/jpos/core/Track2;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/jpos/core/Card;->track2:Lorg/jpos/core/Track2;

    return-object v0
.end method

.method public hasBothTracks()Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/jpos/core/Card;->hasTrack1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jpos/core/Card;->hasTrack2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrack1()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/jpos/core/Card;->track1:Lorg/jpos/core/Track1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrack2()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/jpos/core/Card;->track2:Lorg/jpos/core/Track2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jpos/core/Card;->pan:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/core/Card;->exp:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/core/Card;->cvv2:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/core/Card;->serviceCode:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/core/Card;->track1:Lorg/jpos/core/Track1;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/core/Card;->track2:Lorg/jpos/core/Track2;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 7
    .param p1, "currentDate"    # Ljava/util/Date;

    .line 124
    iget-object v0, p0, Lorg/jpos/core/Card;->exp:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_2

    .line 126
    :cond_0
    const-string v0, "yyyyMM"

    invoke-static {p1, v0}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "now":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lorg/jpos/core/Card;->exp:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 129
    .local v2, "mm":I
    iget-object v4, p0, Lorg/jpos/core/Card;->exp:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 130
    .local v3, "aa":I
    const/16 v4, 0x64

    if-ge v3, v4, :cond_2

    if-lez v2, :cond_2

    const/16 v4, 0xc

    if-gt v2, v4, :cond_2

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x46

    if-ge v3, v6, :cond_1

    const-string v6, "20"

    goto :goto_0

    :cond_1
    const-string v6, "19"

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lorg/jpos/core/Card;->exp:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "expDate":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v6, :cond_2

    .line 133
    return v5

    .line 137
    .end local v2    # "mm":I
    .end local v3    # "aa":I
    .end local v4    # "expDate":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 135
    :catch_0
    move-exception v2

    .line 138
    :goto_1
    return v1

    .line 125
    .end local v0    # "now":Ljava/lang/String;
    :cond_3
    :goto_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/jpos/core/Card;->pan:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "nil"

    :goto_0
    return-object v0
.end method
