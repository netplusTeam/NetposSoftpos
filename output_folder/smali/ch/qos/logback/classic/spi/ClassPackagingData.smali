.class public Lch/qos/logback/classic/spi/ClassPackagingData;
.super Ljava/lang/Object;
.source "ClassPackagingData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xb2aaacd13ec78e9L


# instance fields
.field final codeLocation:Ljava/lang/String;

.field private final exact:Z

.field final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "codeLocation"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lch/qos/logback/classic/spi/ClassPackagingData;->codeLocation:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lch/qos/logback/classic/spi/ClassPackagingData;->version:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/classic/spi/ClassPackagingData;->exact:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "classLocation"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "exact"    # Z

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lch/qos/logback/classic/spi/ClassPackagingData;->codeLocation:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lch/qos/logback/classic/spi/ClassPackagingData;->version:Ljava/lang/String;

    .line 34
    iput-boolean p3, p0, Lch/qos/logback/classic/spi/ClassPackagingData;->exact:Z

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 59
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 60
    return v0

    .line 61
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 62
    return v1

    .line 63
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 64
    return v1

    .line 65
    :cond_2
    move-object v2, p1

    check-cast v2, Lch/qos/logback/classic/spi/ClassPackagingData;

    .line 66
    .local v2, "other":Lch/qos/logback/classic/spi/ClassPackagingData;
    iget-object v3, p0, Lch/qos/logback/classic/spi/ClassPackagingData;->codeLocation:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 67
    iget-object v3, v2, Lch/qos/logback/classic/spi/ClassPackagingData;->codeLocation:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 68
    return v1

    .line 69
    :cond_3
    iget-object v4, v2, Lch/qos/logback/classic/spi/ClassPackagingData;->codeLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 70
    return v1

    .line 71
    :cond_4
    iget-boolean v3, p0, Lch/qos/logback/classic/spi/ClassPackagingData;->exact:Z

    iget-boolean v4, v2, Lch/qos/logback/classic/spi/ClassPackagingData;->exact:Z

    if-eq v3, v4, :cond_5

    .line 72
    return v1

    .line 73
    :cond_5
    iget-object v3, p0, Lch/qos/logback/classic/spi/ClassPackagingData;->version:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 74
    iget-object v3, v2, Lch/qos/logback/classic/spi/ClassPackagingData;->version:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 75
    return v1

    .line 76
    :cond_6
    iget-object v4, v2, Lch/qos/logback/classic/spi/ClassPackagingData;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 77
    return v1

    .line 78
    :cond_7
    return v0
.end method

.method public getCodeLocation()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lch/qos/logback/classic/spi/ClassPackagingData;->codeLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lch/qos/logback/classic/spi/ClassPackagingData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 51
    const/16 v0, 0x1f

    .line 52
    .local v0, "PRIME":I
    const/4 v1, 0x1

    .line 53
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lch/qos/logback/classic/spi/ClassPackagingData;->codeLocation:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 54
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isExact()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lch/qos/logback/classic/spi/ClassPackagingData;->exact:Z

    return v0
.end method
