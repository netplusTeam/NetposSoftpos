.class public Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;
.super Ljava/lang/Object;
.source "HostClassAndPropertyDouble.java"


# instance fields
.field final hostClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    .local p1, "hostClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;->hostClass:Ljava/lang/Class;

    .line 33
    iput-object p2, p0, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;->propertyName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 56
    return v0

    .line 57
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 58
    return v1

    .line 59
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 60
    return v1

    .line 61
    :cond_2
    move-object v2, p1

    check-cast v2, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;

    .line 62
    .local v2, "other":Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;
    iget-object v3, p0, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;->hostClass:Ljava/lang/Class;

    if-nez v3, :cond_3

    .line 63
    iget-object v3, v2, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;->hostClass:Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 64
    return v1

    .line 65
    :cond_3
    iget-object v4, v2, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;->hostClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 66
    return v1

    .line 67
    :cond_4
    iget-object v3, p0, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;->propertyName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 68
    iget-object v3, v2, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;->propertyName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 69
    return v1

    .line 70
    :cond_5
    iget-object v4, v2, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;->propertyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 71
    return v1

    .line 72
    :cond_6
    return v0
.end method

.method public getHostClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;->hostClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 46
    const/16 v0, 0x1f

    .line 47
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 48
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;->hostClass:Ljava/lang/Class;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 49
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;->propertyName:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 50
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
