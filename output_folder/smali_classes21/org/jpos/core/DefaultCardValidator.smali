.class public Lorg/jpos/core/DefaultCardValidator;
.super Ljava/lang/Object;
.source "DefaultCardValidator.java"

# interfaces
.implements Lorg/jpos/core/CardValidator;


# static fields
.field private static DEFAULT_LUHN_CALCULATOR:Lorg/jpos/core/LUHNCalculator;


# instance fields
.field private luhnCalculator:Lorg/jpos/core/LUHNCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lorg/jpos/core/DefaultLUHNCalculator;

    invoke-direct {v0}, Lorg/jpos/core/DefaultLUHNCalculator;-><init>()V

    sput-object v0, Lorg/jpos/core/DefaultCardValidator;->DEFAULT_LUHN_CALCULATOR:Lorg/jpos/core/LUHNCalculator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lorg/jpos/core/DefaultCardValidator;->DEFAULT_LUHN_CALCULATOR:Lorg/jpos/core/LUHNCalculator;

    iput-object v0, p0, Lorg/jpos/core/DefaultCardValidator;->luhnCalculator:Lorg/jpos/core/LUHNCalculator;

    return-void
.end method


# virtual methods
.method public setLuhnCalculator(Lorg/jpos/core/LUHNCalculator;)V
    .locals 0
    .param p1, "luhnCalculator"    # Lorg/jpos/core/LUHNCalculator;

    .line 71
    iput-object p1, p0, Lorg/jpos/core/DefaultCardValidator;->luhnCalculator:Lorg/jpos/core/LUHNCalculator;

    .line 72
    return-void
.end method

.method public validate(Lorg/jpos/core/Card;)V
    .locals 7
    .param p1, "card"    # Lorg/jpos/core/Card;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/InvalidCardException;
        }
    .end annotation

    .line 26
    if-eqz p1, :cond_f

    .line 27
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getPan()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "pan":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack1()Lorg/jpos/core/Track1;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack1()Lorg/jpos/core/Track1;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/core/Track1;->getPan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Lorg/jpos/core/InvalidCardException;

    const-string v2, "track1 PAN mismatch"

    invoke-direct {v1, v2}, Lorg/jpos/core/InvalidCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack2()Lorg/jpos/core/Track2;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack2()Lorg/jpos/core/Track2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/core/Track2;->getPan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 32
    :cond_2
    new-instance v1, Lorg/jpos/core/InvalidCardException;

    const-string v2, "track2 PAN mismatch"

    invoke-direct {v1, v2}, Lorg/jpos/core/InvalidCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getExp()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "exp":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 36
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack1()Lorg/jpos/core/Track1;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack1()Lorg/jpos/core/Track1;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jpos/core/Track1;->getExp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 37
    :cond_4
    new-instance v2, Lorg/jpos/core/InvalidCardException;

    const-string v3, "track1 EXP mismatch"

    invoke-direct {v2, v3}, Lorg/jpos/core/InvalidCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack2()Lorg/jpos/core/Track2;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack2()Lorg/jpos/core/Track2;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jpos/core/Track2;->getExp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 39
    :cond_6
    new-instance v2, Lorg/jpos/core/InvalidCardException;

    const-string v3, "track2 EXP mismatch"

    invoke-direct {v2, v3}, Lorg/jpos/core/InvalidCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getServiceCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, "mismatch":I
    invoke-virtual {p1}, Lorg/jpos/core/Card;->hasBothTracks()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 44
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack2()Lorg/jpos/core/Track2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jpos/core/Track2;->getServiceCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 45
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack2()Lorg/jpos/core/Track2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jpos/core/Track2;->getServiceCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jpos/core/Card;->getServiceCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    :cond_8
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack2()Lorg/jpos/core/Track2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jpos/core/Track2;->getServiceCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack1()Lorg/jpos/core/Track1;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jpos/core/Track1;->getServiceCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 50
    :cond_9
    invoke-virtual {p1}, Lorg/jpos/core/Card;->hasTrack2()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 51
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack2()Lorg/jpos/core/Track2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jpos/core/Track2;->getServiceCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 52
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack2()Lorg/jpos/core/Track2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jpos/core/Track2;->getServiceCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jpos/core/Card;->getServiceCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 55
    :cond_a
    invoke-virtual {p1}, Lorg/jpos/core/Card;->hasTrack1()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 56
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack1()Lorg/jpos/core/Track1;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jpos/core/Track1;->getServiceCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 57
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getTrack1()Lorg/jpos/core/Track1;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jpos/core/Track1;->getServiceCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jpos/core/Card;->getServiceCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 61
    :cond_b
    :goto_4
    if-gtz v2, :cond_c

    goto :goto_5

    .line 62
    :cond_c
    new-instance v3, Lorg/jpos/core/InvalidCardException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "service code mismatch (%d)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jpos/core/InvalidCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    .end local v2    # "mismatch":I
    :cond_d
    :goto_5
    iget-object v2, p0, Lorg/jpos/core/DefaultCardValidator;->luhnCalculator:Lorg/jpos/core/LUHNCalculator;

    if-eqz v2, :cond_f

    invoke-interface {v2, v0}, Lorg/jpos/core/LUHNCalculator;->verify(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_6

    .line 66
    :cond_e
    new-instance v2, Lorg/jpos/core/InvalidCardException;

    const-string v3, "invalid LUHN"

    invoke-direct {v2, v3}, Lorg/jpos/core/InvalidCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    .end local v0    # "pan":Ljava/lang/String;
    .end local v1    # "exp":Ljava/lang/String;
    :cond_f
    :goto_6
    return-void
.end method
