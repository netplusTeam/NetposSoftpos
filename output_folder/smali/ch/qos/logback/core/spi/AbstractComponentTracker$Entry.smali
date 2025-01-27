.class Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;
.super Ljava/lang/Object;
.source "AbstractComponentTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/core/spi/AbstractComponentTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field component:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field key:Ljava/lang/String;

.field timestamp:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0
    .param p1, "k"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TC;J)V"
        }
    .end annotation

    .line 269
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    .local p2, "c":Ljava/lang/Object;, "TC;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->key:Ljava/lang/String;

    .line 271
    iput-object p2, p0, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->component:Ljava/lang/Object;

    .line 272
    iput-wide p3, p0, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->timestamp:J

    .line 273
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 286
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 287
    return v0

    .line 288
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 289
    return v1

    .line 290
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 291
    return v1

    .line 293
    :cond_2
    move-object v2, p1

    check-cast v2, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;

    .line 294
    .local v2, "other":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    iget-object v3, p0, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->key:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 295
    iget-object v3, v2, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->key:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 296
    return v1

    .line 297
    :cond_3
    iget-object v4, v2, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 298
    return v1

    .line 299
    :cond_4
    iget-object v3, p0, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->component:Ljava/lang/Object;

    if-nez v3, :cond_5

    .line 300
    iget-object v3, v2, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->component:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 301
    return v1

    .line 302
    :cond_5
    iget-object v4, v2, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->component:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 303
    return v1

    .line 304
    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 281
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    iget-object v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 276
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    iput-wide p1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->timestamp:J

    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 309
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->component:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
