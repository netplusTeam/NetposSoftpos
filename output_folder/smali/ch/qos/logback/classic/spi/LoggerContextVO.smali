.class public Lch/qos/logback/classic/spi/LoggerContextVO;
.super Ljava/lang/Object;
.source "LoggerContextVO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4c296032dbfdf2c3L


# instance fields
.field final birthTime:J

.field final name:Ljava/lang/String;

.field final propertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch/qos/logback/classic/LoggerContext;)V
    .locals 2
    .param p1, "lc"    # Lch/qos/logback/classic/LoggerContext;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->getCopyOfPropertyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    .line 47
    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->getBirthTime()J

    move-result-wide v0

    iput-wide v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "birthTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 50
    .local p2, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    .line 53
    iput-wide p3, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 75
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 76
    return v0

    .line 77
    :cond_0
    instance-of v1, p1, Lch/qos/logback/classic/spi/LoggerContextVO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 78
    return v2

    .line 80
    :cond_1
    move-object v1, p1

    check-cast v1, Lch/qos/logback/classic/spi/LoggerContextVO;

    .line 82
    .local v1, "that":Lch/qos/logback/classic/spi/LoggerContextVO;
    iget-wide v3, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    iget-wide v5, v1, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 83
    return v2

    .line 84
    :cond_2
    iget-object v3, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, v1, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_3
    iget-object v3, v1, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 85
    :goto_0
    return v2

    .line 86
    :cond_4
    iget-object v3, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    if-eqz v3, :cond_5

    iget-object v4, v1, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    if-eqz v3, :cond_6

    .line 87
    :goto_1
    return v2

    .line 89
    :cond_6
    return v0
.end method

.method public getBirthTime()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 94
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 95
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 96
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-wide v3, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    .line 98
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoggerContextVO{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", propertyMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", birthTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
