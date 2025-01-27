.class public Lorg/jpos/core/Track1;
.super Ljava/lang/Object;
.source "Track1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/core/Track1$Builder;
    }
.end annotation


# instance fields
.field private cvv:Ljava/lang/String;

.field private discretionaryData:Ljava/lang/String;

.field private exp:Ljava/lang/String;

.field private nameOnCard:Ljava/lang/String;

.field private pan:Ljava/lang/String;

.field private serviceCode:Ljava/lang/String;

.field private track:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jpos/core/Track1$Builder;)V
    .locals 1
    .param p1, "builder"    # Lorg/jpos/core/Track1$Builder;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lorg/jpos/core/Track1$Builder;->access$000(Lorg/jpos/core/Track1$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Track1;->pan:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lorg/jpos/core/Track1$Builder;->access$100(Lorg/jpos/core/Track1$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Track1;->nameOnCard:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lorg/jpos/core/Track1$Builder;->access$200(Lorg/jpos/core/Track1$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Track1;->exp:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lorg/jpos/core/Track1$Builder;->access$300(Lorg/jpos/core/Track1$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Track1;->cvv:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lorg/jpos/core/Track1$Builder;->access$400(Lorg/jpos/core/Track1$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Track1;->discretionaryData:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lorg/jpos/core/Track1$Builder;->access$500(Lorg/jpos/core/Track1$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Track1;->serviceCode:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lorg/jpos/core/Track1$Builder;->access$600(Lorg/jpos/core/Track1$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Track1;->track:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static builder()Lorg/jpos/core/Track1$Builder;
    .locals 2

    .line 111
    new-instance v0, Lorg/jpos/core/Track1$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jpos/core/Track1$Builder;-><init>(Lorg/jpos/core/Track1$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 94
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/jpos/core/Track1;

    .line 96
    .local v2, "track11":Lorg/jpos/core/Track1;
    iget-object v3, p0, Lorg/jpos/core/Track1;->pan:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/core/Track1;->pan:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/core/Track1;->nameOnCard:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/core/Track1;->nameOnCard:Ljava/lang/String;

    .line 97
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/core/Track1;->exp:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/core/Track1;->exp:Ljava/lang/String;

    .line 98
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/core/Track1;->serviceCode:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/core/Track1;->serviceCode:Ljava/lang/String;

    .line 99
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/core/Track1;->cvv:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/core/Track1;->cvv:Ljava/lang/String;

    .line 100
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/core/Track1;->discretionaryData:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/core/Track1;->discretionaryData:Ljava/lang/String;

    .line 101
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/core/Track1;->track:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/core/Track1;->track:Ljava/lang/String;

    .line 102
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 96
    :goto_0
    return v0

    .line 94
    .end local v2    # "track11":Lorg/jpos/core/Track1;
    :cond_3
    :goto_1
    return v1
.end method

.method public getCvv()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/jpos/core/Track1;->cvv:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscretionaryData()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/jpos/core/Track1;->discretionaryData:Ljava/lang/String;

    return-object v0
.end method

.method public getExp()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/jpos/core/Track1;->exp:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOnCard()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/jpos/core/Track1;->nameOnCard:Ljava/lang/String;

    return-object v0
.end method

.method public getPan()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/jpos/core/Track1;->pan:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceCode()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/jpos/core/Track1;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/jpos/core/Track1;->track:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 107
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jpos/core/Track1;->pan:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/core/Track1;->nameOnCard:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/core/Track1;->exp:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/core/Track1;->serviceCode:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/core/Track1;->cvv:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/core/Track1;->discretionaryData:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/core/Track1;->track:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/jpos/core/Track1;->pan:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "nil"

    :goto_0
    return-object v0
.end method
